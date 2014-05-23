ActiveAdmin.register Hybridizer do

  permit_params :firstname, :lastname

  index do
    column :id
    column :firstname
    column :lastname
    actions
  end

  form do |f|
    f.inputs "Hybridizer" do
      f.input :firstname
      f.input :lastname
    end
    # f.inputs do
    #   f.has_many :irisplants, :allow_destroy => true, :heading => "Irises" do |i|
    #     i.input :name
    #   end
    # end
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
