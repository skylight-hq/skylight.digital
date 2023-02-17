source 'https://rubygems.org'
ruby '>=2.5.0'

gem "nokogiri", ">= 1.11.6"
gem "jekyll", "4.2.0"
gem "webrick"

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
