@REM @echo off
@REM pushd C:\Users\anejn\Downloads\Compressed\PSRename || exit /b
@REM for /f "eol=: delims=" %%F in ('dir /b /a-d *_*.jpg') do (
@REM   for /f "tokens=1* eol=_ delims=-" %%A in ("%%~nF") do ren "%%F" "%%~nB_%%A%%~xF"
@REM )
@REM popd

@echo off
setlocal enabledelayedexpansion
for /r "C:\Users\anejn\Downloads\Compressed\PSRename" %%F in (*.png) do (
    for /f "tokens=1* delims=-" %%A in ("%%~nF") do (
        ren "%%F" "%%B-%%A%%~xF"
    )
)
