class PagesController < ApplicationController
  
  def index
    last_modified = File.mtime("#{Rails.root}/app/views/pages/index.html.erb")
    fresh_when last_modified: last_modified , public: true, etag: last_modified
    expires_in 30.seconds, public: true
  end
  
end
