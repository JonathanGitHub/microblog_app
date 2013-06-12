class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  belongs_to :user
  # the following line is about validating the length of content
  validates :content, :length => { :maximum =>140 }
end
