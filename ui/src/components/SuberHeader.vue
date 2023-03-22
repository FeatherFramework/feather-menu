<template>
    <h2 :style="element.style || ''">
        <slot />
    </h2>
</template>
  
<script>
export default {
    name: 'VSubHeader',
    props: {
        element: {
            type: Object,
            required: true
        },
    }
}
</script>
<style scoped>
h2 {
    color: #fff;
    font-weight: 300;
    font-size: 14px;
    padding: 0;
    margin: 0;
}
</style>