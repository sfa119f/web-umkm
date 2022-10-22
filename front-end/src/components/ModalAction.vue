<template>
  <div>
    <div
      v-if="!notToClose"
      class="z-40 w-full h-full fixed top-0 left-0"
      @click="closeModal()"
    ></div>
    <div
      class="z-50 fixed top-1/2 left-1/2 -ml-36 -mt-20 w-72 h-36 px-6 py-4 bg-white border-2 shadow-xl"
    >
      <div
        v-if="!notToClose"
        class="absolute top-2 right-4 cursor-pointer"
        @click="closeModal()"
      >
        <font-awesome-icon
          icon="fa-solid fa-xmark"
          class="text-grey-600 hover:text-black"
        />
      </div>
      <div
        v-if="isSuccess"
        class="flex h-1/2 justify-center font-bold"
        :class="!message ? 'items-end text-lg' : 'items-center'"
      >
        <font-awesome-icon
          icon="fa-solid fa-check"
          class="text-green-dark mr-2 pb-1"
        />
        Success
      </div>
      <div
        v-else
        class="flex h-1/2 justify-center font-bold"
        :class="!message ? 'items-end text-lg' : 'items-center'"
      >
        <font-awesome-icon
          icon="fa-solid fa-triangle-exclamation"
          class="text-red-500 mr-2 pb-1"
        />
        Something when wrong!
      </div>
      <div
        class="h-1/2 pt-1 text-xs text-center break-words multiline-ellipsis"
      >
        {{ message }}
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "modal-action",
  props: ["isSuccess", "message", "notToClose"],
  methods: {
    closeModal() {
      this.$emit("closeModal");
    },
  },
};
</script>

<style>
.multiline-ellipsis {
  display: -webkit-box;
  max-width: 236px;
  -webkit-line-clamp: 3;
  -webkit-box-orient: vertical;
  overflow: hidden;
}
</style>
