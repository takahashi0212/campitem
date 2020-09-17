class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_one :messages
  #bilongs_to :user
  has_one_attached :image

   #ジャンルの選択が「--」の時は保存できないようにする
   validates :category_id, numericality: { other_than: 1 } 
  # validates :category_id, presence: true 
   belongs_to_active_hash :category 
end
