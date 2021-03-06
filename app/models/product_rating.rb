class ProductRating < ActiveRecord::Base
    belongs_to :product
    belongs_to :user

    validates :user_id,    presence: true
    validates :product, presence: true
    validates :rating,  presence: true

end
