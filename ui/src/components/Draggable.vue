<template>
    <div ref="draggableContainer" id="draggable-container"
        :style="{ '--shd': menudata.config['720width'] || '500px', '--fhd': menudata.config['1080width'] || '600px', '--khd': menudata.config['2kwidth'] || '700px', '--kkhd': menudata.config['4kwidth'] || '800px' }"
        @mousedown="dragMouseDownFocus">
        <MenuView :menudata="menudata" :focused="activefocused" @dragged="dragMouseDown" @closed="handleClosed"></MenuView>
    </div>
</template>
  
<script>
import MenuView from '../views/MenuView.vue'
import api from '../api'

export default {
    name: 'DraggableDiv',
    data: function () {

        return {
            positions: {
                clientX: undefined,
                clientY: undefined,
                movementX: 0,
                movementY: 0
            },
            activefocused: false,
            z: 1
        }
    },
    components: {
        'MenuView': MenuView
    },
    props: {
        menudata: {
            type: Object,
            required: true
        }
    },
    mounted() {
        if (this.menudata?.config?.draggable == false) {
            this.$refs.draggableContainer.style.top = this.menudata.config.top || '50%'
            this.$refs.draggableContainer.style.left = this.menudata.config.left || '50%'
        } else {
            this.$refs.draggableContainer.style.top = localStorage.getItem(this.menudata.menuid + 'Top') || this.menudata.config.top || '50%'
            this.$refs.draggableContainer.style.left = localStorage.getItem(this.menudata.menuid + 'Left') || this.menudata.config.left || '50%'
        }

        // Set the dimensions of the menu container
        // this.$refs.draggableContainer.style.width = this.menudata.config.width || '600px'
        this.$refs.draggableContainer.style.height = this.menudata.config.height || ''
    },
    watch: {
        // 'menudata.config.width': function (data) {
        //     this.$refs.draggableContainer.style.width = data || '600px'
        // },
        'menudata.config.height': function (data) {
            this.$refs.draggableContainer.style.height = data || ''
        },
        'positions.clientX': function () {
            localStorage.setItem(this.menudata.menuid + 'Top', this.$refs.draggableContainer.style.top)
        },
        'positions.clientY': function () {
            localStorage.setItem(this.menudata.menuid + 'Left', this.$refs.draggableContainer.style.left)
        },
        'activefocused': function (data) {
            if (data === this.menudata.menuid) {
                this.$refs.draggableContainer.style['z-index'] = '99'
            } else {
                this.$refs.draggableContainer.style['z-index'] = '94'
            }
        },
    },
    computed: {
    },
    methods: {
        handleClosed: function () {
            api.post("onClose", {
                menuid: this.menudata.menuid
            }).catch(e => {
                console.log(e.message)
            });
        },
        dragMouseDown: function (event) {
            event.preventDefault()

            if (!(this.menudata.config.draggable == false)) {
                // get the mouse cursor position at startup:
                this.positions.clientX = event.clientX
                this.positions.clientY = event.clientY
                document.onmousemove = this.elementDrag
                document.onmouseup = this.closeDragElement
            }
        },
        dragMouseDownFocus: function () {
            this.activefocused = this.menudata.menuid
        },
        elementDrag: function (event) {
            event.preventDefault()
            this.positions.movementX = this.positions.clientX - event.clientX
            this.positions.movementY = this.positions.clientY - event.clientY
            this.positions.clientX = event.clientX
            this.positions.clientY = event.clientY
            // set the element's new position:

            this.$refs.draggableContainer.style['z-index'] = '99'
            this.$refs.draggableContainer.style.top = (this.$refs.draggableContainer.offsetTop - this.positions.movementY) + 'px'
            this.$refs.draggableContainer.style.left = (this.$refs.draggableContainer.offsetLeft - this.positions.movementX) + 'px'
        },
        closeDragElement() {
            document.onmouseup = null
            document.onmousemove = null

            // this.$refs.draggableContainer.style['z-index'] = '99'
            this.z++

        }
    }
}
</script>
  
<style>
#draggable-container {
    position: absolute;
    transition: width 0.04s ease, height 0.04s ease;
    touch-action: none;
}

#draggable-header {
    /* z-index: 10; */
}

/* Resolution support */

/* 720p */
@media only screen and (min-width: 1280) {
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