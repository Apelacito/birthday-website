@echo off
chcp 65001 >nul
title 💕 Birthday Website Deploy to GitHub
cls

echo ===========================================
echo   Happy 17th Birthday - GitHub Deploy
echo ===========================================
echo.

REM === FULL PATHS (no PATH env needed) ===
set "GIT=C:\Program Files\Git\bin\git.exe"
set "GH=C:\Program Files\GitHub CLI\gh.exe"

REM === Check files exist ===
if not exist "%GIT%" (
    echo ❌ Git not found at: %GIT%
    echo    Please install Git from: https://git-scm.com/download/win
    pause
    exit /b 1
)

if not exist "%GH%" (
    echo ❌ GitHub CLI not found at: %GH%
    echo    Installing now via winget...
    winget install --id GitHub.cli -e --source winget --accept-package-agreements --accept-source-agreements
    pause
    exit /b 1
)

echo ✅ Git found: %GIT%
echo ✅ GitHub CLI found: %GH%
echo.

REM === Check GitHub Login ===
echo [1/6] Checking GitHub login...
"%GH%" auth status >nul 2>&1
if errorlevel 1 (
    echo.
    echo ⚠️  You are NOT logged into GitHub!
    echo.
    echo    Run this command manually in a NEW terminal:
    echo.
    echo        "C:\Program Files\GitHub CLI\gh.exe" auth login --web
    echo.
    echo    Steps:
    echo    1. Press Enter to select HTTPS
    echo    2. Browser mein GitHub login karo
    echo    3. Code copy-paste karo terminal mein
    echo    4. Uske baad yeh script dubara run karo
    echo.
    pause
    exit /b 1
)

echo ✅ Logged into GitHub!
echo.

REM === Get username ===
echo [2/6] Getting GitHub username...
for /f "tokens=*" %%a in ('"%GH%" api user -q .login') do set "USERNAME=%%a"
if "%USERNAME%"=="" (
    echo ❌ Could not get username. Please check login.
    pause
    exit /b 1
)
echo    Username: %USERNAME%
echo.

REM === Repo name ===
set /p REPO="[3/6] Enter repository name (e.g., birthday-website): "
if "%REPO%"=="" set REPO=birthday-website
echo.

REM === Check if repo exists ===
echo [4/6] Creating repository '%REPO%'...
"%GH%" repo view "%USERNAME%/%REPO%" >nul 2>&1
if errorlevel 1 (
    echo    Creating new repo...
    "%GH%" repo create "%REPO%" --public --confirm
) else (
    echo    Repo already exists, skipping creation...
)
echo.

REM === Add remote and push ===
echo [5/6] Pushing website files...
"%GIT%" remote remove origin 2>nul
"%GIT%" remote add origin "https://github.com/%USERNAME%/%REPO%.git"
"%GIT%" branch -M main
"%GIT%" push -u origin main --force
echo.

REM === Enable GitHub Pages ===
echo [6/6] Enabling GitHub Pages...
"%GH%" api repos/%USERNAME%/%REPO%/pages -X POST -f source[branch]=main -f source[path]=/ 2>nul
if errorlevel 1 (
    echo    (Pages might already be enabled, skipping...)
)
echo.

REM === Done ===
echo ===========================================
echo 🎉 SUCCESS! Your permanent website is at:
echo.
echo    https://%USERNAME%.github.io/%REPO%/
echo.
echo ⏳ It may take 2-5 minutes to go live.
echo 🔗 This link will work FOREVER - share it!
echo ===========================================
echo.
pause

