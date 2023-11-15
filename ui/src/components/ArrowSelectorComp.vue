<template>
    <div v-if="element" class="select-button" :style="element.data.style || ''">
        <div>
            {{ element.data.label }}
        </div>

        <div class="selector-controls">
            <div class="selector-control">
                <svg width="28pt" @click="inc" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="#fff">
                    <path d="M15.41,16.58L10.83,12L15.41,7.41L14,6L8,12L14,18L15.41,16.58Z" />
                </svg>
            </div>
            <div>{{ element.data.options[current]?.display ? element.data.options[current].display  : element.data.options[current] }}</div>
            <div class="selector-control">
                <svg width="28pt" @click="dec" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="#fff">
                    <path d="M8.59,16.58L13.17,12L8.59,7.41L10,6L16,12L10,18L8.59,16.58Z" />
                </svg>
            </div>
        </div>
    </div>
</template>
  
<script setup>
import api from "../api";
import { onMounted, ref, watch } from "vue";

const current = ref(-1);

const props = defineProps({
    element: {
        type: Object,
        required: true
    }
})

onMounted(() => {
    current.value = props.element.data.start ? props.element.data.start - 1 : 0
})


watch(current, async (data) => {
    api.post("onCallback", {
        ...props.element,
        value: props.element.data.options[data]
    }).catch(e => {
        console.log(e.message)
    });
})


const inc = () => {
    if (current.value > 0) {
        current.value--
    }
}

const dec = () => {
    if (current.value < props.element.data.options.length - 1) {
        current.value++
    }
}
</script>
<style scoped>
.selector-controls {
    display: flex;
    align-items: center;
    margin: 0 23px;
}

.selector-control {
    flex: 1;
}

svg {
    vertical-align: middle;
    fill: #fff;
    transition: all 0.2s ease;
}

svg:hover {
    fill: #c90707;
    transition: all 0.2s ease;
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
</style>