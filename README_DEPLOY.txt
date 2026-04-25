===========================================
  GITHUB PE WEBSITE LIVE KARNA - STEPS
===========================================

AGAR "file not found" AA RAHA HAI:
-----------------------------------
Terminal/PowerShell BAND karke NAYA khol!
Ya seedha DEPLOY_TO_GITHUB.bat pe DOUBLE-CLICK karo.


STEP 1: GitHub Pe Login Karo
-----------------------------
Naya terminal khol (CMD ya PowerShell) aur yeh likh:

    "C:\Program Files\GitHub CLI\gh.exe" auth login --web

Phir:
- Enter dabao (HTTPS select hoga)
- Browser mein GitHub login karo
- Terminal mein code paste karo


STEP 2: Website Upload Karo
----------------------------
"Love website" folder mein jaa aur
DEPLOY_TO_GITHUB.bat pe DOUBLE-CLICK karo!

Ya manually terminal mein:

    cd "C:\Users\Apela\OneDrive\Desktop\Love Website"
    "C:\Program Files\GitHub CLI\gh.exe" repo create birthday-website --public --source=. --remote=origin --push


STEP 3: GitHub Pages Enable Karo
---------------------------------
1. github.com pe jaa
2. Apni "birthday-website" repo khol
3. Upar "Settings" tab pe click
4. Left side "Pages" pe click
5. Source: "main" branch select kar
6. Save


STEP 4: Website Live! 🎉
------------------------
2-5 minute wait kar, phir yeh link kholo:

    https://tera-username.github.io/birthday-website/

Yeh link PERMANENT hai - kabhi band nahi hoga!


===========================================
  AGAR KOI DIKKAT AAYE TOH:
===========================================

1. "git not found" aaye?
   → Terminal BAND karke NAYA khol

2. "gh not found" aaye?
   → Full path use karo: "C:\Program Files\GitHub CLI\gh.exe"

3. Push fail ho?
   → "gh auth login --web" dubara chala ke login kar

4. Photos nahi dikhe?
   → images/ folder mein photo1.jpg se photo6.jpg honi chahiye

