class Payment < ApplicationRecord
    belongs_to :member
    belongs_to :credit

    validates :amount, presence: true
end
