class CreateAchievements < ActiveRecord::Migration[5.1]
  def change
    create_table :achievements do |t|
      t.string :kind
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
