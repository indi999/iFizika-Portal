class CreateKontakts < ActiveRecord::Migration
  def change
    create_table :kontakts do |t|
      t.string :naslov
      t.string :ime
      t.string :prezime
      t.string :email
      t.string :a_email
      t.string :poruka

      t.timestamps
    end
  end
end
