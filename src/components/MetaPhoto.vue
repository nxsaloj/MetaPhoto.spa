<template>
  <div>
    <section>{{ title }}</section>
  </div>
</template>
<script setup lang="ts">
const props = defineProps({
  id: Number,
  title: String,
});
</script>
