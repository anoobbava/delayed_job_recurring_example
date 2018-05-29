
class UserInformationBackup < ApplicationRecord

  def self.intiate_backup
    user_details = UserInformation.fetch_details
    if user_details.present?
      instance_data = []
      user_details.each do |user_data|
        user_backup_instance = UserInformationBackup.new
        user_backup_instance.first_name = user_data.first_name
        user_backup_instance.last_name = user_data.last_name
        user_backup_instance.secret_message =user_data.secret_message
        instance_data << user_backup_instance
      end
      UserInformationBackup.import instance_data
      user_details.update_all(is_selected: true)
    end
  end
end

