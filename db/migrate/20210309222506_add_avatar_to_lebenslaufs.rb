class AddAvatarToLebenslaufs < ActiveRecord::Migration[5.1]
  def change
    add_column :lebenslaufs, :avatar, :string
  end
end
