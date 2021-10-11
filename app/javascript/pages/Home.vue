<template>
<div class="content-wrapper">
  <div class="box">
    <div class="field">
      <label class="label">Type to seach in Github repos</label>
      <div class="control">
        <input class="input" type="search" v-model="term" placeholder="e.g. react.js">
      </div>
    </div>

    <div class="row">
      <div class="field">
        <label class="label">Sort options</label>
        <div class="control">
          <div class="select">
            <select v-model="sort">
              <option>Stars</option>
              <option>Forks</option>
              <option>Updated</option>
            </select>
          </div>
        </div>
      </div>

      <div class="field mx-5">
        <label class="label">Programing Languages</label>
        <div class="control">
          <div class="select">
            <select v-model="language">
              <option>Ruby</option>
              <option>Elixir</option>
              <option>Php</option>
              <option>Java</option>
              <option>Javascript</option>
            </select>
          </div>
        </div>
      </div>

      <div class="field  mx-5">
        <label class="label">Total per page</label>
        <div class="control">
          <div class="select">
            <select v-model="perPage">
              <option>5</option>
              <option>10</option>
              <option>20</option>
              <option>30</option>
            </select>
          </div>
        </div>
      </div>
    </div>

    <button class="button is-primary" @click="submitSearch">search</button>
  </div>

  <PulseLoader :loading="loading" color="green" size="20px"></PulseLoader>
  <div class="repos-wrapper" v-if="repos.length > 1">
    <div v-for="repo in repos" :key="repo.name + repo.stars">
      <repo-widget :repoParams="repo" />
    </div>

  </div>
</div>
</template>

<script>
import PulseLoader from 'vue-spinner/src/PulseLoader.vue'
import axios from 'axios';
import RepoWidget from '../components/Commons/RepoWidget/RepoWidget'
import moment from 'moment'

export default {
  components: { RepoWidget, PulseLoader },
  name: 'Home',

  data() {
    return {
      term: '',
      sort: 'Stars',
      language: 'Ruby',
      perPage: '5',
      repos: [],
      loading: false
    }
  },

  methods: {
    submitSearch() {
      this.repos = []
      this.loading = true
      axios.get(`api/v1/search?term=${this.term}&language=${this.language}&sort=${this.sort}&per_page=${this.perPage}`)
        .then(response => {
          console.log(response)
          let items = response.data.items
          items.map(item => {
            this.repos.push({
              forks: item.forks,
              full_name: item.full_name,
              home_page: item.home_page,
              language: item.language,
              languages_url: item.languages_url,
              name: item.name,
              open_issues: item.open_issues,
              owner: item.owner,
              stars: item.stargazers_count,
              visibility: item.visibility,
              updated_at: moment(item.updated_at).format('MMM Do YY')

            })
          })

          this.loading = false
        })
    }
  }
}
</script>
<style>
.row {
  display: flex;
}
</style>
