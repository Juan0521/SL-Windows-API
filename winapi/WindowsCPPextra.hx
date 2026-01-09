package winapi;

@:buildXml('
<compilerflag value="/DelayLoad:ComCtl32.dll"/>

<target id="haxe">
    <lib name="dwmapi.lib" if="windows" />
    <lib name="shell32.lib" if="windows" />
    <lib name="gdi32.lib" if="windows" />
</target>
')
@:cppFileCode('
#include <Windows.h>
#include <windowsx.h>
#include <cstdio>
#include <iostream>
#include <tchar.h>
#include <dwmapi.h>
#include <winuser.h>
#include <winternl.h>
#include <Shlobj.h>
#include <commctrl.h>
#include <string>

#include <chrono>
#include <thread>

#define UNICODE

#pragma comment(lib, "Dwmapi")
#pragma comment(lib, "ntdll.lib")
#pragma comment(lib, "user32.lib")
#pragma comment(lib, "Shell32.lib")
#pragma comment(lib, "gdi32.lib")

HWND hwnd = GET_MAIN_WINDOW();
int rainbow(enable)
{
    r = 0;
    g = 0;
    b = 0;
    while (true){
    color = RGB(r, g, b)
    if (S_OK != DwmSetWindowAttribute(window, 35, &color, sizeof(COLORREF))) {
        DwmSetWindowAttribute(window, 35, &color, sizeof(COLORREF));
    }

	if (S_OK != DwmSetWindowAttribute(window, 34, &color, sizeof(COLORREF))) {
        DwmSetWindowAttribute(window, 34, &color, sizeof(COLORREF));
    }}
}
')

class WindowsCPPextra
{
    @:functionCode('
        rainbow(active);
    ')
    static public function rainbowWindow(active)
    {
    } 
}