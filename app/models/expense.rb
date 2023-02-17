class Expense < ApplicationRecord
  validates :title,:description,:amount, presence: true
end
