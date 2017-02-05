class ShortenedUrl < ActiveRecord::Base
  validates_presence_of :url, allow_blank: false, message: 'Please provide a URL'
  validates_uniqueness_of :url, case_sensitive: false, message: 'Please choose another URL'
  validates_uniqueness_of :unique_key
  
  def self.generate(url,root_url)
    shortener = Shortener::ShortenedUrl.generate(url)
    shortener.short_url = root_url + shortener.unique_key
    shortener  
  end
  
end
