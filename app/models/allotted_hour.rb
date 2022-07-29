class AllottedHour < ApplicationRecord
  belongs_to :contract
  belongs_to :user
  serialize :hours, Array

  scope :by_contract, ->(id) {where(contract_id: id)}
  scope :by_user, ->(id) {where(user_id: id)}
end
