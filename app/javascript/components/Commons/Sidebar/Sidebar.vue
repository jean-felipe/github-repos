<template>
  <div class="sidebar">
    <div class="logo">
      <a class="logo-text title is-6" @click="goToHome()">
        <!-- <img src="../../../images/logo.png" alt="logo contexts"> -->
      </a>
      <hr class="logo-hr">
        <p class="has-text-white logo-title">{{ name }}</p>
      <hr class="logo-hr">
    </div>
    <div class="sidebarWrapper">
      <div v-if="this.type ===  'customer'">
        <CustomerLinks :user="user" />
      </div>

      <div v-else-if="this.type === 'author'">
        <AuthorLinks :user="user"  />
      </div>
    </div>
  </div>
</template>

<script>
import AuthorLinks from './AuthorLinks';
import CustomerLinks from './CustomerLinks';

export default {
  name: 'Sidebar',
  components: { AuthorLinks, CustomerLinks },


  props: {
    user: {
      type: Object,
    },
    data: {
      type: Object,
    }
  },

  data() {
    return {
      type: '',
      name: '',
    }
  },

  methods: {
    goToProducts() {
      window.location.href = '/products';
    },

    goToHome() {
      window.location.href = '/';
    },
  },

  mounted() {
    this.type = this.user.user.user_type
    this.name = this.user.user.email
  }
}
</script>

<style>
  .sidebar {
    color: #fff;
    font-weight: 300;
    position: fixed;
    top: 0;
    bottom: 0;
    left: 0;
    z-index: 2;
    width: 260px;
    background: #66615b;
    box-shadow: 0 16px 38px -12px rgba(0,0,0,.56), 0 4px 25px 0 rgba(0,0,0,.12), 0 8px 10px -5px rgba(0,0,0,.2);
  }


  .sidebarWrapper {
    position: relative;
    height: calc(100vh - 75px);
    overflow: auto;
    width: 260px;
    z-index: 4;
    padding-bottom: 30px;
  }

  .menu {
    display: flex;
    flex-wrap: wrap;
    padding-left: 0;
    margin-bottom: 0;
    list-style: none;
  }

  .sidebar .menu {
    margin-top: 20px;
    display: block;
  }

  .sidebar .menu li a{
    margin: 10px 15px 0;
    border-radius: 3px;
    color: #fff;
    padding-left: 10px;
    padding-right: 10px;
    text-transform: capitalize;
    font-size: 16px;
    padding: 10px 15px;
    text-decoration: none;
    background-color: transparent;
    transition: all .15s ease-in;
    padding: .5rem 1rem;
    cursor: pointer;
  }

  .sidebar .menu p {
    margin: 0;
    line-height: 30px;
    font-size: 16px;
    position: relative;
    display: block;
    height: auto;
    white-space: nowrap;
    padding-left: 21px;
  }

  .menu-link {
    display: flex;
    /* justify-content: space-between; */
    align-items: center;
    width: 50%;
    font-size: 20px;
  }

  .menu-item .active {
    background-color: rgba(0,0%,78%,.2);
    color: #1D1313;
    box-shadow: none;
  }

  .sidebar .logo {
    padding: 15px 0;
    margin: 0;
    display: block;
    position: relative;
    z-index: 4;
 }

 .sidebar .logo .logo-text {
   text-transform: uppercase;
    padding: 5px 0;
    display: inline-block;
    font-size: 18px;
    color: #fff;
    white-space: nowrap;
    font-weight: 400;
    line-height: 30px;
    overflow: hidden;
    text-align: center;
    display: block;
    cursor: pointer;
 }

 .sidebar .logo .logo-hr {
   content: "";
    bottom: 0;
    right: 15px;
    height: 1px;
    background-color: hsla(0,0%,71%,.3);
    box-sizing: border-box;
}

.logo-title {
  margin-left: 20px;
}

.menu-item {
  display: flex;
  justify-content: space-between;
}


</style>
