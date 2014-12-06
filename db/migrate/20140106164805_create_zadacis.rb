class CreateZadacis < ActiveRecord::Migration
  def change
    create_table :zadacis do |t|
      t.string :razred
      t.string :oblast
      t.text :opis
      t.string :zadatak

      t.timestamps
    end
  end
end
