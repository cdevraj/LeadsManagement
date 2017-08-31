class User < ApplicationRecord
	has_secure_password
	has_many :leads, class_name: 'Lead', foreign_key: 'lead_id'	

	 # scope :is_manager?(user), -> { user.type == "Users::Manager" }
	 # scope :is_lead_generator?(user), -> { user.type == "Users::LeadGenerator" }


	 def is_manager?
	 	self.type=="Users::Manager"
	 end

	 def is_lead_generator?
	 	self.type=="Users:::LeadGenerator"
	 end
end
