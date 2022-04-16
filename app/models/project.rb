class Project < ApplicationRecord
  belongs_to :user
  has_many :content, :dependent => :destroy
#  attr_accessor :name, :type
  self.inheritance_column = :_type_disabled
  mount_uploader :thumbnail, ThumbnailUploader
end
