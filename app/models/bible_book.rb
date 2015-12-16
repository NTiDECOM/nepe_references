class BibleBook < ActiveRecord::Base
  validates :name, presence: true
  has_many :reference
end
