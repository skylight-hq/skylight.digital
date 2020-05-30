Jekyll::Hooks.register :site, :post_render do |site|
  Dir.foreach('./_favicons/') do |filename|
    next if filename == '.' or filename == '..'
    staticFile = FavFile.new(site, site.source, './_favicons/', filename, site.dest)
    site.static_files << staticFile
  end
end

class FavFile < Jekyll::StaticFile
  
  def initialize(site, base, dir, name, dest)
    super(site, base, dir, name)
    @dest = dest
    @name = name
  end

  def destination(_dest)
    File.join(@dest, @name)
  end
end
