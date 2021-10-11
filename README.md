# Github repos Reader
This is a SPA project to show the use of github API to seach repositories based in terms.

### Description
This is a Ruby on Rails project, witch uses webpack to handle frontend, the javascript framework used is Vuejs.

## Libs:
- Rspec -> Ruby lib to handle unit tests
- Httparty -> Ruby lib to handle http requests from backend
- VCR -> Ruby lib used to record requests and avoid multiple API requests when testing
- Moment.js -> Javascript lib used to parse dates in frontend layer
- Axios -> Javascript lib used to handle http requests from frontend
- PulseLoader -> Javascript component lib used to create the loader in frontend

## Steps to run locally
1 - Install ruby with rvm, follow the steps: https://rvm.io/rvm/install
2 - Clone the project in your computer
3 - Run `gem install bundle`
4 - Run `bundle install`
5 - Run `yarn install` -> you will need the nodejs version 14 or higher, and the lastest version of `yarn`
6 - Run `rails db:create db:migrate`
7 - Run `rails s`
8 - In your browser go to url: `localhost:3000`
9 - Type some term, change the sorts and click `search`


## Future Improvements
- Add Docker Image and docker-compose.yml
- Handle user authentication in order to have another github APIS enabled with OAuth2
- Improve the data showed for each repo, e.g: repo description, maintainer
- Create another views to show more information about repo owner, languages urls.