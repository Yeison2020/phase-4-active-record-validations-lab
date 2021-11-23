class Post < ApplicationRecord
    validates :title, presence: true
    validates :title, acceptace: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: %w(Fiction)}
    validates :category, inclusion: {in: %w(Non-Fiction)}


end
