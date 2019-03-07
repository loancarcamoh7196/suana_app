ActiveAdmin.register Detail do
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
  permit_params :unique_identifider, :brand_id, :quantity, :available, :is_reserved, :price, :chapter

  index do
    column :unique_identifider
    column :chapter
    column :product_id
    column :quantity
    column :is_reserved

    actions
  end
end
