class Contract < ApplicationRecord
  has_many :allotted_hours
  serialize :hours, Array

  scope :by_start_date, ->(date) { where(start_date: date) }
  scope :by_end_date, ->(date) { where(end_date: date) }
  scope :by_client, ->(id) { where(client_id: id) }
end
