<template>
    <div v-if="element?.data" class="select-button" :style="element.data.style || ''">
        <div>
            {{ element.data.label }}
        </div>

        <div class="selector-controls">
            <label class="container">
                <!-- <div class="label">{{ current }}</div> -->
                <input style="margin-right: 10px;" :tabindex="element.index" type="checkbox" v-model="current" />
                <span class="checkmark"></span>
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

.container {
    vertical-align: middle;
    position: relative;
    display: inline-block;
    text-align: left;
    width: 20px;
    margin: 0 auto;
}

input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
}

.checkmark {
  position: absolute;
  top: -12px;
  left: 0;
  height: 25px;
  width: 25px;
  background-color: #eee;
  border-radius: 6px;
}

.label {
    margin-left: 40px;
    vertical-align: middle;
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
  background-color: #ccc;
}

/* When the checkbox is checked, add a blue background */
.container input:checked ~ .checkmark {
  background-color: #c90707;
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the checkmark when checked */
.container input:checked ~ .checkmark:after {
  display: block;
}

/* Style the checkmark/indicator */
.container .checkmark:after {
  left: 9px;
  top: 6px;
  width: 6px;
  height: 10px;
  border: solid white;
  border-radius: 2px;
  border-width: 0 3px 3px 0;
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
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

.container input:focus ~ .checkmark {
    border-color: #c90707;
    border-width: 0 3px 3px 0;
    border-style: solid;
}
</style>