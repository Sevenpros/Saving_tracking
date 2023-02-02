class Saving < ApplicationRecord
    belongs_to :group
    belongs_to :member

    validates :amount, presence: true
end
