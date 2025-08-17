<script setup>
import { computed } from 'vue'
import api from "../api"
import ImageBoxComp from './ImageBoxComp.vue'

const props = defineProps({ element: { type: Object, required: true } })

const items = computed(() => props.element?.data?.items ?? [])

const onChildClicked = (child) => {
  // Forward the click event, including the parent element (so it has the elemid)
  api.post('onCallback', { ...props.element, action: 'child-click', child }).catch(e => console.error(e?.message))
}
</script>

<template>
  <div class="imagebox-container">
    <ImageBoxComp
      v-for="(item, index) in items"
      :key="item.index ?? index"
      :element="item"
      @clicked="onChildClicked"
    />
  </div>
</template>

<style scoped>
.imagebox-container {
  display: flex;
  flex-wrap: wrap;
  gap: 10px;
  justify-content: flex-start;
  margin-top: 6px;
  padding: 10px 35px;
}
</style>
