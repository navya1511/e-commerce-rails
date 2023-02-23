class Store < ApplicationRecord
    has_many_attached :uploads
    has_many :line_items
end
