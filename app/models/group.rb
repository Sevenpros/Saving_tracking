class Group < ApplicationRecord
    has_and_belongs_to_many :members
    has_many :savings
    has_many :distributions
    has_many :credits
    validates :name, presence: true
end
