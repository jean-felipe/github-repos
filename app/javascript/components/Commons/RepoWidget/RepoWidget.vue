<template>
<div class="card repo-widget">
  <div class="card-content">
    <div class="media">
      <div class="media-left">
        <figure class="image is-48x48">
          <img :src="repoParams.owner.avatar_url" alt="">
        </figure>

        <div class="media-content">
          <div class="media-content">
            <p class="title is-4">Owner: <a :href="repoParams.owner.url">{{ repoParams.owner.login }}</a></p>
            <p class="subtitle is-6"><a :href="repoParams.owner.repos_url">Repos Url</a></p>
          </div>
        </div>
      </div>
      <div class="content">
        <p class="title is-4">{{ repoParams.name }}</p>
        <p class="subtitle is-6">{{ repoParams.full_name }}</p>
        <a :href="repoParams.languages_url">{{ repoParams.language }}</a>
        <p class="subtitle is-6"><i class="fas fa-star"></i>{{ repoParams.stars }}</p>
        <p class="subtitle is-6"><i class="fas fa-code-branch"></i>{{ repoParams.forks }}</p>
        <br>
        <time datetime="2016-1-1">Last Update: {{ repoParams.updated_at }}</time>
      </div>
    </div>
  </div>
</div>
</template>

<script>
export default {
  name: 'RepoWidget',
  props: {
    repoParams: {
      type: Object,
      required: true,
    },
  },

  data() {
    return {}
  }
}
</script>

<style>
.repo-widget {
  margin-bottom: 20px;
}
</style>