<template>
    <div v-if="element?.data" class="dp-container" :style="element.data.style || ''">
        <div>
            {{ element.data.label }}
        </div>

        <div class="selector-controls">
            <VueDatePicker :tabindex="element.index" v-model="value" :teleport="true" :locale="element?.data?.locale"
                :cancelText="element?.data?.cancelText ?? 'cancel'" :selectText="element?.data?.selectText ?? 'select'"
                arrow-navigation dark :placeholder="'Select a date'" month-name-format="long" time-picker-inline
                :enable-time-picker="false" :is-24="false" enable-seconds enable-minutes hours-increment="1"
                minutes-increment="1" seconds-increment="1" hours-grid-increment="1" minutes-grid-increment="5"
                seconds-grid-increment="5" :min-time="{ hours: 11, minutes: 30 }" :max-time="{ hours: 11, minutes: 30 }"
                :start-time="{ hours: 0, minutes: 0 }" :min-date="new Date()" :max-date="new Date()"
                prevent-min-max-navigation :start-date="new Date()"
                :filters="{ months: [0], years: [0], times: { hours: [0], minutes: [0], seconds: [0] } }">
            </VueDatePicker>
        </div>
    </div>
</template>

<script setup>
import VueDatePicker from '@vuepic/vue-datepicker';
import '@vuepic/vue-datepicker/dist/main.css'
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

.dp-container {
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

.dp-container div {
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