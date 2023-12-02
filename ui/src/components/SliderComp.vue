<template>
    <div v-if="element?.data" class="select-button" :style="element.data.style || ''">
        <div>
            {{ element.data.label }}
        </div>
        <div class="selector-controls">
            <vue-slider class="slider" v-model="current" :min="element.data.min || 0" :max="element.data.max || 100"
                :interval="element.data.steps || 1" />
        </div>
    </div>
</template>
  
<script setup>
import { onMounted, ref, watch } from "vue";
import api from "../api";
import VueSlider from 'vue-slider-component'

const current = ref(null)
const timer = ref(null)
const initiated = ref(false);

const props = defineProps({
    element: {
        type: Object,
        required: true
    }
})

onMounted(() => {
    if (props.element.data.value >= 0) {
        current.value = props.element.data.value
    } else {
        current.value = props.element.data.start ? props.element.data.start : false
    }

    setTimeout(() => {
        initiated.value = true
    }, 250);
})

watch(() => props.element.data.value, async (value) => {
    if (value !== null && typeof value !== 'undefined') {
        current.value = value
    }
})

watch(current, () => {
    if (initiated.value == true) {
        if (timer.value) clearTimeout(timer.value);

        timer.value = setTimeout(() => {
            if (props.element.data && props.element.data.sound && props.element.data.sound.action && props.element.data.sound.soundset) {
                api.post("playsound", {
                    action: props.element.data.sound.action,
                    soundset: props.element.data.sound.soundset
                }).catch(e => {
                    console.log(e.message)
                });
            }
            api.post("onCallback", {
                ...props.element,
                value: current.value
            }).catch(e => {
                console.log(e.message)
            });
        }, 500);
    }
})
</script>
<style scoped>
.selector-controls {
    display: flex;
    align-items: flex-end;
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