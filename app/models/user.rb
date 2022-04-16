class User < ApplicationRecord
  has_secure_password
  has_many :project, :dependent => :destroy
end
