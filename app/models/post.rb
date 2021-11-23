class Post < ApplicationRecord
    CATEGORY = ['Fiction', 'Non-Fiction']
    NOTALLOW = ["True Facts"]
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion:{in: CATEGORY,  message: "must be one of: #{CATEGORY.join(', ')}"}
    validates :title, exclusion: {in:  NOTALLOW,  message: "must be one of: #{NOTALLOW.join(', ')}" }
 


end
