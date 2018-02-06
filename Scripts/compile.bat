REM Used for compilation of QtProject using command prompt
REM AUTHER : SOURABH KUSHWAHA, CREATED DATE : 30-01-2018, MODIFIED ON : 30-01-2018, VERSION : 0.0.1

REM primary applications and project directories
SET PRO_DIR="E:\work\code\MCS3.0"
SET VC_DIR="C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build"
SET QMAKE_DIR="C:\Qt\Qt5.9.1\5.9.1\msvc2017_64\bin"
SET NSIS_DIR="C:\Program Files (x86)\NSIS"

REM 3rd party libraries, requires for compilation of project 
SET FFMPEG="E:\work\Libraries\ffmpeg"
SET MAVLINK2="E:\work\Libraries\mavlinkLibrary2"
SET SDL="E:\work\Libraries\sdl"

REM Set up \Microsoft Visual Studio 2013, where <arch> is \c amd64.
CALL %VC_DIR%"\vcvarsall.bat" amd64

REM Set QT and other 3rd party libs path
SET PATH=%QMAKE_DIR%;%QMAKE_DIR%\qtbase\bin;%QMAKE_DIR%\gnuwin32\bin;%NSIS_DIR%;%PATH%
SET PATH=%FFMPEG%;%MAVLINK2%;%SDL%;%PATH%

echo %PATH%
E:
cd %PRO_DIR%
REM Compile project and generate executable
qmake -recursive "CONFIG-=debug" "CONFIG+=release"
nmake

