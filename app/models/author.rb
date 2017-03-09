class Author < ApplicationRecord
  has_one :book

  validates_presence_of :name
end
