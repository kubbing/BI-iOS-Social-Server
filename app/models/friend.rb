class Friend < ActiveRecord::Base
  attr_accessible :gender, :latitude, :longitude, :name, :status, :image
  
  mount_uploader :image, AvatarUploader
end
