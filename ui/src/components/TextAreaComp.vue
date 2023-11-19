<template>
    <div v-if="element?.data" class="select-button" :style="element.data.style || ''">
        <div>
            {{ element.data.label }}
        </div>

        <div class="selector-controls">
            <textarea :tabindex="element.index" :rows="element.data.rows || '4'" :cols="element.data.cols || '33'"  :style="{'resize': element.data.resize ? '' : 'none'}" v-model="value" :placeholder="element.data.placeholder"> </textarea>
        </div>
    </div>
</template>
  
<script setup>
import { ref, watch } from "vue";
import api from "../api";

const value = ref('')
const timer = ref(null)

const props = defineProps({
    element: {
        type: Object,
        required: true
    }
})

watch(value, async (newValue) => {
    if (props.element.hasCallback == true) {
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

textarea {
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

textarea::placeholder {
    font-weight: 600;
    /* opacity: 0.5; */
    color: #413f3f;
}


textarea:focus {
    border: 3px solid #c90707;
    outline: none;
}
</style>