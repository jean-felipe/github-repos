require 'rails_helper'

RSpec.describe GithubSearchServices do

  subject(:search_class) { described_class.new(term: term, language: language, sort: sort, per_page: per_page) }

  describe '#search_on_repo' do
    context 'when full searching' do
      let(:term) { 'tetris' }
      let(:language) { 'assembly' }
      let(:sort) { 'stars' }
      let(:per_page) { 5 }

      it 'finds related repositories' do
        VCR.use_cassette("success_search") do
          response = search_class.search_on_repo

          expect(response['items'].count).to eq(5)
        end
      end
    end

    context 'when searching without some params' do
      let(:term) { 'tetris' }
      let(:language) { 'assembly' }
      let(:sort) { nil }
      let(:per_page) { nil }

      it 'finds related repositories without sort' do
        VCR.use_cassette("success_search_without_sort") do
          response = search_class.search_on_repo

          expect(response['items'].count).to eq(30)
        end
      end
    end

    context 'when no params' do
      let(:term) { nil }
      let(:language) { nil }
      let(:sort) { nil }
      let(:per_page) { nil }

      it 'raises error cause query is required' do
        VCR.use_cassette("success_search_no_params") do
          response = search_class.search_on_repo

          expect(response['message']).to eq("Validation Failed")
          expect(response.dig('errors', 0, 'resource')).to eq("Search")
          expect(response.dig('errors', 0, 'field')).to eq("q")
          expect(response.dig('errors', 0, 'code')).to eq("missing")
        end
      end
    end
  end
end