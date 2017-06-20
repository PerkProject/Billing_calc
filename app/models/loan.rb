class Loan < ApplicationRecord
  belongs_to :borrowers
  has_many :history_payment
end
