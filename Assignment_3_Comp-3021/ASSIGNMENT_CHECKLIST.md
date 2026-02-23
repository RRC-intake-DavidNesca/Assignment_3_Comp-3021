# Assignment 3 – AppScan CodeSweep – Screenshot & Evaluation Checklist

Use this list to complete the assignment and capture the **required screenshots** for marking.

---

## 1. GitHub Action setup (already in this repo)

- [x] Workflow file: `.github/workflows/codesweep.yml` (runs on pull requests)
- [ ] **Set workflow permissions:**  
  **Settings → Actions → General** → set **Workflow permissions** to **Read and write permissions**  
  *(Required so CodeSweep can create check runs and annotations.)*

**Screenshot 1:** Settings → Actions → General, showing **Read and write permissions** selected.

---

## 2. AppScan CodeSweep in VS Code (you said HCL is already installed)

- [ ] Open this project in VS Code (or Cursor).
- [ ] Open `sample_code/login.py` or `sample_code/api.js`.
- [ ] Make a small edit and save (or run a scan from the AppScan icon) so CodeSweep runs.
- [ ] Confirm the AppScan panel shows **issues found** (e.g. hardcoded secret, SQL injection, use of `eval`).

**Screenshot 2:** VS Code/Cursor with the AppScan CodeSweep panel open, showing **issues found** in the sample code (e.g. list of findings or annotations in the editor).

**Screenshot 3:** Same or another view showing **at least one issue detail** (e.g. description, location, or mitigation).

---

## 3. GitHub Action – trigger a scan

- [ ] Push your changes to GitHub (use `push-from-temp.ps1` if the repo is in OneDrive).
- [ ] Create a **pull request** (e.g. from a branch into `main`, or from a fork).
- [ ] Wait for the **HCL AppScan CodeSweep** workflow to run on the PR.
- [ ] Open the **Checks** tab (or the CodeSweep check run) and confirm it shows results (e.g. annotations or “failure”/“action_required” when issues are found).

**Screenshot 4:** Pull request page showing the **HCL AppScan CodeSweep** check run (e.g. in the “Checks” section or as a status check).

**Screenshot 5:** CodeSweep check run **details** – e.g. annotations on the “Files changed” tab or the check run summary with issue count/details.

---

## 4. For face-to-face evaluation (marking)

- [ ] **VS Code:** AppScan CodeSweep running and showing that it **has found issues** in the project.
- [ ] **GitHub:** A PR with the CodeSweep **action run and results** visible (checks/annotations).
- [ ] **Reflection:** Be ready to compare AppScan CodeSweep with **CodeQL and Bandit** (e.g. what it finds, how it reports, ease of use).

---

## Quick reference – what to capture

| # | What to capture |
|---|------------------|
| 1 | Repo **Settings → Actions → General** with **Read and write permissions** |
| 2 | **VS Code** – AppScan panel with **issues found** (list or in editor) |
| 3 | **VS Code** – One **issue detail** (description/mitigation) |
| 4 | **GitHub** – PR with **HCL AppScan CodeSweep** check run visible |
| 5 | **GitHub** – CodeSweep **check details** (annotations or issue summary) |

After you have these five screenshots and both the VS Code scan and the GitHub Action are working, you’re ready for submission and evaluation.
