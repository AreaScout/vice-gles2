@echo off
if not exist ..\win32\vs_tmpl\mkmsvc.exe goto missingmkmsvc
echo generating SDL1x MSVC7.1 project as win32-sdl1x-msvc71-ffmpeg
if exist win32-sdl1x-msvc71-ffmpeg goto removedir
:makemsvcdir
mkdir win32-sdl1x-msvc71-ffmpeg
cd ..\win32\vs_tmpl
mkmsvc.exe -ffmpeg -sdl -71 vice
cd ..\..\sdl
copy msvc-files\make-bindist-sdl1x.bat.proto win32-sdl1x-msvc71-ffmpeg\make-msvc-bindist.bat
copy msvc-files\debug.h win32-sdl1x-msvc71-ffmpeg
copy msvc-files\dirent.h win32-sdl1x-msvc71-ffmpeg
copy msvc-files\ide-config.h win32-sdl1x-msvc71-ffmpeg
copy msvc-files\ide-siddefs.h win32-sdl1x-msvc71-ffmpeg
copy msvc-files\ide-siddtvdefs.h win32-sdl1x-msvc71-ffmpeg
copy msvc-files\inttypes.h win32-sdl1x-msvc71-ffmpeg
copy msvc-files\stdint.h win32-sdl1x-msvc71-ffmpeg
copy msvc-files\vice.manifest win32-sdl1x-msvc71-ffmpeg
copy msvc-files\ffmpeg-config.h win32-sdl1x-msvc71-ffmpeg
copy msvc-files\lame-config.h win32-sdl1x-msvc71-ffmpeg
copy msvc-files\x264_config.h win32-sdl1x-msvc71-ffmpeg
copy msvc-files\x264-config.h win32-sdl1x-msvc71-ffmpeg
echo SDL1x MSVC7.1 project files generated in win32-sdl1x-msvc71-ffmpeg
goto end
:missingmkmsvc
echo ..\win32\vs_tmpl\mkmsvc.exe is missing
goto end
:removedir
echo y | del win32-sdl1x-msvc71-ffmpeg\*.* /S
rd win32-sdl1x-msvc71-ffmpeg /s /q
if exist win32-sdl1x-msvc71-ffmpeg goto cannotremovedir
goto makemsvcdir
:cannotremovedir
echo can't delete the win32-sdl1x-msvc71-ffmpeg directory, please remove win32-sdl1x-msvc71-ffmpeg manually and run this batch file again.
:end
pause
