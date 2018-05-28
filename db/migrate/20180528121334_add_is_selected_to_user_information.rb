class AddIsSelectedToUserInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :user_informations, :is_selected, :boolean, default: false
  end
end
