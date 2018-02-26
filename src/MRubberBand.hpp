// MRubberBand.hpp -- Rubber Band for Win32
//////////////////////////////////////////////////////////////////////////////
// RisohEditor --- Another free Win32 resource editor
// Copyright (C) 2017-2018 Katayama Hirofumi MZ <katayama.hirofumi.mz@gmail.com>
// 
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
// 
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//////////////////////////////////////////////////////////////////////////////

#ifndef MZC4_RUBBER_BAND_HPP_
#define MZC4_RUBBER_BAND_HPP_

class MRubberBand;

//////////////////////////////////////////////////////////////////////////////

#include "MWindowBase.hpp"

#ifndef MYWM_SELCHANGE
    #define MYWM_SELCHANGE      (WM_USER + 102)
#endif

class MRubberBand : public MWindowBase
{
public:
    DWORD m_dwMagic;
    HRGN m_hRgn;
    HWND m_hwndTarget;
    enum { m_nGripSize = 3 };

    MRubberBand() : m_dwMagic(0x20110311), m_hRgn(NULL), m_hwndTarget(NULL)
    {
    }

    static MRubberBand* GetRubberBand(HWND hwnd)
    {
        MWindowBase *base = GetUserData(hwnd);
        if (base)
        {
            MRubberBand *pBand;
            pBand = static_cast<MRubberBand *>(base);
            if (pBand->m_dwMagic == 0x20110311)
                return pBand;
        }
        return NULL;
    }

    BOOL CreateDx(HWND hwndParent, HWND hwndTarget, BOOL bVisible = FALSE,
                  INT x = 0, INT y = 0, INT cx = 0, INT cy = 0)
    {
        m_hwndTarget = hwndTarget;
        DWORD style = (bVisible ? WS_VISIBLE : 0) | WS_CHILD | WS_THICKFRAME;
        DWORD exstyle = WS_EX_TOOLWINDOW | WS_EX_TRANSPARENT | WS_EX_TOPMOST;
        BOOL bOK = CreateAsChildDx(hwndParent, NULL, style, exstyle, -1,
                                   x, y, cx, cy);
        if (bOK)
        {
            FitToTarget();
            PostMessage(hwndParent, MYWM_SELCHANGE, 0, 0);
        }
        return bOK;
    }

    HWND GetTarget() const
    {
        return m_hwndTarget;
    }

    virtual void PostNcDestroy()
    {
        MWindowBase::PostNcDestroy();
        delete this;
    }

    virtual LRESULT CALLBACK
    WindowProcDx(HWND hwnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
    {
        switch (uMsg)
        {
            HANDLE_MSG(hwnd, WM_MOVE, OnMove);
            HANDLE_MSG(hwnd, WM_SIZE, OnSize);
            HANDLE_MSG(hwnd, WM_NCCALCSIZE, OnNCCalcSize);
            HANDLE_MSG(hwnd, WM_NCPAINT, OnNCPaint);
            HANDLE_MSG(hwnd, WM_PAINT, OnPaint);
            HANDLE_MSG(hwnd, WM_DESTROY, OnDestroy);
            HANDLE_MSG(hwnd, WM_NCHITTEST, OnNCHitTest);
            HANDLE_MSG(hwnd, WM_SETCURSOR, OnSetCursor);
        default:
            return DefaultProcDx(hwnd, uMsg, wParam, lParam);
        }
    }

    void GetIdealClientRect(LPRECT prc)
    {
        GetClientRect(m_hwnd, prc);
        InflateRect(prc, -2 * m_nGripSize, -2 * m_nGripSize);
    }

    void FitToBand()
    {
        if (m_hwndTarget == NULL)
            return;

        RECT rc;
        GetIdealClientRect(&rc);
        MapWindowRect(m_hwnd, GetParent(m_hwndTarget), &rc);

        ::SetWindowPos(m_hwndTarget, NULL,
            rc.left, rc.top, rc.right - rc.left, rc.bottom - rc.top,
            SWP_NOACTIVATE | SWP_NOZORDER);

        ::InvalidateRect(m_hwnd, NULL, TRUE);
    }

    void FitToTarget()
    {
        if (m_hwndTarget == NULL)
            return;

        RECT rc;
        GetWindowRect(m_hwndTarget, &rc);
        MapWindowRect(NULL, GetParent(m_hwnd), &rc);

        InflateRect(&rc, 2 * m_nGripSize, 2 * m_nGripSize);

        ::SetWindowPos(m_hwnd, NULL,
            rc.left, rc.top, rc.right - rc.left, rc.bottom - rc.top,
            SWP_NOACTIVATE | SWP_NOZORDER);

        ::InvalidateRect(m_hwnd, NULL, TRUE);
    }

    void OnDestroy(HWND hwnd)
    {
        PostMessage(GetParent(hwnd), MYWM_SELCHANGE, 0, 0);
        DeleteObject(m_hRgn);
        m_hRgn = NULL;
        m_hwndTarget = NULL;
    }

    void GetRect(HWND hwnd, LPRECT prc)
    {
        GetWindowRect(hwnd, prc);
        OffsetRect(prc, -prc->left, -prc->top);
    }

    void SetRgn(HRGN hRgn, BOOL bClient = TRUE)
    {
#if 0
        if (bClient && m_hwndTarget)
        {
            RECT rc;
            GetIdealClientRect(&rc);

            HRGN hClientRgn = CreateRectRgnIndirect(&rc);
            UnionRgn(hRgn, hRgn, hClientRgn);
            DeleteObject(hClientRgn);
        }
#endif
        DeleteObject(m_hRgn);
        SetWindowRgn(m_hwnd, hRgn, TRUE);
        m_hRgn = hRgn;
    }

    void OnNCPaint(HWND hwnd, HRGN hrgn)
    {
        RECT rc;
        GetRect(hwnd, &rc);

        HDC hDC = GetWindowDC(hwnd);
        HPEN hPenOld = SelectPen(hDC, GetStockPen(BLACK_PEN));
        HBRUSH hbrOld = SelectBrush(hDC, GetStockBrush(WHITE_BRUSH));
        {
            GetRgnOrDrawOrHitTest(hwnd, hDC, NULL);
        }
        SelectBrush(hDC, hbrOld);
        SelectPen(hDC, hPenOld);
        ReleaseDC(hwnd, hDC);
    }

    void OnPaint(HWND hwnd)
    {
        PAINTSTRUCT ps;
        BeginPaint(hwnd, &ps);
        EndPaint(hwnd, &ps);
    }

    UINT OnNCHitTest(HWND hwnd, int x, int y)
    {
        RECT rc;
        GetWindowRect(hwnd, &rc);
        x -= rc.left;
        y -= rc.top;

        POINT pt = { x, y };
        HRGN hRgn = GetRgnOrDrawOrHitTest(hwnd, NULL, &pt);
        return (UINT)(UINT_PTR)hRgn;
    }

    BOOL OnSetCursor(HWND hwnd, HWND hwndCursor, UINT codeHitTest, UINT msg)
    {
        switch (codeHitTest)
        {
        case HTTOPLEFT:         SetCursor(LoadCursor(NULL, IDC_SIZENWSE)); break;
        case HTLEFT:            SetCursor(LoadCursor(NULL, IDC_SIZEWE)); break;
        case HTBOTTOMLEFT:      SetCursor(LoadCursor(NULL, IDC_SIZENESW)); break;
        case HTTOP:             SetCursor(LoadCursor(NULL, IDC_SIZENS)); break;
        case HTBOTTOM:          SetCursor(LoadCursor(NULL, IDC_SIZENS)); break;
        case HTTOPRIGHT:        SetCursor(LoadCursor(NULL, IDC_SIZENESW)); break;
        case HTRIGHT:           SetCursor(LoadCursor(NULL, IDC_SIZEWE)); break;
        case HTBOTTOMRIGHT:     SetCursor(LoadCursor(NULL, IDC_SIZENWSE)); break;
        default:                SetCursor(LoadCursor(NULL, IDC_ARROW)); break;
        }
        return TRUE;
    }

    void OnMove(HWND hwnd, int x, int y)
    {
        HRGN hRgn;
#if 0
        hRgn = GetRgnOrDrawOrHitTest(hwnd);
        SetRgn(hRgn, FALSE);
#endif

        if (m_hwnd && m_hwndTarget)
        {
            FitToBand();
        }

        hRgn = GetRgnOrDrawOrHitTest(hwnd);
        SetRgn(hRgn, TRUE);
    }

    void OnSize(HWND hwnd, UINT state, int cx, int cy)
    {
        if (m_hwndTarget)
        {
            FitToBand();
        }

        HRGN hRgn = GetRgnOrDrawOrHitTest(hwnd);
        SetRgn(hRgn);
        InvalidateRect(hwnd, NULL, TRUE);
    }

    HRGN GetRgnOrDrawOrHitTest(HWND hwnd, HDC hDC = NULL, LPPOINT ppt = NULL)
    {
        RECT rc;
        GetRect(hwnd, &rc);
        INT cx = rc.right - rc.left;
        INT cy = rc.bottom - rc.top;

        INT ax[] = { m_nGripSize, cx / 2, cx - m_nGripSize };
        INT ay[] = { m_nGripSize, cy / 2, cy - m_nGripSize };
        INT ahits[] =
        {
            HTTOPLEFT,    HTTOP,    HTTOPRIGHT,
            HTLEFT,                 HTRIGHT,
            HTBOTTOMLEFT, HTBOTTOM, HTBOTTOMRIGHT
        };

        HRGN hRgn = NULL;
        if (hDC == NULL && ppt == NULL)
            hRgn = CreateRectRgn(0, 0, 0, 0);

        for (INT k = 0, n = 0; k < 3; ++k)
        {
            for (INT i = 0; i < 3; ++i)
            {
                if (i == 1 && k == 1)
                    continue;

                if (hDC)
                {
                    ::Rectangle(hDC,
                        ax[i] - m_nGripSize, ay[k] - m_nGripSize,
                        ax[i] + m_nGripSize, ay[k] + m_nGripSize);
                }
                else if (ppt)
                {
                    RECT rect;
                    SetRect(&rect,
                        ax[i] - m_nGripSize, ay[k] - m_nGripSize,
                        ax[i] + m_nGripSize, ay[k] + m_nGripSize);
                    if (PtInRect(&rect, *ppt))
                    {
                        return (HRGN)(INT_PTR)ahits[n];
                    }
                }
                else
                {
                    HRGN hRgn2 = CreateRectRgn(
                        ax[i] - m_nGripSize, ay[k] - m_nGripSize,
                        ax[i] + m_nGripSize, ay[k] + m_nGripSize);
                    UnionRgn(hRgn, hRgn, hRgn2);
                    DeleteObject(hRgn2);
                }
                ++n;
            }
        }

        if (ppt)
        {
            hRgn = (HRGN)(INT_PTR)HTCAPTION;
        }

        return hRgn;
    }

    virtual LPCTSTR GetWndClassNameDx() const
    {
        return TEXT("katahiromz's Rubber Band Class");
    }

    virtual void ModifyWndClassDx(WNDCLASSEX& wcx)
    {
        wcx.hIcon = NULL;
        wcx.hbrBackground = GetStockBrush(NULL_BRUSH);
        wcx.hIconSm = NULL;
    }

    UINT OnNCCalcSize(HWND hwnd, BOOL fCalcValidRects, NCCALCSIZE_PARAMS *lpcsp)
    {
        return 0;
    }
};

//////////////////////////////////////////////////////////////////////////////

#endif  // ndef MZC4_RUBBER_BAND_HPP_
