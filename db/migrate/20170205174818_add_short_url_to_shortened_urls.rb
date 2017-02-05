class AddShortUrlToShortenedUrls < ActiveRecord::Migration
  def change
    add_column :shortened_urls, :short_url, :string
  end
end
