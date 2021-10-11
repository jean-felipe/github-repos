<template>
  <div class="card dash-widget">
    <div class="card-content">
      <div class="media">
        <div class="media-left">
          <figure class="image is-one-quarter">
            <i :class="icon" style="font-size: 60px"></i>
          </figure>
        </div>
          <div class="media-content">
            <p class="title is-4">{{title}}</p>
            <p class="subtitle is-6"></p>
          </div>
        </div>
      <div class="content widget-number">
        <div></div>
        <h3>{{number}}</h3>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  name: 'IconWidget',

  props: {
    title: {
      type: String,
      required: true
    },
    icon: {
      type: String,
      required: true
    },
    number: {
      type: String,
      required: true
    }
  }
}
</script>
<style scoped>
.widget-number {
  display: flex;
  justify-content: space-between;
  font-size: 20px;
}
</style>
