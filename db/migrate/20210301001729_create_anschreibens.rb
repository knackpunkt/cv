class CreateAnschreibens < ActiveRecord::Migration[5.1]
  def change
    create_table :anschreibens do |t|
      t.string :name
      t.string :adess
      t.string :plz
      t.string :city
      t.string :company_name
      t.string :comapay_adress
      t.string :company_city
      t.string :bewerbung
      t.string :stelle
      t.date :datum

      t.timestamps
    end
  end
end
