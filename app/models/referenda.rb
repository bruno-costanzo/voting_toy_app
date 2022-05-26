class Referenda < ApplicationRecord
  has_many :votes, dependent: :destroy
  has_many :people, through: :votes

  validates :question, presence: true, allow_blank: false
end
