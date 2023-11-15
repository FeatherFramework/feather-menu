<template>
   <div v-html="element.data.value" /> 
</template>
  
<script setup>
defineProps({
    element: {
        type: Object,
        required: true
    }
})
</script>
<style scoped>
</style>