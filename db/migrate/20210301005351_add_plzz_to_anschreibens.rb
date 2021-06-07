class AddPlzzToAnschreibens < ActiveRecord::Migration[5.1]
  def change
    add_column :anschreibens, :plzz, :string
  end
end
