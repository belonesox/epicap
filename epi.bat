echo %DATE%
echo %TIME%
:start
set filename=%date:~-4%-%date:~3,2%-%date:~0,2%-%time:~0,2%-%time:~3,2%-%time:~6,2%.mp4
echo %filename%
ffmpeg -y -threads 4 -f dshow -rtbufsize 200000000  -i video="DVI2USB D2U20120" -vcodec libx264 -preset fast -qp 0  -r 12 -vsync 1 "%filename%"
goto start
