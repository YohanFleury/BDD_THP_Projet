class PmUser < ApplicationRecord
    belongs_to :recipient, class_name: "User"
end
