<template>
  <div class="sticky top-0">
    <div
      class="bg-green-light flex justify-between items-center py-5 px-6 lg:px-12"
    >
      <div class="flex">
        <img style="height: 2rem" src="@/assets/img/logo.png" alt="" />
        <h3 class="text-2xl pl-3 font-bold">
          Warung Ijo
        </h3>
      </div>
      <div class="flex" v-if="!isBurgerMenu">
        <h4 class="px-2 font-bold text-xl">
          <a class="hover:underline" href="#">Beranda</a>
        </h4>
        <h4 class="px-2 font-bold text-xl">
          <a class="hover:underline" href="#produk">Produk</a>
        </h4>
        <h4 class="px-2 font-bold text-xl">
          <a class="hover:underline" href="#carapesan">Cara pesan</a>
        </h4>
        <h4 class="px-2 font-bold text-xl">
          <a class="hover:underline" href="#tentang">Tentang kami</a>
        </h4>
      </div>
      <div @click="openSidebar(!isNavOpen)" class="cursor-pointer" v-else>
        <font-awesome-icon icon="fa-solid fa-bars" style="font-size: 2rem" />
      </div>
      <div
        class="z-10 w-full h-full fixed left-0 bg-black bg-opacity-50"
        style="top: 73.33px"
        v-if="isNavOpen"
        @click="openSidebar(!isNavOpen)"
      ></div>
      <div
        class="z-20 w-42 h-screen bg-white fixed right-0"
        style="top: 73.33px"
        v-if="isNavOpen"
      >
        <h4 class="px-5 py-1.5 font-bold text-xl text-right hover:bg-gray-400">
          <a href="#" @click="openSidebar(false)">Beranda</a>
        </h4>
        <h4 class="px-5 py-1.5 font-bold text-xl text-right hover:bg-gray-400">
          <a href="#produk" @click="openSidebar(false)">Produk</a>
        </h4>
        <h4 class="px-5 py-1.5 font-bold text-xl text-right hover:bg-gray-400">
          <a href="#carapesan" @click="openSidebar(false)">Cara pesan</a>
        </h4>
        <h4 class="px-5 py-1.5 font-bold text-xl text-right hover:bg-gray-400">
          <a href="#tentang" @click="openSidebar(false)">Tentang kami</a>
        </h4>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "Navbar",
  data() {
    return {
      isBurgerMenu: false,
      isNavOpen: false,
      windowWidth: window.innerWidth,
    };
  },
  created() {
    window.addEventListener("resize", this.handleResize);
    this.handleResize();
  },
  destroyed() {
    window.removeEventListener("resize", this.handleResize);
  },
  methods: {
    handleResize() {
      this.windowWidth = window.innerWidth;
      if (this.windowWidth < 768) this.isBurgerMenu = true;
      else {
        this.isBurgerMenu = false;
        this.isNavOpen = false;
      }
    },
    openSidebar(val) {
      this.isNavOpen = val;
      this.handleResize();
    },
  },
};
</script>
