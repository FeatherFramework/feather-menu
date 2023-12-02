<template>
    <div v-if="element?.data" class="select-button" :style="element.data.style || ''">
        <div>
            {{ element.data.label }}
        </div>

        <div class="selector-controls">
            <label class="switch">
                <input type="checkbox" :tabindex="element.index" v-model="current">
                <span class="toggle round"></span>
            </label>
        </div>
    </div>
</template>
  
<script setup>
import { ref, onMounted, watch } from "vue";
import api from "../api";

const initiated = ref(false);
const current = ref(null)

const props = defineProps({
    element: {
        type: Object,
        required: true
    }
})

onMounted(() => {
    if (props.element.data.value !== null && typeof props.element.data.value !== 'undefined') {
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
            value: data
        }).catch(e => {
            console.log(e.message)
        });
    }
})
</script>
<style scoped>
.selector-controls {
    display: flex;
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


.switch {
    vertical-align: middle;
    position: relative;
    display: inline-block;
    width: 50px;
    height: 15px;
    margin: 0 auto;
    margin-top: 4px;
}

.switch input {
    opacity: 0;
    width: 0;
    height: 0;
}

.toggle {
    position: absolute;
    cursor: pointer;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: #ccc;
    transition: .4s;
    box-shadow: 0.5px 0.5px 2px 1px rgba(0, 0, 0, 0.32);
}

.toggle:before {
    position: absolute;
    content: "";
    height: 22px;
    width: 22px;
    left: 0px;
    bottom: -4px;
    background-color: white;
    transition: .4s;
    box-shadow: 0.5px 0.5px 2px 1px rgba(0, 0, 0, 0.32);
}

input:checked+.toggle {
    background-color: #c90707;
}

input:focus+.toggle {
    box-shadow: 0 0 1px #c90707;
}

input:focus+.toggle:before {
    position: absolute;
    content: "";
    height: 22px;
    width: 22px;
    left: 0px;
    bottom: -4px;
    background-color: white;
    border: 2px solid #c90707;
    transition: .4s;
    box-shadow: 0.5px 0.5px 2px 1px rgba(0, 0, 0, 0.32);
}

input:checked+.toggle:before {
    transform: translateX(28px);
}

.toggle.round {
    border-radius: 34px;
}

.toggle.round:before {
    border-radius: 50%;
}
</style>