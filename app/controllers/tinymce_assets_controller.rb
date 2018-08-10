class TinymceAssetsController < ApplicationController
  # respond_to :json

  def create
    file = params[:file]
    uploader = ImageUploader.new #업로더라는 이름으로 좀업로더 객체 생성

    uploader.store!(file)
    render json: {
      image: {
        url: uploader.url
      }
    }, content_type: "text/html"
  end

  def wow
    render json: {
      image: {
        url: ":",
        height: 400,
        width:  600
      }
    }, layout: false, content_type: "application/json"
  end
end
