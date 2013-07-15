# Encoding: utf-8
ActiveAdmin.register Order do
  config.batch_actions = false

  index do
    column :id
    column 'Оставлен', :created_at
    default_actions
  end

  form do |f|
    f.inputs "Order" do
      f.input :last_name, as: :string, label: 'Фамилия'
      f.input :first_name, as: :string, label: 'Имя'
      f.input :phone, as: :string, label: 'Телефон'
      f.input :email, as: :string, label: 'Email'
      f.input :content, as: :text, label: 'Контент'
    end
    f.actions
  end
end
