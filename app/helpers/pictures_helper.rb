module PicturesHelper
  include Rails.application.routes.url_helpers

  def upload_picture
    if object.picture.attached?
      {
        url: rails_blob_url(object.picture)
      }
    end
  end
end
