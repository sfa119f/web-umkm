import Vue from "vue";
import App from "./App.vue";
import router from "./router";
import "./assets/style/index.css";
import { library } from "@fortawesome/fontawesome-svg-core";
import { FontAwesomeIcon } from "@fortawesome/vue-fontawesome";
import {
  faAddressCard,
  faClipboardList,
  faMoneyBill,
  faEnvelope,
  faBars,
  faArrowUp,
  faArrowDown,
  faTriangleExclamation,
  faXmark,
  faCheck,
} from "@fortawesome/free-solid-svg-icons";
import {
  faWhatsappSquare,
  faInstagram,
  faTwitter,
} from "@fortawesome/fontawesome-free-brands";

library.add(
  faAddressCard,
  faClipboardList,
  faMoneyBill,
  faEnvelope,
  faBars,
  faArrowUp,
  faArrowDown,
  faTriangleExclamation,
  faXmark,
  faCheck,
  faWhatsappSquare,
  faInstagram,
  faTwitter
);
Vue.component("font-awesome-icon", FontAwesomeIcon);

Vue.config.productionTip = false;

new Vue({
  router,
  render: (h) => h(App),
}).$mount("#app");
