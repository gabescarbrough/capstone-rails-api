class User < ActiveRecord::Base
  include Authentication
  has_many :collections
  has_many :links
end
