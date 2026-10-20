# The Skylight Website

![Jekyll Deploy](https://github.com/skylight-hq/skylight.digital/actions/workflows/main.yml/badge.svg)

This repo is for our public-facing site, which is hosted on [https://skylight.digital](https://skylight.digital).

The site is built with the [Twitter Bootstrap front-end framework](http://getbootstrap.com/) (for now), and uses [Jekyll](https://jekyllrb.com/) to generate static pages, which are served through [GitHub Pages](https://pages.github.com/).

## How changes reach the live site

- **Every merge to `master` rebuilds and redeploys the live site.** The `Deploy Jekyll site to Pages` workflow (`.github/workflows/main.yml`) runs on every push to `master`, whatever the change, and runs Lighthouse on the built pages.
- **Pull requests are checked before merge:** the site must build with no Liquid warnings or errors (`pr-build.yml`), and the secret scan runs on every pull request. Asset manifests and case studies have their own checks when those files change.
- **A weekly pull request syncs the brand pack.** Every Monday, `sync-brand-pack.yml` opens or updates a pull request that copies the brand pack's data from skylight-hub into `_data/brand/`. The brand pages read some of those files, so review what changes before merging.
- **Files Jekyll doesn't publish** are listed under `exclude:` in `_config.yml` (this README, `CONTRIBUTING.md`, `scripts/`, `standards/` and others). A change to only those files still redeploys the site, but no page changes.

Open work and what's held on purpose are in [the status issue](https://github.com/skylight-hq/skylight.digital/issues/639).

## Where work is tracked

This repo is frozen until cutover 1 replaces it with the rebuilt site, and it keeps no work register of its own.

- **Planned work is in [skylight-web](https://github.com/skylight-hq/skylight-web)'s registers**, on its `main` branch: `ACTIONS.md` (stories), `epics.yml`, `risks.yml` and `DECISIONS.md`, all with `WEB-` IDs. That includes this repo's remaining work: copying each change here into the rebuilt site until cutover, moving the hub workflows and the case-study linter that read this repo by name, and archiving it after the two-week soak.
- **Issues here are intake.** One worth keeping becomes a `WEB-` story there, with the issue linked.
- **The priority labels are intake triage, not planned priority.** `priority:high`, `priority:mid`, `priority:low`, `future` and `icebox` say how urgent an incoming issue looked when it was triaged. Planned priority comes from the epic a story belongs to in skylight-web.

## Setup

1. If you’re using a Mac, install homebrew (see https://brew.sh/)
2. After installing git (`brew install git`), `cd` to the directory where you want to check out the site, and then clone it (`git clone https://github.com/skylight-hq/skylight.digital.git`).
3. Install the Ruby version in `.ruby-version` (3.2.6) with a version manager such as asdf (`asdf install ruby 3.2.6`) or rvm (`rvm install 3.2.6`).
4. Install the `bundler` gem, then use bundler to install other project dependencies (`gem install bundler && bundle install`).

Node isn't needed to build the site: `package.json` lists no dependencies.

## Running

1. In the directory you checked out the website into, run `bundle exec jekyll serve` to start the web server.
2. Navigate to http://localhost:4000 in your browser to see your changes.

## Testing

1. To check that the site builds the way the pull-request check does, run `JEKYLL_ENV=production bundle exec jekyll build` and look for `Liquid Warning:` in the output.
2. To lint the stylesheets, run `npm run-script scss-lint`.
3. `rake test` and `npm run-script html-lint` run HTMLProofer, which isn't in the `Gemfile`; add the `html-proofer` gem locally to use them.

## Setup using Docker

1. If you’re using a Mac, install homebrew (see https://brew.sh/).
1. Install [docker](https://www.docker.com/get-started).
1. Install NPM `brew install node`.
1. After installing git (`brew install git`), `cd` to the directory where you want to check out the site, and then clone it (`git clone https://github.com/skylight-hq/skylight.digital.git`).
1. Enter the command `npm run docker-run` to start the server.
1. Navigate to http://localhost:4000 in your browser.

The Docker image (`jekyll/jekyll:3.8`) is older than the site's Jekyll (4.4.1) and Ruby (3.2.6), so this path may not build the current site.
