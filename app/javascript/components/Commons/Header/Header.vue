<template>
  <nav class="navbar">
    <div class="container">
      <div class="navbar-brand">
        <div class="navbar-item">
          <a class="brand" href="/">
            <div class="brand-icon">
            </div>
            <div class="brand-content">

            </div>
         </a>
       </div>

       <div class="navbar-burger burger" data-target="mainNav"> <span></span><span></span><span></span> </div>
      </div>

      <div class="navbar-menu">
        <div class="navbar-end">
          <div class="navbar-item">
            <div class="field is-grouped">
              <p class="control">
                <button class="bd-tw-button button" href="">
                  <span class="icon">
                    <i class="fas fa-user-circle"></i>
                  </span>
                  <span>
                    Account
                  </span>
                </button>
              </p>
              <p class="control">
                <a class="button is-danger" href="#">
                  <span class="icon">
                    <i class="fas fa-sign-in-alt"></i>
                  </span>
                  <span>Log Out</span>
                </a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </nav>
</template>

<script>
export default {
  name: 'Header',

  data() {
    return {
      currentUser: {},
      company: {}
    }
  },

  methods: {
    goToHome() {
      window.location.href = '/';
    },
  },
}
</script>

<style>
  .navbar {
    margin-bottom: 0;
    background-color: transparent!important;
    box-shadow: none;
    position: absolute;
    width: 100%;
    z-index: 1029;
    border-radius: 0;
    border: 0;
    margin-bottom: 20px;
    height: auto!important;
    color: #1D1313;
    right: 0;
    left: 0;
    top: 0;
    justify-content: flex-start;
    display: flex;
  }

  .title-link {
    color: inherit;
    font-size: 1.125rem;
    font-weight: 300;
    cursor: pointer;
  }

  .header-content {
    display: flex;
    align-items: center;
    justify-content: space-between;

    width: 100%;
    padding-right: 15px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: auto;

  }

  .header-actions {
    display: flex!important;
    flex-basis: auto;
    justify-content: flex-end!important;
    flex-basis: 100%;
    flex-grow: 1;
    align-items: center;
  }

  .header-menu {
    display: flex;
    flex-direction: column;
    padding-left: 0;
    margin-bottom: 0;
    list-style: none;
    justify-content: space-between;
    width: 100px;

  }

  .header-menu-item {
    box-sizing: border-box;
  }

  .header-menu .header-menu-item .header-menu-item-link {
    position: relative;
    padding: 10px 15px;
    font-weight: 400;
    font-size: 12px;
    text-transform: uppercase;
    border-radius: 3px;
    line-height: 20px;
    margin-left: 5px;
    color: inherit;
  }

  .header-item-text {
    margin-top: 0;
    margin-bottom: 1rem;
    font-size: 20px;
    /* display: none!important; */
  }

  @media(min-width: 992px) {
    .header-menu {
      flex-direction: row;
    }
  }
</style>
