<template>
  <div>
    <h1>Photo view</h1>
    <MetaPhoto
      v-for="(photo, index) in photos"
      :key="index"
      :title="photo.title"
    ></MetaPhoto
    ><br />
  </div>
</template>
<script setup>
import { ref, onBeforeMount } from "vue";
import MetaPhoto from "@/components/MetaPhoto.vue";

const photos = ref([]);

onBeforeMount(() => {
  for (let i = 1; i < 20; i++) {
    photos.value.push({ id: i, title: "Title" + i });
  }
});
</script>
