ActiveAdmin.register Author do
  permit_params :first_name,:last_name
	show :title => :first_name
  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :created_at
    column :updated_at
    actions
  end

  filter :first_name
  filter :last_name
  filter :created_at
  
  form do |f|
    f.inputs "Admin Details" do
      f.input :first_name
      f.input :last_name
    end
    f.actions
  end

  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end


end
