ActiveAdmin.register Product do
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
	permit_params :title, :description, :author_id, :point_quantity, :is_gift
		
	index do
    column :id
		column :title
		column :description
		column :author
		column :point_quantity
		column :created_at

		actions
	end

	form do |f|
		inputs 'Products' do
			input :title
			input :description
			f.input :images, as: :file, input_html: { multiple: true }
			input :author_id
			f.input :point_quantity, as: :number, input_html: { step: 1 }
			input :is_gift
		end
		actions
	end
end
