class NonProfit < ActiveRecord::Base
  validates :name, presence: true
  has_many :donations
end
