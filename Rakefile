require 'html-proofer'

task :test do
  sh "bundle exec jekyll build"
  options = { 
    :assume_extension => true,
    :url_ignore => [/twitter.com/,/linkedin.com/,/\/company\/about\//, /https:\/\/skylight.digital\//],
    :allow_hash_href => true,
    :http_status_ignore => [999, 503, 302]
   }
  HTMLProofer.check_directory("./build", options).run
end