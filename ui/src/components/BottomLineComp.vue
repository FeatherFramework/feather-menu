<template>
    <div class="bottom-hr" :style="element?.style || ''"></div>
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
.bottom-hr {
    width: 85%;
    height: 41px;
    margin-left: auto;
    margin-right: auto;
    background-image: url(../assets/scroller_right_bottom.png);
    background-repeat: no-repeat;
    background-position: center;
    background-size: 100% 100%;
    opacity: 0.6;
}
</style>