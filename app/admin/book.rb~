ActiveAdmin.register Book do
	permit_params :name,:price,:author_id,:genre_id,:is_active,:image,:video
	
	# Remove the filters this page
	#config.filters = false
	
	#change the label filter name
	#filter :author, :label => 'Author'
	
	index do
		selectable_column
    id_column
    column 'Book Name', :name
    column :author
    #column :author do |post|
      #link_to post.first_name, admin_post_path(post)
    #end
    column :genre
    column :price do |product|
      number_to_currency product.price
    end
    column "Image" do |book|
    	link_to(image_tag(book.image.url(:thumb), :height => '50'), admin_book_path(book))
  	end
    column 'Status', :is_active
    actions
  end
  
	filter :name
	filter :author
	filter :genre
	filter :price
	
	#Use the checkbox selectable option
	#filter :author, :as => :check_boxes
	#filter :genre, :as => :check_boxes	

	form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :price
      f.input :author
      f.input :genre
      f.input :image, :as => :file
      f.input :video, :as => :file
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
