class Site::WelcomeController < SiteController
    layout 'site'
  def index
    @questions = Question.last_question(params[:page])
  end
end
