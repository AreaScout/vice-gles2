@echo off
if not exist ..\win32\vs_tmpl\mkmsvc.exe goto missingmkmsvc
echo generating SDL2x MSVC10 project as win32-sdl2x-msvc10
if exist win32-sdl2x-msvc10 goto removedir
:makemsvcdir
mkdir win32-sdl2x-msvc10
cd ..\win32\vs_tmpl
mkmsvc.exe -sdl2 -10 vice
cd ..\..\sdl
copy msvc-files\make-bindist-sdl2x.bat.proto win32-sdl2x-msvc10\make-msvc-bindist.bat
copy msvc-files\debug.h win32-sdl2x-msvc10
copy msvc-files\dirent.h win32-sdl2x-msvc10
copy msvc-files\ide-config-sdl2.h win32-sdl2x-msvc10\ide-config.h
copy msvc-files\ide-siddefs.h win32-sdl2x-msvc10
copy msvc-files\ide-siddtvdefs.h win32-sdl2x-msvc10
copy msvc-files\inttypes.h win32-sdl2x-msvc10
copy msvc-files\stdint.h win32-sdl2x-msvc10
copy msvc-files\ffmpeg-config.h win32-sdl2x-msvc10
copy msvc-files\vice.manifest win32-sdl2x-msvc10
copy msvc-files\winid_ia64.bat win32-sdl2x-msvc10
copy msvc-files\winid_x64.bat win32-sdl2x-msvc10
copy msvc-files\winid_x86.bat win32-sdl2x-msvc10
echo SDL2x MSVC10 project files generated in win32-sdl2x-msvc10
goto end
:missingmkmsvc
echo ..\win32\vs_tmpl\mkmsvc.exe is missing
goto end
:removedir
echo y | del win32-sdl2x-msvc10\*.* /S
rd win32-sdl2x-msvc10 /s /q
if exist win32-sdl2x-msvc10 goto cannotremovedir
goto makemsvcdir
:cannotremovedir
echo can't delete the win32-sdl2x-msvc10 directory, please remove win32-sdl2x-msvc10 manually and run this batch file again.
:end
pause
