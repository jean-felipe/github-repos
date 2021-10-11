class GithubSearchServices
  include HTTParty
  base_uri 'api.github.com'

  attr_reader :term, :language, :sort, :per_page

  def initialize(term:, language:, sort:, per_page:)
    @term = term
    @language = language
    @sort = sort
    @per_page = per_page
  end

  def search_on_repo
    query = build_query_string

    res = self.class.get("/search/repositories?#{query}", headers: headers)

    JSON.parse(res.body)
  end

  private

  def headers
    {
      'Accept' => 'application/vnd.github.v3+json'
    }
  end

  def build_query_string
    query = "q=#{term}"

    if language
      query += "+language:#{language}"
    end

    if sort
      query += "&sort=#{sort}"
    end

    if per_page
      query += "&per_page=#{per_page}"
    end

    query += "&order=desc"
  end
end