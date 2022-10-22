<template>
  <div id="home">
    <div class="bg-green-light">
      <div
        class="container py-5 px-6 max-w-md mx-auto sm:max-w-xl md:max-w-5xl lg:flex lg:pb-10"
        id=""
      >
        <div class="lg:mx-6 lg:flex-1 lg:my-auto">
          <img
            src="@/assets/img/petani-1.jpg"
            alt="cover"
            class="rounded-xl shadow-xl sm:mt-6 sm:h-64 sm:w-full sm:object-cover sm:object-top lg:hidden"
          />
          <h3 class="text-2xl font-bold mt-6">
            RASAKAN <span class="text-green-dark">SAYUR SEGAR</span> LANGSUNG
            DARI KEBUN
          </h3>
          <p class="mt-3">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam
            temporibus repudiandae iste, possimus maxime unde aspernatur at eius
            porro commodi?
          </p>
        </div>
        <div class="hidden lg:block lg:w-2/5 lg:mx-6">
          <img
            src="@/assets/img/petani-1.jpg"
            alt="cover"
            class="rounded-xl shadow-xl"
          />
        </div>
      </div>
    </div>
    <div class="container py-5 px-6 max-w-md mx-auto sm:max-w-xl md:max-w-5xl">
      <h3 class="text-2xl text-center font-bold my-5">
        <span class="text-green-dark">GARANSI</span> KAMI
      </h3>
      <div class="my-10 sm:flex">
        <img
          src="@/assets/img/sayuran-1.jpg"
          alt="garansi-kualitas"
          class="rounded-full shadow-xl mx-auto h-32 w-32 md:w-48 md:h-48 sm:object-cover sm:object-center lg:mx-6"
        />
        <div class="mt-6 sm:my-auto sm:ml-6">
          <span class="text-2xl font-bold text-green-dark">Kualitas</span>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae
          corporis cupiditate illo esse rem pariatur dolorum adipisci quasi ab
          voluptates.
        </div>
      </div>
      <div class="my-10 sm:flex">
        <img
          src="@/assets/img/sayuran-2.jpg"
          alt="garansi-kesegaran"
          class="rounded-full shadow-xl mx-auto h-32 w-32 md:w-48 md:h-48  sm:object-cover sm:object-center lg:mx-6"
        />
        <div class="mt-6 sm:my-auto sm:ml-6">
          <span class="text-2xl font-bold text-green-dark">Kesegaran</span>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae
          corporis cupiditate illo esse rem pariatur dolorum adipisci quasi ab
          voluptates.
        </div>
      </div>
    </div>
    <div class="container py-5 px-12 mx-auto max-w-full" id="produk">
      <h3 class="text-2xl text-center font-bold my-5">
        <span class="text-green-dark">PRODUK</span> KAMI
      </h3>
      <div
        v-if="products.length != 0"
        class="pt-5 mx-auto flex flex-wrap gap-6 justify-center"
      >
        <div
          v-for="(product, idx) in products"
          :key="idx"
          class="mx-auto border-2 rounded-md shadow-lg overflow-hidden mb-10 w-64 md:w-80 lg:w-72"
        >
          <img
            :src="`assets/img/${product.nama.replace(/\s/g, '-')}.jpg`"
            :alt="`produk${idx}`"
            class="w-full h-48 object-cover object-center"
          />
          <div class="px-6 py-4">
            <h5 class="font-bold text-xl my-1">
              {{ product.nama.charAt(0).toUpperCase() + product.nama.slice(1) }}
            </h5>
            <p class="my-1">Tersedia: {{ product.jumlah }} kg</p>
            <p class="text-green-dark font-bold">
              Rp{{ makeDotAfter3Digit(product.harga) }}/kg
            </p>
          </div>
        </div>
      </div>
      <div
        v-if="products.length == 0"
        class="text-xl text-center font-bold my-3"
      >
        -- Tidak ada produk --
      </div>
      <div
        v-else-if="!showMoreProduct"
        class="text-xl text-green-dark text-center font-bold my-3 hover:underline cursor-pointer"
        @click="showMoreProduct = true"
      >
        Lihat lebih banyak
        <font-awesome-icon icon="fa-solid fa-arrow-down" />
      </div>
      <div
        v-else
        class="text-xl text-green-dark text-center font-bold my-3 hover:underline cursor-pointer"
        @click="showMoreProduct = false"
      >
        Lihat lebih sedikit
        <font-awesome-icon icon="fa-solid fa-arrow-up" />
      </div>
    </div>
    <div class="container py-5 px-12 mx-auto max-w-full" id="carapesan">
      <h3 class="text-2xl text-center font-bold my-5">
        CARA <span class="text-green-dark">PESAN</span>
      </h3>
      <div class="flex flex-wrap md:flex-nowrap gap-6 justify-center py-3">
        <div class="text-center w-56 mx-3">
          <font-awesome-icon
            icon="fa-brands fa-whatsapp-square"
            class="text-green-dark"
            style="font-size: 80px"
          />
          <h5 class="text-xl font-bold m-3">1. Buka Tautan</h5>
          <p>
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui dolorem
            asperiores iure ipsum temporibus illo consectetur veniam minus
            assumenda ea!
          </p>
        </div>
        <div class="text-center w-56 mx-3">
          <font-awesome-icon
            icon="fa-solid fa-address-card"
            class="text-green-dark"
            style="font-size: 80px"
          />
          <h5 class="text-xl font-bold m-3">2. Isi Identitas</h5>
          <p>
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui dolorem
            asperiores iure ipsum temporibus illo consectetur veniam minus
            assumenda ea!
          </p>
        </div>
        <div class="text-center w-56 mx-3">
          <font-awesome-icon
            icon="fa-solid fa-clipboard-list"
            class="text-green-dark"
            style="font-size: 80px"
          />
          <h5 class="text-xl font-bold m-3">3. Isi Pesanan</h5>
          <p>
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui dolorem
            asperiores iure ipsum temporibus illo consectetur veniam minus
            assumenda ea!
          </p>
        </div>
        <div class="text-center w-56 mx-3">
          <font-awesome-icon
            icon="fa-solid fa-money-bill"
            class="text-green-dark"
            style="font-size: 80px"
          />
          <h5 class="text-xl font-bold m-3">4. Bayar</h5>
          <p>
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Qui dolorem
            asperiores iure ipsum temporibus illo consectetur veniam minus
            assumenda ea!
          </p>
        </div>
      </div>
    </div>
    <div class="py-5 px-12" id="tentang">
      <h3 class="text-2xl text-center font-bold my-5">
        <span class="text-green-dark">TENTANG</span> KAMI
      </h3>
      <div class="py-3">
        <div class="rounded-none mx-auto w-40 sm:hidden">
          <img src="@/assets/img/farm.png" class="rounded-none" />
        </div>
        <div class="flex justify-center">
          <div class="mt-6 sm:my-auto flex-1" style="max-width:500px">
            <span class="text-2xl text-green-dark font-bold">Warung Ijo</span>
            Lorem, ipsum dolor sit amet consectetur adipisicing elit. Illum eius
            alias nostrum dolorem optio? Dolorem veritatis voluptatum
            consequatur facilis eum maxime, recusandae, placeat perferendis cum
            dicta odio suscipit facere illum?
          </div>
          <div class="rounded-none w-1/3 md:w-60 hidden sm:block">
            <img src="@/assets/img/farm.png" class="rounded-none" />
          </div>
        </div>
      </div>
      <div class="flex flex-wrap justify-center my-5">
        <div class="mx-3 my-1">
          <div class="text-xl font-bold text-center">
            Produk
          </div>
          <div class="text-center">{{ countProduct }}</div>
        </div>
        <div class="mx-3 my-1">
          <div class="text-xl font-bold text-center">
            Pengiriman
          </div>
          <div class="text-center">{{ countOrder }}</div>
        </div>
        <div class="mx-3 my-1">
          <div class="text-xl font-bold text-center">
            Pelanggan
          </div>
          <div class="text-center">{{ countCustomer }}</div>
        </div>
      </div>
      <div class="flex flex-wrap justify-center my-5">
        <div class="mx-3 my-3">
          <div class="text-xl font-bold text-center text-green-dark mb-2">
            Kontak Kami
          </div>
          <div>
            <div class="flex">
              <font-awesome-icon
                icon="fa-brands fa-whatsapp-square"
                class="text-green-dark mx-3"
                style="font-size: 32px; min-width: 40px"
              />
              +62 890 7654 3210
            </div>
            <div class="flex">
              <font-awesome-icon
                icon="fa-solid fa-envelope"
                class="text-green-dark mx-3"
                style="font-size: 32px; min-width: 40px"
              />
              kontak@warungijo.co.id
            </div>
          </div>
        </div>
        <div class="mx-3 my-3">
          <div class="text-xl font-bold text-center text-green-dark mb-2">
            Follow Kami
          </div>
          <div>
            <div class="flex">
              <font-awesome-icon
                icon="fa-brands fa-instagram"
                class="text-green-dark mx-3"
                style="font-size: 32px; min-width: 40px"
              />
              warungijo.ofc
            </div>
            <div class="flex">
              <font-awesome-icon
                icon="fa-brands fa-twitter"
                class="text-green-dark mx-3"
                style="font-size: 32px; min-width: 40px"
              />
              warung_ijo
            </div>
          </div>
        </div>
      </div>
    </div>
    <template v-if="modalAction">
      <ModalAction
        :isSuccess="isSuccess"
        :message="message"
        :notToClose="notToClose"
        @closeModal="modalAction = false"
      />
    </template>
  </div>
</template>

<script>
import ModalAction from "@/components/ModalAction";
import api from "@/api/warungIjo";

export default {
  name: "Home",
  components: { ModalAction },
  data() {
    return {
      modalAction: false,
      isSuccess: false,
      message: "",
      notToClose: false,
      showMoreProduct: false,
      products: [],
      countProduct: 0,
      countCustomer: 0,
      countOrder: 0,
    };
  },
  mounted() {
    this.getProducts(6);
    this.getCountProduct();
    this.getCountCustomer();
    this.getCountOrder();
  },
  watch: {
    showMoreProduct(newVal) {
      if (newVal) this.getProducts();
      else this.getProducts(6);
    },
    modalAction(newVal) {
      if (!newVal) {
        this.isSuccess = false;
        this.message = "";
        this.notToClose = false;
      }
    },
  },
  methods: {
    makeDotAfter3Digit(number) {
      let num = "";
      while (number >= 1000) {
        let mod = (number % 1000).toString();
        while (mod.length < 3) mod = "0" + mod;
        num = "." + mod + num;
        number = Math.floor(number / 1000);
      }
      num = number.toString() + num;
      return num;
    },
    getProducts(limit) {
      api
        .getProducts(limit)
        .then((res) => {
          if (res.status == 200) this.products = res.data;
          else {
            this.modalAction = true;
            this.message = res.data.message;
          }
        })
        .catch((e) => {
          this.modalAction = true;
          this.message = e.response ? e.response.data.message : e;
        });
    },
    getCountProduct() {
      api
        .getCountProduct()
        .then((res) => {
          if (res.status == 200) this.countProduct = res.data.count;
          else {
            this.modalAction = true;
            this.message = res.data.message;
          }
        })
        .catch((e) => {
          this.modalAction = true;
          this.message = e.response ? e.response.data.message : e;
        });
    },
    getCountCustomer() {
      api
        .getCountCustomer()
        .then((res) => {
          if (res.status == 200) this.countCustomer = res.data.count;
          else {
            this.modalAction = true;
            this.message = res.data.message;
          }
        })
        .catch((e) => {
          this.modalAction = true;
          this.message = e.response ? e.response.data.message : e;
        });
    },
    getCountOrder() {
      api
        .getCountOrder()
        .then((res) => {
          if (res.status == 200) this.countOrder = res.data.count;
          else {
            this.modalAction = true;
            this.message = res.data.message;
          }
        })
        .catch((e) => {
          this.modalAction = true;
          this.message = e.response ? e.response.data.message : e;
        });
    },
  },
};
</script>
