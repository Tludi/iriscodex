ActiveAdmin.register Irisplant do

  permit_params :hybridizer_id, :name, :region, :year, :image_url, :iristype
  # belongs_to :hybridizer
  menu :label => "Irises"

  index do
    column :id
    column :name
    column :region
    column :year
    column :image_url
    column :hybridizer do |iris|
      if iris.hybridizer
        iris.hybridizer.lastname + ", " +iris.hybridizer.firstname
      end
    end
    column :image_url
    actions
  end

  form do |f|
    f.inputs "New Iris" do
      f.input :name
      f.input :region
      f.input :year
      f.input :image_url
      f.input :iristype, :label => "Iris Type"
      f.input :hybridizer_id
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
