require 'rails_helper'

RSpec.describe ShortenedUrl, type: :model do
  before(:each) do
    @url = "http://www.google.co.uk/" 
    @shortened_url = ShortenedUrl.generate(@url, "/")   
  end
  
  describe "validations" do
    subject { ShortenedUrl.new(url: @url, unique_key: '24kbz') }
    
    it { should validate_presence_of(:url).with_message('Please provide a URL') }
  
    it { should validate_uniqueness_of(:url).case_insensitive.with_message('Please choose another URL') }
  
    it { should validate_uniqueness_of(:unique_key) }
  end
  
  #TO DO
  context "url scheme not given" do
    it "prepends http to the url" do
    end
  end
  
  describe "#generate" do
    it "generates unique key for the given url" do
      expect(@shortened_url.unique_key).not_to be_nil
    end
    
    it "always keeps one key for the same URL" do
      shortened_url = ShortenedUrl.generate @url, "/"
      expect(shortened_url.unique_key).to eq(@shortened_url.unique_key)
    end    
  end
end
