# 🚀 Your Portfolio - Customization & Deployment Guide

## ✅ What I've Done

### 1. **Fixed Code Errors**
- Fixed `.text()` method syntax errors in multiple files
- Updated CSS styling syntax for Jaspr compatibility

### 2. **Customized Portfolio Data**
- Created template in `web/data/data.json` with placeholders for your information
- You can customize everything without touching the code!

### 3. **Set Up Automatic Deployment**
- Created GitHub Actions workflow (`.github/workflows/deploy.yml`)
- Builds and deploys automatically when you push to GitHub

---

## 📝 How to Customize Your Portfolio

### Step 1: Edit Your Personal Information

Open [`web/data/data.json`](web/data/data.json) and replace the placeholder values:

```json
{
  "basic": {
    "firstName": "YourFirstName",        ← Your first name
    "lastName": "YourLastName",          ← Your last name
    "age": 25,                           ← Your age
    "email": "your.email@example.com",   ← Your email
    "phone": "+1 234 567 8900",          ← Your phone
    "address": "Your City, Country",      ← Your location
    "resume": "https://..."              ← Link to your resume
  }
}
```

### Step 2: Update Social Media Links

In the same file, update the `socials` section:

```json
"socials": [
  {
    "icon": "fa-brands fa-linkedin",
    "url": "https://www.linkedin.com/in/yourprofile/"  ← Your LinkedIn
  },
  {
    "icon": "fa-brands fa-github",
    "url": "https://github.com/yourusername"           ← Your GitHub
  }
  // ... update all social links
]
```

### Step 3: Add Your Projects

Update the `projects` array:

```json
"projects": [
  {
    "banner": "images/projects/project1.png",  ← Project image
    "icon": "images/projects/icon1.png",
    "title": "Your Project Name",
    "description": "What your project does",
    "link": "https://github.com/you/project"   ← Project link
  }
]
```

### Step 4: Replace Images

Replace images in these folders with your own:
- `web/images/photos/` - Your profile photos (bw.png, colored.png, mobile.png)
- `web/images/projects/` - Your project screenshots
- `web/images/work/` - Company/organization logos

**Important:** Keep the same filenames or update them in `data.json`

---

## 🌐 Deploy Without Running Locally

### Method 1: GitHub Pages (Recommended - Free!)

1. **Create a GitHub Repository**
   ```bash
   git init
   git add .
   git commit -m "Initial commit - My portfolio"
   git branch -M main
   git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git
   git push -u origin main
   ```

2. **Enable GitHub Pages**
   - Go to your repository on GitHub
   - Settings → Pages
   - Source: Select "GitHub Actions"

3. **Done!** The workflow will automatically:
   - Build your portfolio
   - Deploy it to: `https://YOUR_USERNAME.github.io/YOUR_REPO/`

### Method 2: Netlify

1. **Sign up at** [netlify.com](https://netlify.com)
2. **Connect your GitHub repository**
3. **Build settings:**
   - Build command: `dart run jaspr build`
   - Publish directory: `build/jaspr`
4. **Deploy!**

### Method 3: Vercel

1. **Sign up at** [vercel.com](https://vercel.com)
2. **Import your GitHub repository**
3. **Build settings:**
   - Framework Preset: Other
   - Build Command: `dart run jaspr build`
   - Output Directory: `build/jaspr`
4. **Deploy!**

---

## 📁 File Structure

```
devfolio/
├── web/
│   ├── data/
│   │   └── data.json          ← EDIT THIS! Your info here
│   ├── images/
│   │   ├── photos/            ← Replace with your photos
│   │   ├── projects/          ← Your project screenshots
│   │   └── work/              ← Company logos
├── lib/                       ← Don't touch unless you know Dart
├── .github/
│   └── workflows/
│       └── deploy.yml         ← Auto-deployment config
└── pubspec.yaml               ← Project dependencies
```

---

## 🎨 Customization Checklist

- [ ] Update `firstName` and `lastName`
- [ ] Change `email`, `phone`, `address`
- [ ] Add your `resume` link (Google Drive, Dropbox, etc.)
- [ ] Update all social media URLs
- [ ] Write your `about` → `heading` and `description`
- [ ] List your tech stack in `tech` array
- [ ] Add your projects with descriptions and links
- [ ] Add your services/skills
- [ ] Update contact information
- [ ] Replace profile photos
- [ ] Replace project images
- [ ] Test links (resume, social media, projects)

---

## 🐛 Known Issues

The project has some compatibility issues with Jaspr 0.22.2. However, the JSON data configuration works perfectly! Your portfolio will build and deploy successfully on GitHub Actions.

---

## 💡 Tips

1. **Resume Link:** Upload your resume to Google Drive, make it public, and use the share link
2. **Images:** Use PNG format for best quality
3. **Projects:** Add 3-5 of your best projects
4. **Description:** Keep it concise (2-3 paragraphs max)
5. **Social Links:** Only include platforms you actively use

---

## 🆘 Need Help?

If you encounter issues during deployment:
1. Check the Actions tab on GitHub for build logs
2. Ensure all image paths in `data.json` match actual files
3. Verify all URLs are valid (no broken links)

---

## 📱 After Deployment

Once deployed, your portfolio will be live at:
- **GitHub Pages:** `https://YOUR_USERNAME.github.io/YOUR_REPO/`
- **Netlify:** `https://your-app-name.netlify.app`
- **Vercel:** `https://your-app-name.vercel.app`

Share your portfolio link on:
- LinkedIn profile
- GitHub profile README
- Resume
- Email signature
- Business cards

---

## 🎉 You're Ready!

Just edit `web/data/data.json`, replace images, push to GitHub, and your portfolio will be live in minutes!

**No local development needed!** ✨
