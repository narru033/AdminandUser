ActiveAdmin.register Genre do
	permit_params :name

  index do
    selectable_column
    id_column
    column :name
    column :created_at
    column :updated_at
    actions
  end

  filter :name
  filter :created_at
  filter :updated_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :name
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
