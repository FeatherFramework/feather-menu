<template>
    <h2 :style="element.data.style || ''">
        {{ element.data.value }}
    </h2>
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
h2 {
    color: #fff;
    font-weight: 400;
    font-size: 25px;
    padding: 0;
    margin: 0;
    text-align: center;
    margin: 0 auto;
}
</style>