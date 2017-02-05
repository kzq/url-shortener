class Api::ShortenedUrlsController < ApplicationController
  respond_to :json
  
  def index
    respond_with ShortenedUrl.select("id,url,unique_key,short_url")   
  end
  
  def create
    shortened_url = ShortenedUrl.generate(shortened_url_params[:url], root_path)
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
