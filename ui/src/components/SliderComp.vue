<template>
    <div v-if="element?.data" class="select-button" :style="element.data.style || ''">
        <div>
            {{ element.data.label }}
        </div>

        <div class="selector-controls">
            <vue-slider class="slider" v-model="current" :min="element.data.min || 0" :max="element.data.max || 100"
                :interval="element.data.steps || 1" @change="handleChange" />
        </div>
    </div>
</template>
  
<script setup>
import { onMounted, ref } from "vue";
import api from "../api";
import VueSlider from 'vue-slider-component'

const current = ref(null)
const timer = ref(null)

const props = defineProps({
    element: {
        type: Object,
        required: true
    }
})

onMounted(() => {
    current.value = props.element.data.start ? props.element.data.start : false
})

const handleChange = () => {
    if (timer.value) clearTimeout(timer.value);

    timer.value = setTimeout(() => {
        api.post("onCallback", {
            ...props.element,
            value: current.value,
        }).catch(e => {
            console.log(e.message)
        });
    }, 500);
}
</script>
<style scoped>
.selector-controls {
    display: flex;
    align-items: end;
    margin: 0 23px;
}

.select-button {
    width: 84%;

    display: flex;
    vertical-align: middle;
    align-items: center;
    padding: 10px 15px;
    font-size: 20px;
    text-align: center;

    margin: 0 auto;
    margin-top: 6px;

    background-image: url(../assets/selection_box_bg.png);
    background-repeat: no-repeat;
    background-position: center;
    background-size: 100% 110%;
    transition: all .08s;
}

.select-button div {
    flex: 1;
}

.slider {
    margin-bottom: 10px;
}
</style>