<template>
    <div class="text-wrap" :style="element.style || ''">
        {{ element.text }}
    </div>
</template>
  
<script>
//   import api from "../api";

export default {
    name: 'VTextDisplay',
    props: {
        element: {
            type: Object,
            required: true
        },
        pd: {
            type: Object,
            required: true
        }
    },
}
</script>
  
<style scoped lang="scss">
.text-wrap {
    font-weight: 300;
    font-size: 18px;
    font-family: sans-serif;
}
</style>
  