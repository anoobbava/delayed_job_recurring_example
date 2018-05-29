class UserInformation < ApplicationRecord

scope :fetch_details, -> {where(is_selected:false)}
end
