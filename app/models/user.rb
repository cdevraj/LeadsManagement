class User < ApplicationRecord
	has_many :leads, class_name: 'Lead', foreign_key: 'lead_id'	
end
