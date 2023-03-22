<template>
    <div id="page-wrap" :style="pd?.page?.data?.config?.style">
        <div class="close" @click="closeApp"
            :ref="`focus-${minikey}-${pd.page.data.elements ? pd.page.data.elements.length + 1 : 0}`">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="20px" fill="white"><path d="M20 6.91L17.09 4L12 9.09L6.91 4L4 6.91L9.09 12L4 17.09L6.91 20L12 14.91L17.09 20L20 17.09L14.91 12L20 6.91Z" /></svg>
        </div>


        <div class="page-content" v-for="(element, index) in pd.page.data.elements"
            :key="'elements' + pd.page.namespace + index">
            <AllComponents :element="element" :index="index" :pd="pd" :source="'menu'"></AllComponents>
            <VPaginate v-if="element.type == 'paginated'" :element="element" :pd="pd" ></VPaginate>
        </div>
    </div>
</template>


<!-- Use refs 0->number. then page through -->

<script>
// import api from "../api";
import AllComponents from '../components/AllComponents.vue'
import Paginate from '../components/Paginate.vue'

export default {
    name: 'MenuComp',
    data() {
        return {
            currentPosition: 0,
            currentLength: 0,
            controlpress: null
        }
    },
    props: {
        pd: {
            type: Object,
            required: true
        },
        focused: {
            required: true
        }
    },
    components: {
        'AllComponents': AllComponents,
        'VPaginate': Paginate
    },
    mounted() {
        // window.addEventListener("message", this.onMessage);
    },
    unmounted() {
        // Remove listeners when UI is destroyed to save on memory
        // window.removeEventListener("message");
    },
    computed: {
        minikey() {
            return this.pd.page.type + this.pd.page.namespace
        },
        getKey() {
            return this.pd.page.type + this.pd.page.namespace + this.pd.page.name
        },
    },
    watch: {
        'pd.page.data'(data) {
            let elem = data.elements

            this.currentPosition = 0
            this.currentLength = elem.length
        },
        currentItem: {
            handler(value, oldValue) {
                if (value !== oldValue) {
                    this.focusInput(value);
                }
            },
            immediate: true
        },
        // controlpress(data) {
        //     if (this.focused === this.getKey) {
        //         // console.log('Control Pressed', data)
        //         this.changeFocusInput(data)
        //     }
        // }
    },
    methods: {

        onMessage(event) {
            switch (event.data.action) {
                case "controlPressed":
                    this.controllerButtonPressed(event)
                    break;
                default:
                    break;
            }
        },
        controllerButtonPressed(event) {
            this.controlpress = null
            if (event.data.control && this.focused === this.getKey) {
                this.controlpress = event.data.control
                this.changeFocusInput(event.data.control)
            }
        },
        closeApp() {
            this.$parent.$parent.closeExterPage(this.pd.page.type, this.pd.page.namespace, this.pd.page.name)
        },
        getInput(id) {
            const input = this.$refs[`focus-${this.minikey}-${id}`];
            return input;
        },
        changeFocusInput(control) {
            if (this.pd?.page?.data?.elements) {
                this.currentLength = this.pd.page?.data.elements.length
            }

            let pos = this.currentPosition;

            switch (control) {
                case 'UP':
                    pos -= 1;
                    break;
                case 'DOWN':
                    pos += 1;
                    break;
                default:
                    break;
            }
            if (pos < this.currentLength && pos >= 0) {
                this.currentPosition = pos;
            }
        },
        focusInput() {
            // const input = this.getInput(id);
            // console.log(input)

            // if (input) {
            //     // this.$nextTick(() => {
            //     //     const editButtonRef = this.$refs.editButton;
            //     //     input.focus();
            //     // });

            //     input.focus();
            //     input.tabindex = 0
            // }
        },
    }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
#page-wrap {
    min-width: 510px;
    background-image: url(../assets/inkroller.png);
    background-repeat: no-repeat;
    background-position: center;
    background-size: 100% 100%;
    border-radius: 6px;
    padding: 20px;
    position: relative;
}

.close {
    position: absolute;
    right: 20px;
    top: 10px;
    user-select: none;
}

.close svg {
    fill: #ffffff;
    transition: all .3s;
}

.close:hover svg {
    fill: #c90707;
    transition: all .3s;
}

// Controller/Keyboard Support
.activeelement {
    // background-color: yellow;
}
</style>
