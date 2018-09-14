class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :nivo_takmicenja
      t.integer :razred
      t.date :godina

      # If using MySQL, blobs default to 64k, so we have to give
      # an explicit size to extend them
      t.string :testovi
      t.string :resenje

      t.string :id_zadatka
      t.string :opis
      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
