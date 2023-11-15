<template>
    <h1 :style="element.data.style || ''">
        {{ element.data.value }}
    </h1>
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
h1 {
    width: 95%;
    margin: 0 auto;
    user-select: none;
    padding: 26px 0px;
    text-align: center;
    vertical-align: middle;
    color: #fff;
    font-weight: 300;
    font-size: 30px;
    background-image: url(../assets/header.png);
    background-repeat: no-repeat;
    background-position: center;
    background-size: 95% 100%;
    margin-top: 5px;
    margin-bottom: 5px;
}
</style>