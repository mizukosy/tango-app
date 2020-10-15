class CreateCounts < ActiveRecord::Migration[6.0]
  def change
    create_table :counts do |t|
      t.integer    :right_wrong,  null: false
      t.integer    :level,        null: false
      t.date       :answer_day,   null: false
      t.references :question,     null: false, foregen_key: true
      t.timestamps
    end
  end
end
