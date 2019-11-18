class CreateHumerTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :humer_types do |t|
      t.integer :range

      t.timestamps
    end
  end
end
