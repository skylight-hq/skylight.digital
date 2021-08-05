require 'html-proofer'

task :test do
  sh "bundle exec jekyll build"
  options = { 
    :assume_extension => true,
    :url_ignore => [
      /twitter.com/,
      /linkedin.com/,
      /\/company\/about\//,
      /https:\/\/skylight.digital\//,
      /https\:\/\/www\.airforcebes\.af\.mil\//],
    :allow_hash_href => true,
    :http_status_ignore => [999, 503, 302],
    :alt_ignore => [/agile-acquisition-framework.png/],
    :empty_alt_ignore => true
   }
  HTMLProofer.check_directory("./build", options).run
end