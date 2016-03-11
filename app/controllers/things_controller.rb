class ThingsController < ApplicationController
  respond_to :json

  def index
    things = Thing.all
    render json: JSONAPI::Serializer.serialize(things, is_collection: true), status: 200
  end
end
