<template>
   <div v-html="element.html" /> 
</template>
  
<script>
export default {
    name: 'VHeader',
    props: {
        element: {
            type: Object,
            required: true
        },
    }
}
</script>
<style scoped>
</style>