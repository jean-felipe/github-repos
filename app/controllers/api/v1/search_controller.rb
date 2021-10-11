module Api::V1
  class SearchController < ActionController::API
    def search
      results = GithubSearchServices.new(
        term: params[:term],
        language: params[:language],
        sort: params[:sort],
        per_page: params[:per_page]
      ).search_on_repo

      render json: results
    end
  end
end