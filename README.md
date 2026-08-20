# whit.fyi

A deliberately plain Jekyll site: markdown posts, one stylesheet, no JS, no build pipeline beyond what GitHub Pages already runs.

## Structure

```
_config.yml       site title, description, permalink format
_layouts/         default.html (shell), post.html (post wrapper)
_posts/           one markdown file per post
index.html        homepage - lists all posts
about.md          about page
style.css         all styling, one file
feed.xml          RSS feed, generated automatically
CNAME             custom domain
```

## First-time setup

1. Push this folder to your `whit.fyi` GitHub repo (replacing what's there, or as a fresh repo).
2. In the repo's Settings → Pages, set the source to the branch you pushed (usually `main`), root folder.
3. In your domain registrar, point `whit.fyi` at GitHub Pages:
   - `A` records for the apex domain to GitHub's IPs (185.199.108.153, .109.153, .110.153, .111.153), or
   - a `CNAME` record if using a `www` subdomain instead.
   GitHub's own docs have the current IP list if it's changed: https://docs.github.com/pages/configuring-a-custom-domain-for-your-github-pages-site
4. Wait a few minutes for DNS + GitHub's SSL cert to provision. The CNAME file in this repo tells GitHub which domain to serve.

## Publishing a new post

Add a file to `_posts/` named:

```
YYYY-MM-DD-your-slug.md
```

with this at the top:

```
---
title: "Your Post Title"
---

Body goes here, in markdown.
```

Commit and push. GitHub Pages rebuilds automatically, usually within a minute.

## Previewing locally (optional)

You don't need this to publish — pushing to GitHub is enough. But if you want to see changes before pushing:

```
bundle install
bundle exec jekyll serve
```

Then open http://localhost:4000.

## Customizing

- Colors, fonts, spacing: all in `style.css`, no build step, just edit and refresh.
- Page structure: `_layouts/default.html` is the shell every page uses. `_layouts/post.html` wraps posts specifically.
- Nav links: edit the `<nav>` block in `_layouts/default.html`.
