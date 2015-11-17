class Song
  
  attr_accessor :artist, :title
  
  def slugify
    song_title = self.title.gsub(" ", "_").downcase
    file = Tempfile.new([song_title, ".txt"], "tmp")

    file.write("#{self.artist.name} - #{self.title}")
    file.close
  end
end
