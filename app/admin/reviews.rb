# Encoding: utf-8
ActiveAdmin.register Review do
  menu :label => 'Отзывы', :priority => 5
  config.batch_actions = false

  controller do
    def new
      @review = Review.new
    end
    def edit
      @review = Review.find(params[:id])
    end
  end

  index do
    column :id
    column 'Подпись', :caption
    column 'Оставлен', :created_at
    column "Прошёл модерацию", :moderated do |review|
      review.moderated? ? 'Да' : 'Нет'
    end
    default_actions
  end

  form do |f|
    f.inputs "Review" do
      f.input :caption, label: 'Подпись'
      f.input :content, as: :text, label: 'Контент'
      f.input :moderated, label: 'Прошёл модерацию'
    end
    f.actions
  end
end
