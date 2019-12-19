@echo off

for /f "tokens=2 delims==" %%f in ('wmic path Win32_VideoController get CurrentHorizontalResolution /value ^| find "="') do set /A "var=%%f"

echo %var%
if %var% GTR 2000 start steam://rungameid/731490