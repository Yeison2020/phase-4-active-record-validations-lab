class Post < ApplicationRecord
    CATEGORY = ['Fiction', 'Non-Fiction']
    NOTALLOW = ["True Facts"]
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion:{in: CATEGORY}
    validates :title, exclusion: {in:  NOTALLOW }
 


end
