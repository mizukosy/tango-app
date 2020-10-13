class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.text,       null: false
      t.integer,    user_id, null: false, foregen_key: true
      t.timestamps
    end
  end
end
