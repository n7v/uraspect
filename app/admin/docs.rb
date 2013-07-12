ActiveAdmin.register Doc do
  menu :priority => 6
  config.batch_actions = false

  controller do
    def new
      @doc = Doc.new
    end
    def edit
      @doc = Doc.find(params[:id])
    end
  end

  index do
    column :category
    column :name
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :category
      f.input :name
      f.input :sample, as: :file
    end
    f.actions
  end
end
