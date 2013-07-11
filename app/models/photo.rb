class Photo < ActiveRecord::Base
  attr_accessible :album_id, :desc, :url
  belongs_to :album
  mount_uploader :url, PhotoUploader
end
