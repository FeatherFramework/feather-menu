<template>
    <hr :style="element.style || ''"/>
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
hr {
    width: 85%;
    height: 4px;
    margin: auto auto;
    background-image: url(../assets/divider.png);
    background-repeat: no-repeat;
    background-position: center;
    background-size: 100% 100%;
    border: none;
    opacity: 0.6;
    margin-top: 2px;
    margin-bottom: 4px;
}
</style>