class Site::SearchController < SiteController
    layout 'site'
    def questions
        @questions = Question.all.includes(:answers).page(params[:page])
    end
end
