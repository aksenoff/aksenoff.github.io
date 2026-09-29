# aksenoff.github.io

Static site generated with Jekyll and the Pixyll theme.

## Local development

```bash
# Install gems (Ruby 3.3, matching the Pages workflow)
bundle install

# Start a live-reload development server
bundle exec jekyll serve
```

You can also run everything inside Docker:

```bash
docker run --rm -it -p 4000:4000 \
  -v "$(pwd)":/srv/jekyll -w /srv/jekyll ruby:3.3 bash -lc \
  "gem install bundler && bundle install && bundle exec jekyll serve --host 0.0.0.0"
```

## Project layout

- `_pages/en` and `_pages/ru` keep language-specific static pages grouped together.
- `_posts/` stores dated content in both languages.
- `_includes/posts_by_lang.html` renders the home page feed without duplicating templates.
- `css/` retains Pixyll styles plus local overrides.

## Build and deployment

```bash
JEKYLL_ENV=production bundle exec jekyll build
bundle exec ruby script/check_site.rb
```

Jekyll stays on 3.10 with the existing Pixyll remote theme. Dependencies are
managed directly instead of through `github-pages`, so `jekyll-remote-theme`
can use rubyzip >= 3.4.0 (the fix for CVE-2026-85396).

The Pages workflow builds and checks pull requests without deploying them.
Pushes to `master` deploy only after the build and checks pass.

Before the first deployment, set **Settings → Pages → Build and deployment →
Source** to **GitHub Actions**. Keep the custom domain `blog.aksenov.in`.
Do this when adopting the workflow; the old branch-based Pages builder cannot
use these independently managed dependencies. Repository settings are not
changed by this commit. After merging, check the Pages workflow and the live
English and Russian home pages. A manual workflow run on `master` can retry
deployment after changing the Pages setting.
