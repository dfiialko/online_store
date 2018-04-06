ActiveAdmin.register Category do
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

  permit_params :image,:remove_image,:name,manufacturer_categories_attributes: [:id, :category_id, :manufacturer_id]
  #remove_filter :manufacturer_categories, :manufacturer
  index do
    selectable_column
    column :name
    column :image
    column :manufacturers do |cat_man|
      cat_man.manufacturers.map { |mc| mc.name }.join(", ").html_safe
    end
    actions
  end



  show do |manufacturer|
    attributes_table do
      row :name
      row :image
      row :manufacturers do |cat_man|
        cat_man.manufacturers.map { |mc| mc.name }.join(", ").html_safe
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.has_many :manufacturer_categories, allow_destroy: true do |m_c|
        m_c.input :manufacturer
      end
      f.input :image, :as => :file, :hint => f.object.image.present?  \
       ?  image_tag(f.object.image.url(:thumb))
       : content_tag(:span, "no image")
      if f.object.image?
        f.input :remove_image, :as => :boolean
      end
    end
    actions
  end
end
