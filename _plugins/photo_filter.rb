require "exifr"

module Jekyll
  module PhotoFilter
    def photo_filter(files)
      photos = files.select {|photo| photo.relative_path.include?("original") }
      photos.sort_by do |photo|
        photo.name
      end
    end
  end
end
Liquid::Template.register_filter(Jekyll::PhotoFilter)