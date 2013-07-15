ActiveAdmin.register DocCategory do
  menu priority: 6
  config.batch_actions = false

  index do
    column :name
    column :created_at
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :name
    end
    f.actions
  end
end
