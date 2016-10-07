class Pic < ApplicationRecord
  acts_as_votable
  belongs_to :user
  
  has_attached_file :image, 
  styles: { medium: "300x300>", thumb: "100x100>" },
  default_url: "https://console.aws.amazon.com/s3/home?region=us-west-2#&bucket=instagram-rep&prefix="
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  
  
  
  
end
