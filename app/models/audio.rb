class Audio < ApplicationRecord
  belongs_to :user
  has_attached_file :mp3
  
end
