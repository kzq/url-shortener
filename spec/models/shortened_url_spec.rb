require 'rails_helper'

RSpec.describe ShortenedUrl, type: :model do
  describe "validations" do
    subject { ShortenedUrl.new(url: "http://www.google.co.uk/", unique_key: '24kbz') }
    
    it { should validate_presence_of(:url).with_message('Please provide a URL') }
  
    it { should validate_uniqueness_of(:url).case_insensitive.with_message('Please choose another URL') }
  
    it { should validate_uniqueness_of(:unique_key) }
  end
  
  it "prepends http to the url" do
    
  end
  
  it "generates unique key of the given url" do
  end
  
  it "returns short form of the url" do
  end
end
