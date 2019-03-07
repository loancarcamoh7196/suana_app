ActiveAdmin.register Banner do
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
	permit_params :description, :actived, :image
	
	index do
		column :id
		column :imagen do |user|	
			image_tag user.image.variant(resize: '150x150')
		end
		column :description
		column :actived
		
		column :created_at

		actions
	end

	form do |f|
		inputs 'Banners' do
			input :description
			input :actived
			f.input :image, as: :file
		end
		actions
	end
end
