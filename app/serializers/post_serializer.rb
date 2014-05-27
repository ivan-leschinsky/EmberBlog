class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :time
  #has_many :comments

  def time
    "#{object.created_at.to_s(:short)}"
  end
end
