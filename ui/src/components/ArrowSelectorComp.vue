<template>
    <div v-if="element" class="select-button" :style="element.data.style || ''">
        <div>
            {{ element.data.label }}
        </div>

        <div class="selector-controls">
            <button :tabindex="element.index" class="selector-control" @click="inc">
                <svg width="28pt" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="#fff">
                    <path d="M15.41,16.58L10.83,12L15.41,7.41L14,6L8,12L14,18L15.41,16.58Z" />
                </svg>
            </button>
            <div>{{ element.data.options[current]?.display ? element.data.options[current].display :
                element.data.options[current] }}</div>
            <button :tabindex="element.index" class="selector-control" @click="dec">
                <svg width="28pt" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="#fff">
                    <path d="M8.59,16.58L13.17,12L8.59,7.41L10,6L16,12L10,18L8.59,16.58Z" />
                </svg>
            </button>
        </div>
    </div>
</template>
  
<script setup>
import api from "../api";
import { onMounted, ref, watch } from "vue";

const current = ref(-1);
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
        current.value = props.element.data.start ? props.element.data.start - 1 : 0
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

watch(current, async (data) => {
    if (initiated.value == true) {
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
            value: props.element.data.options[data],
            persistindex: data
        }).catch(e => {
            console.log(e.message)
        });
    }
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
    justify-content: center;
    align-items: center;
    margin: 0 23px;
    text-align: center;
}

.selector-control:focus {
    outline: none;
}

.selector-control:focus svg {
    outline: none;
    fill: #c90707;
    transition: all 0.2s ease;
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