class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    songs.first.genre
  end

  def song_count
    songs.count
  end

  def genre_count
    songs.map {|song|song.genre}.uniq.count
  end
end
