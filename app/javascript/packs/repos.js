import Vue from 'vue';
import VueSwal from 'vue-swal'

import Main from '../components/Main.vue';

const parseData = (prop) => {
  try {
    return JSON.parse(prop);
  } catch (e) {
    return prop;
  }
};

Vue.use(VueSwal)

const init = () => {
  const element = document.getElementById('repos');
  if (element !== null) {
    const rawData = Object.assign({}, element.dataset);
    const propsData = Object.keys(rawData).reduce((acc, prop) => {
      acc[prop] = parseData(rawData[prop]);
      return acc;
    }, {});

    // eslint-disable-next-line no-new
    new Vue({
      el: element,
      render(h) {
        return h(Main, {
          props: propsData,
        });
      },
    });
  }
};

['DOMContentLoaded', 'page:load', 'page:restore'].forEach((event) => {
  document.addEventListener(event, init);
});
