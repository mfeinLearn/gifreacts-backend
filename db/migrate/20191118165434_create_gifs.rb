class CreateGifs < ActiveRecord::Migration[5.2]
  def change
    create_table :gifs do |t|
      t.string :name
      t.integer :emotion_id
      t.integer :humer_type_id

      t.timestamps
    end
  end
end
