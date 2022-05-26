class Vote < ApplicationRecord
  belongs_to :person
  belongs_to :referenda

  validates :referenda_id, presence: true
  validates :person_id, uniqueness: { scope: :referenda_id }, presence: true
  validates :value, inclusion: { in: [true, false] }

  scope :affirmatives, -> { where(value: true) }
  scope :negatives, -> { where(value: false) }
end
