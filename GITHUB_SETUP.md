# 🚀 GitHub Pe Website Live Karna - Step by Step

## Option 1: EASY WAY (Bina Git ke - Direct Upload)

### Step 1: GitHub Account Banao
1. `github.com` pe jaa
2. Sign up karo (email/password ya Google se)
3. Account verify karo

### Step 2: Repository Banao
1. GitHub pe upar right side **"+"** icon → **"New repository"**
2. **Repository name:** `birthday-website` (ya kuch bhi)
3. **Public** select karo
4. **"Add a README file"** ✅ tick karo
5. **"Create repository"** click karo

### Step 3: Files Upload Karo
1. Repo page pe jaa
2. **"Add file"** → **"Upload files"**
3. Tere `Love website` folder ki saari files select kar:
   - `Index.html`
   - `Script.js`
   - `Styles.css`
   - `TODO.md`
4. **"Commit changes"** click karo

### Step 4: GitHub Pages On Karo
1. Repo mein **"Settings"** tab pe jaa
2. Left side **"Pages"** pe click
3. **Source** section mein:
   - Branch: `main`
   - Folder: `/ (root)`
4. **"Save"** click karo

### Step 5: Website Live! 🎉
- 2-5 minute wait karo
- Same **"Pages"** section mein link dikhega: `https://username.github.io/birthday-website`
- Yeh link permanent hai, kabhi band nahi hoga!

---

## Option 2: PRO WAY (Git CLI se)

### Step 1: Git Install Karo
1. `git-scm.com/download/win` pe jaa
2. **64-bit Git for Windows Setup** download kar
3. Install karo (Next→Next→Finish)
4. VS Code restart karo

### Step 2: Terminal mein Commands Run Karo

```bash
# Apne project folder mein jaa
cd "C:\Users\Apela\OneDrive\Desktop\Love website"

# Git initialize karo
git init

# Saari files add karo
git add .

# Commit karo
git commit -m "Birthday website ready"

# GitHub repo connect karo (yeh teri repo ka link hoga)
git remote add origin https://github.com/TUMHARA_USERNAME/birthday-website.git

# Push karo
git push -u origin main
```

### Step 3: GitHub Pages Enable Karo (Same as Option 1 - Step 4)

---

## 📸 Images Folder Upload Karna

**IMPORTANT:** `images/photo1.jpg` jaise files bhi upload karni hain!

### Easy way mein:
1. Repo mein **"Add file"** → **"Upload files"**
2. **"images"** naam ka folder banao
3. Saari 6 photos `images/` mein daalo

---

## 🔗 Final Link Kaisa Dikhega
```
https://tumhara-username.github.io/birthday-website/
```

**Yeh link kabhi expire nahi hoga, aur kisi ko bhi share kar sakta hai!** 💕

---

## ⚡ Pro Tip: Custom Domain (Optional)
Agar chahe toh apna domain (jaise `rajlovesher.com`) bhi laga sakta hai GitHub Pages pe - bilkul FREE mein!

