class Api::ShortenedUrlsController < ApplicationController
  respond_to :json
  
  def index
    respond_with ShortenedUrl.select("id,url,unique_key,short_url")   
  end
  
  def create
    shortened_url = ShortenedUrl.generate_key shortened_url_params[:url]
    shortened_url.short_url = root_path + shortened_url.unique_key
    if shortened_url.save
      respond_with :api, shortened_url, status: :ok, location: api_shortened_urls_url
    else
      render json: { errors: shortened_url.errors.full_messages }, status: :unprocessable_entity
    end
  end
 
  private
  
  def shortened_url_params
    params.require(:shortened_url).permit(:url)
  end
  
end
