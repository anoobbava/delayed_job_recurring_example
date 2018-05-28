class CreateUserInformationBackups < ActiveRecord::Migration[5.2]
  def change
    create_table :user_information_backups do |t|
      t.string :first_name
      t.string :last_name
      t.text :secret_message
      t.timestamps
    end
  end
end
