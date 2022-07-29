class AllottedHourSerializer < ActiveModel::Serializer
  attributes :hours, :user
  def user
    object.user
  end
end
