# Push this project to GitHub

The repo is linked to **https://github.com/RRC-intake-DavidNesca/Assignment_3_Comp-3021.git**, but **OneDrive** often blocks Git from writing in this folder, so the repo stays empty. Use one of the options below.

---

## Option 1: Run the script (recommended)

A script copies your project to `C:\Temp` (outside OneDrive) and pushes from there:

1. Open **PowerShell** (right‑click Start → Windows PowerShell).
2. Run:
   ```powershell
   cd "c:\Users\Nesca\OneDrive\Documents\Secure coding\Assignment 3\Assignment_3_Comp-3021"
   .\push-from-temp.ps1
   ```
3. If you get “script execution disabled”, run once:
   ```powershell
   Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
   ```
4. When Git asks for credentials, use your **GitHub username** and a **Personal Access Token** (not your password):  
   GitHub → Settings → Developer settings → Personal access tokens.

After the first push, for **future updates** you can either run the script again (it will overwrite the temp copy and push), or move your project to a folder outside OneDrive and use normal `git add` / `git commit` / `git push` there.

---

## Option 2: Upload via GitHub website

1. Open: **https://github.com/RRC-intake-DavidNesca/Assignment_3_Comp-3021**
2. Click **“uploading an existing file”** (or “Add file” → “Upload files”).
3. Drag and drop the **contents** of your project folder (e.g. `.github`, `img`, `README.md`, `action.yml`, etc.) — not the whole folder, and not the `.git` folder.
4. Click **“Commit changes”**.

Your repo will no longer be empty. For later updates, you can upload changed files again or switch to Option 1 / a non‑OneDrive folder and use Git from the command line.
