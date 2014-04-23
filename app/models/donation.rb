class Donation < ActiveRecord::Base
  belongs_to :non_profit
  # validates :name, presence: true

end
