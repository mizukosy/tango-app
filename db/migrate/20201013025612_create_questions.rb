class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text     :question   , null: false
      t.integer  :user_id    , null: false ,foregen_key: true
      t.integer  :genre_id   , null: false
      t.timestamps
    end
  end
end
