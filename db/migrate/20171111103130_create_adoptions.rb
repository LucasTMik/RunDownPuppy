class CreateAdoptions < ActiveRecord::Migration[5.1]
  def change
    create_table :adoptions do |t|
      t.references :user, foreign_key: true
      t.references :animal, foreign_key: true
      t.boolean :term_accepted

      t.timestamps
    end
  end
end
