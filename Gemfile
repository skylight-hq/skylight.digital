source 'https://rubygems.org'
ruby '>=3.1.0'

gem 'nokogiri', '~> 1.15'
gem "jekyll", "4.4.1"
gem "webrick"
# Force older sass converter that doesn't use sass-embedded
gem "jekyll-sass-converter", "2.2.0"
# Add explicit sass dependency
gem "sass", "~> 3.7.4"

group :jekyll_plugins do
   gem 'jekyll-sitemap'
   gem 'jekyll-redirect-from'
   gem 'jekyll-paginate-v2', git: 'https://github.com/sverrirs/jekyll-paginate-v2', ref: 'e4e1d01cb6ca1c3f97c84fb8172d908ec5d85b65'
   gem 'octopress-debugger'
   gem "jekyll-image-size", "~> 1.2.1"
   gem 'jekyll-feed'
   # For batch conversion of images
   # gem 'jekyll-imagemagick', '~> 1.4'
end

group :development do
  gem 'scss_lint', require: false
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
