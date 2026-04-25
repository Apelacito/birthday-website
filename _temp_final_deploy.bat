@echo off
cd /d "c:\Users\Apela\OneDrive\Desktop\Love website"

echo === Adding remote ===
"C:\Program Files\Git\bin\git.exe" remote remove origin 2>nul
"C:\Program Files\Git\bin\git.exe" remote add origin "https://github.com/Apelacito/birthday-website.git"

echo.
echo === Adding all files ===
"C:\Program Files\Git\bin\git.exe" add -A

echo.
echo === Committing changes ===
"C:\Program Files\Git\bin\git.exe" commit -m "Fix corrupted index.html and update website"

echo.
echo === Pushing to GitHub ===
"C:\Program Files\Git\bin\git.exe" push -u origin master --force

echo.
echo === Enabling GitHub Pages ===
"C:\Program Files\GitHub CLI\gh.exe" api repos/Apelacito/birthday-website/pages -X POST -f source[branch]=master -f source[path]=/ 2>nul
if errorlevel 1 (
    echo Pages might already be enabled.
)

echo.
echo ===========================================
echo DONE! Website URL:
echo https://Apelacito.github.io/birthday-website/
echo ===========================================
pause

