class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.string :nick
      t.string :color
      t.string :kind
      t.decimal :weight
      t.text :description

      t.timestamps
    end
  end
end
