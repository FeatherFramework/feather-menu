<template>
    <div ref="draggableContainer" id="draggable-container"
        :style="{ '--shd': menudata.config['720width'] || '500px', '--fhd': menudata.config['1080width'] || '600px', '--khd': menudata.config['2kwidth'] || '700px', '--kkhd': menudata.config['4kwidth'] || '800px' }"
        @mousedown="dragMouseDownFocus">
        <MenuView :menudata="menudata" :focused="activefocused" @dragged="dragMouseDown" @closed="handleClosed"></MenuView>
    </div>
</template>
  
<script setup>
import { ref, reactive, watch, onMounted } from 'vue'
import MenuView from '../views/MenuView.vue'
import api from '../api'

const props = defineProps({
    menudata: {
        type: Object,
        required: true
    }
})

const draggableContainer = ref(null)
const activefocused = ref(false)
const positions = reactive({
    clientX: undefined,
    clientY: undefined,
    movementX: 0,
    movementY: 0
})

onMounted(() => {
    if (props.menudata?.config?.draggable == false) {
        draggableContainer.value.style.top = props.menudata.config.top || '50%'
        draggableContainer.value.style.left = props.menudata.config.left || '50%'
    } else {
        draggableContainer.value.style.top = localStorage.getItem(props.menudata.menuid + 'Top') || props.menudata.config.top || '50%'
        draggableContainer.value.style.left = localStorage.getItem(props.menudata.menuid + 'Left') || props.menudata.config.left || '50%'
    }

    draggableContainer.value.style.height = props.menudata.config.height || ''
})

watch(() => props.menudata.config.height, (data) => {
    draggableContainer.value.style.height = data || ''
})

watch(() => positions.clientX, () => {
    localStorage.setItem(props.menudata.menuid + 'Top', draggableContainer.value.style.top)
})

watch(() => positions.clientY, () => {
    localStorage.setItem(props.menudata.menuid + 'Left', draggableContainer.value.style.left)
})

watch(activefocused, (data) => {
    if (data === props.menudata.menuid) {
        draggableContainer.value.style['z-index'] = '99'
    } else {
        draggableContainer.value.style['z-index'] = '94'
    }
})

const handleClosed = () => {
    api.post("onClose", {
        menuid: props.menudata.menuid
    }).catch(e => {
        console.error(e.message)
    })
}

const dragMouseDown = (event) => {
    event.preventDefault()

    if (!(props.menudata.config.draggable == false)) {
        positions.clientX = event.clientX
        positions.clientY = event.clientY
        document.onmousemove = elementDrag
        document.onmouseup = closeDragElement
    }
}

const dragMouseDownFocus = () => {
    activefocused.value = props.menudata.menuid
}

const elementDrag = (event) => {
    event.preventDefault()
    positions.movementX = positions.clientX - event.clientX
    positions.movementY = positions.clientY - event.clientY
    positions.clientX = event.clientX
    positions.clientY = event.clientY

    draggableContainer.value.style['z-index'] = '99'
    draggableContainer.value.style.top = (draggableContainer.value.offsetTop - positions.movementY) + 'px'
    draggableContainer.value.style.left = (draggableContainer.value.offsetLeft - positions.movementX) + 'px'
}

const closeDragElement = () => {
    document.onmouseup = null
    document.onmousemove = null
}
</script>
  
<style>
#draggable-container {
    position: absolute;
    transition: width 0.04s ease, height 0.04s ease;
    touch-action: none;
}

/* Resolution support */

/* 720p */
@media only screen and (min-width: 1280px) {
    #draggable-container {
        width: var(--shd);
    }
}

/* 1080p */
@media only screen and (min-width: 1920px) {
    #draggable-container {
        width: var(--fhd);
    }
}

/* 2k */
@media only screen and (min-width: 2560px) {
    #draggable-container {
        width: var(--khd);
    }
}

/* 4k */
@media only screen and (min-width: 3840px) {
    #draggable-container {
        width: var(--kkhd);
    }
}
</style>