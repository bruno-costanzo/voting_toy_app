# frozen_string_literal: true

class Person < ApplicationRecord
  has_many :votes, dependent: :destroy
  has_many :referenda, through: :votes
end
