@echo off
:menu
cls
echo Stream 1.0
echo 1 Create file/folder stream
echo 2 Delete all file/folder streams
echo 3 Read file/folder stream
echo 4 Find alternative file streams
echo 5 Edit file stream
echo 6 Exit
set /p inp=
If %inp%==1 goto create 
If %inp%==2 goto delete
If %inp%==3 goto read
If %inp%==4 goto find
If %inp%==5 goto edit
If %inp%==6 exit
:create
echo Enter file/folder of your file:
set /p name_file=
echo Enter name of your stream:
set /p name_stream=
echo Text write to stream:
set /p stream_text=
pause
echo %stream_text% > %name_file%:%name_stream%
echo Comleted!
pause
goto menu
:delete
echo Enter name of your file/folder:
set /p del_file=
streams64.exe -nobanner -d %del_file%
echo Completed!
pause
goto menu
:read
echo Enter file/folder of your file:
set /p read_file=
echo Enter name of your stream:
set /p read_stream=
echo Result
more < %read_file%:%read_stream%
echo Completed
pause
goto menu
:find
echo Enter path to file or folder, where need to find alternative file stream
set /p stream_found=
dir %stream_found% /R
pause
goto menu
:edit
echo Enter file/folder of your file:
set /p name_file=
echo Enter name of your stream:
set /p name_stream=
notepad %name_file%:%name_stream%
pause
goto menu