class Article < ApplicationRecord
    validates :title, presence: true, uniqueness: true
end
