# Quick Start - 5 Minutes to Your Portfolio! ⚡

## Step 1: Edit Your Info (2 minutes)

Open `web/data/data.json` and find/replace:

| Find This | Replace With |
|-----------|-------------|
| `YourFirstName` | Your actual first name |
| `YourLastName` | Your actual last name |
| `your.email@example.com` | Your real email |
| `+1 234 567 8900` | Your phone number |
| `Your City, Country` | Your location |
| `https://www.linkedin.com/in/yourprofile/` | Your LinkedIn URL |
| `https://github.com/yourusername` | Your GitHub URL |

## Step 2: Write Your About Section

```json
"about": {
  "heading": "I'm [Your Name], a [Your Role]",
  "description": "Write 2-3 sentences about yourself here",
  "tech": ["Skill1", "Skill2", "Skill3", "Skill4"]
}
```

## Step 3: Add Your Projects

```json
"projects": [
  {
    "title": "Project Name",
    "description": "What it does",
    "link": "https://github.com/you/project"
  }
]
```

## Step 4: Deploy to GitHub (3 minutes)

```bash
# In your terminal:
git init
git add .
git commit -m "My portfolio"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/portfolio.git
git push -u origin main
```

Then go to:
1. GitHub.com → Your repository
2. Settings → Pages
3. Source → GitHub Actions
4. Wait 2 minutes ⏱️
5. Visit: `https://YOUR_USERNAME.github.io/portfolio/` 🎉

## Done! ✅

Your portfolio is now LIVE on the internet!

---

## Optional: Replace Images

- Profile photo → `web/images/photos/colored.png`
- B&W photo → `web/images/photos/bw.png`
- Mobile photo → `web/images/photos/mobile.png`
- Project images → `web/images/projects/`

Just drag and drop your images with the same names!

---

## Need to Update?

1. Edit `web/data/data.json`
2. `git add .`
3. `git commit -m "Updated info"`
4. `git push`
5. Wait 2 minutes - changes are live!

**That's it!** No coding, no local setup required! 🚀
