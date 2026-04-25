@echo off
cd /d "c:\Users\Apela\OneDrive\Desktop\Love website"

echo === Checking GitHub Login ===
"C:\Program Files\GitHub CLI\gh.exe" auth status
if errorlevel 1 (
    echo.
    echo GitHub login nahi hai! Pehle login karo:
    echo "C:\Program Files\GitHub CLI\gh.exe" auth login --web
    pause
    exit /b 1
)

echo.
echo === Getting GitHub Username ===
for /f "tokens=*" %%a in ('"C:\Program Files\GitHub CLI\gh.exe" api user -q .login') do set "USERNAME=%%a"
echo Username: %USERNAME%

echo.
echo === Setting up remote ===
"C:\Program Files\Git\bin\git.exe" remote remove origin 2>nul
"C:\Program Files\Git\bin\git.exe" remote add origin "https://github.com/%USERNAME%/birthday-website.git"

echo.
echo === Adding all files ===
"C:\Program Files\Git\bin\git.exe" add -A

echo.
echo === Committing ===
"C:\Program Files\Git\bin\git.exe" commit -m "Fix index.html - remove corrupted tags"

echo.
echo === Pushing to master ===
"C:\Program Files\Git\bin\git.exe" push -u origin master --force

echo.
echo === Done! ===
echo Website URL: https://%USERNAME%.github.io/birthday-website/
pause

