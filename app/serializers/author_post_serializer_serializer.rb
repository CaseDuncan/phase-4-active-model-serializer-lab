class AuthorPostSerializerSerializer < ActiveModel::Serializer
  attributes :title, :short_content
  
  hase_many :tags

  def short_content
    "#{object.content[0..39]}..."
  end
end
