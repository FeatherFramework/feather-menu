<template>
    <div v-if="element?.data" class="select-button" :style="element.data.style || ''">
        <div>
            {{ element.data.label }}
        </div>

        <div class="selector-controls">
            <input :tabindex="element.index" type="text" v-model="value" :placeholder="element.data.placeholder">
        </div>
    </div>
</template>
  
<script setup>
import { onMounted, ref, watch } from "vue";
import api from "../api";

const value = ref('')
const timer = ref(null)

const props = defineProps({
    element: {
        type: Object,
        required: true
    }
})

const initiated = ref(false);


onMounted(() => {
    value.value = props.element.data.value || ''

    setTimeout(() => {
        initiated.value = true
    }, 250);
})

watch(() => props.element.data.value, async (val) => {
    if (val !== null && typeof val !== 'undefined') {
        value.value = val
    }
})

watch(value, async (newValue) => {
    if (props.element.hasCallback == true && initiated.value == true) {
        if (timer.value) clearTimeout(timer.value);

        timer.value = setTimeout(() => {
            api.post("onCallback", {
                ...props.element,
                value: newValue || '',
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

.selector-control {
    /* flex: 1; */
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

input[type=text] {
    width: 100%;
    padding: 6px 10px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 3px solid #ccc;
    border-radius: 4px;
    background-color: #ccc;
    color: #413f3f;
    transition: all 0.3s;
    font-weight: 600;
}

input[type=text]::placeholder {
    font-weight: 600;
    /* opacity: 0.5; */
    color: #413f3f;
}


input[type=text]:focus {
    border: 3px solid #c90707;
    outline: none;
}
</style>