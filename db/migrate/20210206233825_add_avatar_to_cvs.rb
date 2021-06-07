class AddAvatarToCvs < ActiveRecord::Migration[5.1]
  def change
    add_column :cvs, :avatar, :string
  end
end
