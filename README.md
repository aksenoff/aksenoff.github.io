# aksenoff.github.io

Static site generated with Jekyll and the Pixyll theme.

## Local development

```bash
# Install gems (requires Ruby 3.1+ and Bundler 2.7)
bundle install

# Start a live-reload development server
bundle exec jekyll serve
```

You can also run everything inside Docker:

```bash
docker run --rm -it -p 4000:4000 \
  -v "$(pwd)":/srv/jekyll -w /srv/jekyll ruby:3.2 bash -lc \
  "gem install bundler && bundle install && bundle exec jekyll serve --host 0.0.0.0"
```

## Project layout

- `_pages/en` and `_pages/ru` keep language-specific static pages grouped together.
- `_posts/` stores dated content in both languages.
- `_includes/posts_by_lang.html` renders the home page feed without duplicating templates.
- `css/` retains Pixyll styles plus local overrides.

Run `bundle exec jekyll build` before deploying if you need a fresh static export locally. GitHub Pages builds automatically when you push to the default branch.
