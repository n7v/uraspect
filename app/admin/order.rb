# Encoding: utf-8
ActiveAdmin.register Order do
  config.batch_actions = false

  index do
    column :id
    column :last_name 
    column :first_name
    column :phone
    column :email
    column 'Оставлен', :created_at
    default_actions
  end

  form do |f|
    f.inputs "Order" do
      f.input :last_name, as: :string
      f.input :first_name, as: :string
      f.input :phone, as: :string
      f.input :email, as: :string
      f.input :content, as: :text
    end
    f.actions
  end
end
