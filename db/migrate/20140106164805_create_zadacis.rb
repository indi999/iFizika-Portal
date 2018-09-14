class CreateZadacis < ActiveRecord::Migration[5.1]
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
