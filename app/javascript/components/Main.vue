<template>
<div>
 <div class="dashboard">
        <div class="main-panel">
          <Header/>
          <div class="content">
            <component :is="loadComponent" :data="componentData" />
          </div>
        </div>
    </div>
</div>
</template>

<script>
import 'bulma/css/bulma.css';
// import 'bulma-o-steps/bulma-steps.css';

import Header from '../components/Commons/Header/Header';

import Home from '../pages/Home.vue';

const componentDicionary = {
  home: Home,
};

export default {
  name: 'Main',

  components: {
    Header, Home
  },

  data() {
    return {
      name: '',
      setup: false,
    }
  },

  props: {
    componentName: {
      type: String,
      required: true,
    },
    componentData: {
      type: Object,
    },
  },

  computed: {
    loadComponent() {
      return componentDicionary[this.componentName]
    }
  }
}
</script>

<style>
.content {
  padding-top: 5%;
  width: 90%;
  margin: auto;
}

</style>
