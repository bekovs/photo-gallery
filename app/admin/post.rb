ActiveAdmin.register Post do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :image, :user_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

	form do |f|
    f.inputs do
      f.input :title
      f.input :image, :as => :file
      f.input :user
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :image do |post|
      image_tag post.image.url(:small)
    end
    column :title do |post|
      link_to post.title, admin_post_path(post)
    end
    column :user
    actions
  end

  show do
	 attributes_table do
	   row :image do |post|
	     image_tag post.image.url(:medium)
	   end
	   row :title
	   row :user
	 end
	 active_admin_comments
	end



end
