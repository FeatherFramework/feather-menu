<template>
    <div class="text-wrap" :style="element.data.style || ''">
        <p>{{ element.data.value }}</p>
    </div>
</template>
  
<script setup>
defineProps({
    element: {
        type: Object,
        required: true
    }
})
</script>
  
<style scoped lang="scss">
.text-wrap {
    font-weight: 300;
    font-size: 18px;
    font-family: sans-serif;
    color: #fff;
    text-align: center;
    margin: 0 auto;
    margin-top: 1em;
    margin-bottom: 1em;
    white-space: pre-line;
}
</style>
  