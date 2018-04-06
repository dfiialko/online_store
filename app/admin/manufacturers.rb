ActiveAdmin.register Manufacturer do
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
 permit_params :name, manufacturer_categories: [:id, :category_id, :manufacturer_id]
 remove_filter :manufacturer_categories
 index do
  selectable_column
  column :name
  column :categories do |man_cat|
   man_cat.categories.map { |mc| mc.name }.join(", ").html_safe
  end
  actions
 end

 show do |manufacturer|
   attributes_table do
   row :name
   row :categories do |man_cat|
     man_cat.categories.map { |mc| mc.name }.join(", ").html_safe
   end
 end
 end
 end
