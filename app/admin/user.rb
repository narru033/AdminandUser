ActiveAdmin.register User do
  config.filters = false
	permit_params :is_active
	
	index do
		selectable_column
    id_column
    column :email
    column :first_name
    column :last_name
    column :sign_in_count
    column :current_sign_in_at
    column :current_sign_in_ip
    column :last_sign_in_ip
    column :is_active
    actions
  end
  
	#filter :email
	#filter :sign_in_count
	#filter :current_sign_in_at
	#filter :last_sign_in_at
	#filter :current_sign_in_ip
	#filter :is_active

	form do |f|
    f.inputs "Admin Details" do
    	f.input :user_name
      f.input :email
      f.input :is_active
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
