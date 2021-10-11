<template>
  <form class="box">
  <div class="field">
    <label class="label">Type to seach in Github repos</label>
    <div class="control">
      <input class="input" type="email" v-model="term" placeholder="e.g. react.js">
    </div>
  </div>

  <button class="button is-primary">search</button>
</form>
</template>

<script>
export default {
  name: 'Home',

  data() {
    return {
      term: ''
    }
  }
}
</script>
