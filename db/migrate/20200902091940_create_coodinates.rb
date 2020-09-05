class CreateCoodinates < ActiveRecord::Migration[5.2]
  def change
    create_table :coodinates do |t|
      t.string :detail
      t.string :tag
      t.string :gender , null: false
      t.string :height , null: false
      t.string :age
      t.string :hair
      t.string :public , null: false
      t.integer :user_id , null: false , foreign_key: true
      t.timestamps
    end
  end
end
