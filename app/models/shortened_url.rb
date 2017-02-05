class ShortenedUrl < ActiveRecord::Base
  validates_presence_of :url, allow_blank: false, message: 'Please provide a URL'
  validates_uniqueness_of :url, case_sensitive: false, message: 'Please choose another URL'
  validates_uniqueness_of :unique_key
  
  def self.generate_key(url)
    Shortener::ShortenedUrl.generate(url)  
  end
  
end
