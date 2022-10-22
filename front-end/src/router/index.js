import Vue from "vue";
import VueRouter from "vue-router";
import Home from "../views/Home.vue";
// import Calculator from "../views/Calculator.vue";
// import Table from "../views/Table.vue";

Vue.use(VueRouter);

const routes = [
  {
    path: "/",
    name: "Home",
    component: Home,
  },
  // {
  //   path: '/calculator',
  //   name: 'Calculator',
  //   component: Calculator
  // },
  // {
  //   path: '/table',
  //   name: 'Table',
  //   component: Table
  // }
];

const router = new VueRouter({
  mode: "history",
  routes,
});

export default router;
