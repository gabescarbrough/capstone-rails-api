require 'uri'

class Link < ActiveRecord::Base
  belongs_to :collection
  belongs_to :user

  before_save :url_check

  protected

  def url_check
    u = URI(url)
    if (!u.scheme)
        self.url = "http://#{url}"
    end
  end
end
