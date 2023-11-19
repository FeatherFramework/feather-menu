<template>
    <div @click="emitButton" :tabindex="element.index" v-if="element?.data" class="feather-button"
        :style="element.data.style || ''">
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
    if (props.element.data && props.element.data.sound && props.element.data.sound.action && props.element.data.sound.soundset) {
        api.post("playsound", {
            action: props.element.data.sound.action,
            soundset: props.element.data.sound.soundset
        }).catch(e => {
            console.log(e.message)
        });
    }

    api.post("onCallback", props.element).catch(e => {
        console.log(e.message)
    });
}
</script>
<style scoped>
.feather-button {
    width: 84%;

    display: block;
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

.feather-button .selected,
.feather-button:hover,
.feather-button:focus {
    outline: none;
    background-image: url(../assets/selsected.png), url(../assets/selection_box_bg.png);
    background-repeat: no-repeat;
    background-position: center;
    background-size: 100% 100%;
    transition: all .08s;
}
</style>
  