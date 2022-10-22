<template>
  <div class="app overscroll-contain">
    <Navbar />
    <router-view />
    <Footer />
  </div>
</template>

<script>
import Navbar from "./components/Navbar";
import Footer from "./components/Footer";

export default {
  components: {
    Navbar,
    Footer,
  },
};
</script>

<style>
:target:before {
  content: "";
  display: block;
  height: 50px;
  /* margin: 100px 0 0; */
}
</style>
