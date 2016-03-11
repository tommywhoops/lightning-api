require 'jsonapi-serializers'

class ThingSerializer
  include JSONAPI::Serializer

  attributes :title, :created_at, :updated_at

  def type
    "thing"
  end

  def self_link
    "#{base_url}/#{type}s/#{id}"
  end
end
