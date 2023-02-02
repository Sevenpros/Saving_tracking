class Member < ApplicationRecord
    has_and_belongs_to_many :groups
    has_many :savings
    has_many :distributions
    has_many :credits
    has_many :payments

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true


end
