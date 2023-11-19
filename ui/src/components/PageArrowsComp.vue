<template>
    <div class="pagination-controls" v-if="element?.data" :style="element.data.style || ''">
        <button :tabindex="element.index" class="page-control"  @click="emitButton('back')">
            <svg width="28pt" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
                fill="#fff">
                <path d="M15.41,16.58L10.83,12L15.41,7.41L14,6L8,12L14,18L15.41,16.58Z" />
            </svg>
        </button>
        <div class="page-display">{{ element.data.current }}/{{ element.data.total }}</div>
        <button :tabindex="element.index" @click="emitButton('forward')" class="page-control">
            <svg width="28pt" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
                fill="#fff">
                <path d="M8.59,16.58L13.17,12L8.59,7.41L10,6L16,12L10,18L8.59,16.58Z" />
            </svg>
        </button>
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

const emitButton = (direction) => {
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
        value: direction
    }).catch(e => {
        console.log(e.message)
    });
}
</script>
<style scoepd>
.pagination-controls {
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 0 23px;
    text-align:center;
}

.page-control:first-child {
    margin-right: 4px;
}


.page-control svg {
    fill: #fff;
    transition: all 0.2s ease;
}

.page-control:focus {
    outline: none;
}

.page-control:hover svg, .page-control:focus svg {
    fill: #c90707;
    transition: all 0.2s ease;
}
</style>
  