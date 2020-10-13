class Question < ApplicationRecord
  belongs_to :user
  belongs_to :answer
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre

  validates :question, :genre, puresence: true
  validates :genre_id, numericality: { other_than: 1 }
end
