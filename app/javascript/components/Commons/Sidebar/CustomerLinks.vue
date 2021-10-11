<template>
  <ul class="menu">
    <li class="menu-item">
      <a class="menu-link" @click="goToTimeline()">
        <i class="fas fa-boxes"></i>
        <p class="title is-4 has-text-white">Timeline</p>
      </a>
    </li>
    <li class="menu-item">
      <a class="menu-link" @click="goToAuthors()">
        <i class="fas fa-clipboard-list"></i>
        
        <p class="title is-4 has-text-white">Autores</p>
      </a>
    </li>
    <li class="menu-item">
      <a class="menu-link" @click="goToExplore()">
        <i class="fas fa-users"></i>
        <p class="title is-4 has-text-white">Explorar</p>
      </a>
    </li>
    <li class="menu-item">
      <a class="menu-link" @click="goToNotifications()">
        <i class="fas fa-play-circle"></i>
        <p class="title is-4 has-text-white">Notificações</p>
      </a>
    </li> 
    
  </ul>
</template>

<script>
export default {
  name: 'CustomerLinks',

  data() {
    return {
      name: ''
    }
  },

  methods: {
    goToTimeline() {
      window.location.href = '/timeline';
    },

    goToAuthors() {
      window.location.href = '/authors';
    },

    goToExplore() {
      window.location.href = '/explore';
    },

    goToNotifications() {
      window.location.href = '/notifications';
    },
  },
}
</script>

<style>
  

</style>
