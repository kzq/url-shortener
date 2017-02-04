class Api::ShortenedUrlsController < ApplicationController
  respond_to :json
  
  def index
    respond_with ShortenedUrl.all   
  end
end
