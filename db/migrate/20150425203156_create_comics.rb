class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.string :nombre
      t.string :extension

      t.timestamps null: false
    end
  end
end
