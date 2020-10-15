class Question < ApplicationRecord
  belongs_to :user
  has_one :count
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre

  with_options presence: true do
    validates :question
    validates :answer
    validates :genre_id, numericality: { other_than: 1 }
  end

end
