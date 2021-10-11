require 'rails_helper'

RSpec.describe Api::V1::SearchController do
  let(:json) { JSON.parse(response.body) }

  describe '#search' do
    context 'when a seach is executed' do
      let(:params) do
        {
          term: 'phoenix',
          language: 'ruby',
          sort: 'forks',
          per_page: 10
        }
      end

      it 'responds with repos found' do
        VCR.use_cassette("success_search_request") do
          get :search, params: params

          expect(response.status).to eq(200)
          expect(json['items'].count).to eq(10)
        end
      end
    end
  end
end