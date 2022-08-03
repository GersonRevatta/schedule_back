class DaySerializer < ActiveModel::Serializer
  attributes :id, :name, :day_number
  has_many :work_hours
end
