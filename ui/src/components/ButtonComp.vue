<template>
    <div @click="emitButton" v-if="element?.data" class="feather-button" :style="element.data.style || ''">
        {{ element.data.label }}
    </div>
</template>
  
<script setup>
import api from "../api";

const props = defineProps({
    element: {
        type: Object,
        required: true
    }
})

const emitButton = () => {
    api.post("onCallback", props.element).catch(e => {
        console.log(e.message)
    });
}
</script>
  