Skylight Website
==========================

![Jekyll Deploy](https://github.com/skylight-hq/skylight.digital/workflows/Jekyll%20Deploy/badge.svg)

This repo is for our public-facing site, which is hosted on
[https://skylight.digital](https://skylight.digital).

The site is built with the [Twitter Bootstrap front-end framework](http://getbootstrap.com/) (for now), and uses [Jekyll](https://jekyllrb.com/) to generate static pages, which are served through [GitHub Pages](https://pages.github.com/).

Setup
---
1. If you're using a Mac, install homebrew (see https://brew.sh/).
2. After installing git (`brew install git`), `cd` to the directory where you
   want to check-out the site, and then clone it (`git clone
   https://github.com/skylight-hq/skylight.digital.git`).
3. Install rvm (`\curl -sSL https://get.rvm.io | bash -s stable`),
   and then install a new version of ruby (`rvm install 2.6.2`).
4. Install the `bundler` gem, then use bundler to install other project
   dependencies (`gem install bundler && bundle install`).
5. Install node (`brew install node -v7.10.0`), and then run `npm install` to
   install the local dependencies listed in `package.json`.

Running
---
1. In the directory you checked out the website into, run `jekyll serve` to
   start the web server.
2. Navigate to http://localhost:4000 in your browser to see your changes.
3. To execute lint tests, run the `npm run-script <script>` command in the console.
   Available scripts include: `scss-lint`, `html-lint`, and `js-lint`.
   
Setup Using Docker
---
1. If you're using a Mac, install homebrew (see https://brew.sh/).
1. Install [docker](https://www.docker.com/get-started)
1. Install NPM `brew install node` 
1. After installing git (`brew install git`), `cd` to the directory where you
   want to check-out the site, and then clone it (`git clone
   https://github.com/skylight-hq/skylight.digital.git`). 
1. Enter the command `npm run docker-run` to start the server
1. Navigate to http://localhost:4000 in your browser
