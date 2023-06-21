class Site::WelcomeController < SiteController
    layout 'site'
  def index
    @questions = Question.all.includes(:answers).page(params[:page])
  end
end
