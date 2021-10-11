<template>
  <ul class="menu">
    <li class="menu-item">
      <a class="menu-link" @click="goToHome()">
        <i class="fas fa-home"></i>
        <p class="title is-4 has-text-white">Home</p>
      </a>
    </li>
    <li class="menu-item">
      <a class="menu-link" @click="goToMyBooks()">
        <i class="fas fa-book"></i>
        <p class="title is-4 has-text-white">Seus Livros</p>
      </a>
    </li>
    <li class="menu-item">
      <a class="menu-link" @click="goToBooksForm()">
        <i class="fas fa-pen-square"></i>
        <p class="title is-4 has-text-white">Novo Livro</p>
      </a>
    </li>
  </ul>
</template>

<script>
export default {
  name: 'AuthorLinks',

  data() {
    return {
      name: ''
    }
  },

  props: {
    user: {
      type: Object,
    }
  },

  methods: {
    goToHome() {
      window.location.href = '/authors/books';
    },

    goToMyBooks() {
      window.location.href = '/authors/books';
    },

    goToBooksForm() {
      window.location.href = '/authors/books/new';
    },
  },
}
</script>

<style>


</style>
