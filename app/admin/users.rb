ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
	permit_params :email, :password, :name, :rut, :role

	index do
		column :id
		column :rut
		column :names
		column :email
		
		column :created_at

		column :member_since do |user|
			time_ago_in_words(user.created_at)
		end

		column :email_provider do |user|	
			user.email.split('@').last.capitalize
		end
		
		actions
	end

	form do |f|
		inputs 'Usuario' do
			input :rut
			input :email
			input :password
			input :name
			input :role
			input :phone_number
			input :phone_type
			# input :confirm_password
		end
		actions
	end

	controller do
		def update
			if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
				params[:user].delete('password')
				params[:user].delete('password_confirmation')
			end
			super
		end
		
	end
end
