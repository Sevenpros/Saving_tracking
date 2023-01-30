class Member < ApplicationRecord
    has_and_belongs_to_many :groups
    has_many :savings
    has_many :distributions
end
