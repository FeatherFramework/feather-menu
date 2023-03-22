<template>
    <div ref="draggableContainer" id="draggable-container" @mousedown="dragMouseDownFocus">
        <slot></slot>
    </div>
</template>
  
<script>
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
            z: 1
        }
    },
    props: {
        pg: {
            type: Object,
            required: true
        },
        focused: {
            required: false
        }
    },
    mounted() {
        if (this.pg?.page?.data?.config?.draggable == false) {
            this.$refs.draggableContainer.style.top = this.pg.page.data.config.top || '50%'
            this.$refs.draggableContainer.style.left = this.pg.page.data.config.left || '50%'
        } else {
            this.$refs.draggableContainer.style.top = localStorage.getItem(this.minikey + 'Top') || this.pg.page.data.config.top || '50%'
            this.$refs.draggableContainer.style.left =  localStorage.getItem(this.minikey + 'Left') || this.pg.page.data.config.left || '50%'
        }

        // Set the dimensions of the menu container
        this.$refs.draggableContainer.style.width = this.pg.page.data.config.width || '600px'
        this.$refs.draggableContainer.style.height = this.pg.page.data.config.height || ''
    },
    watch: {
        'pg.page.data.config.width': function (data) {
            this.$refs.draggableContainer.style.width = data || '600px'
        },
        'pg.page.data.config.height': function (data) {
            this.$refs.draggableContainer.style.height = data || ''
        },
        'positions.clientX': function () {
            localStorage.setItem(this.minikey + 'Top', this.$refs.draggableContainer.style.top)
        },
        'positions.clientY': function () {
            localStorage.setItem(this.minikey + 'Left', this.$refs.draggableContainer.style.left)
        },
        'focused': function (data) {
            if (data === this.getKey) {
                this.$refs.draggableContainer.style['z-index'] = '99'
            } else {
                this.$refs.draggableContainer.style['z-index'] = '94'
            }
        },
    },
    computed: {
        getKey() {
            return this.pg.page.type + this.pg.page.namespace + this.pg.page.name
        },
        minikey() {
            return this.pg.page.type + this.pg.page.namespace
        }
    },
    methods: {
        dragMouseDown: function (event) {
            event.preventDefault()
            
            if (!(this.pg?.page?.data?.config.draggable == false)) {
                // get the mouse cursor position at startup:
                this.positions.clientX = event.clientX
                this.positions.clientY = event.clientY
                document.onmousemove = this.elementDrag
                document.onmouseup = this.closeDragElement
            }
        },
        dragMouseDownFocus: function () {            
            this.$parent.focused = this.getKey
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
</style>