class CreateDiaries < ActiveRecord::Migration
  def change
    create_table :diaries do |t|
      t.string :title
      t.date :date
      t.text :content
      t.integer :number

      t.timestamps null: false
    end
  end
  
  
  
  
  
  
  
  
end
