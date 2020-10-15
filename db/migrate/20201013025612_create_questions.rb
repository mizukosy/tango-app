class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text     :question
      t.text     :answer
      t.integer  :genre_id   , null: false
      t.references  :user    , null: false, foregen_key: true
      t.timestamps

    end
  end
end