ActiveAdmin.register Category do
  permit_params :name
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
  #
  # form title: 'A custom title' do |f|
  #    inputs 'Details' do
  #      input :title
  #      input :published_at, label: "Publish Post At"
  #      li "Created at #{f.object.created_at}" unless f.object.new_record?
  #      input :category
  #    end
  #    panel 'Markup' do
  #      "The following can be used in the content below..."
  #    end
  #    inputs 'Content', :body
  #    para "Press cancel to return to the list without saving."
  #    actions
  #  end
  #
  # sidebar :help do
  #   'Need help? Email us at help@example.com'
  # end
end
