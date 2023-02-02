class Credit < ApplicationRecord
    belongs_to :member
    belongs_to :group
    has_many :payments

    validates :amount, presence: true
end
