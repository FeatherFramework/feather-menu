<template>
    <div v-for="(pg, index) in menus" :key="'PAGE' + index + pg.page.namespace">
        <Draggable :focused="focused" :pg="pg" v-if="pg.visible">
            <vMenus :pd="pg" :focused="focused"></vMenus>
        </Draggable>
    </div>
</template>
<script>
import api from "./api";
import vMenus from "./views/Menu.vue"
import Draggable from './components/Draggable.vue'

export default {
    name: 'DefaultLayout',
    data() {
        return {
            devmode: true,
            menus: undefined,
            focused: null,
            controlpress: null,
            mlistener: null
        }
    },
    components: {
        vMenus, Draggable
    },
    mounted() {
        this.mlistener = window.addEventListener("message", this.onMessage);

        if (this.devmode) {
            api.post("triggerdummy").catch(e => {
                console.log(e.message)
            });
        }
    },
    unmounted() {
        // Remove listeners when UI is destroyed to save on memory
        if(this.mlistener) window.removeEventListener("message");
    },
    methods: {
        refreshColumns(id) {
            if (this.menus[id]?.page?.data?.elements) {
                let columns_temp = [...this.menus[id].page.data.elements];
                this.menus = undefined
                this.$nextTick(() => {
                    this.menus[id].page.data.elements = [...columns_temp];
                });
            }
        },
        onMessage(event) {
            switch (event.data.action) {
                case "open":
                    this.openPage(event)
                    break;
                case "close":
                    this.closePage(event)
                    break;
                case "controlPressed":
                    this.controllerButtonPressed(event)
                    break;
                default:
                    break;
            }
        },
        getKey(type, ns, name) {
            return type + ns + name
        },
        controllerButtonPressed() {
            // this.controlpress = null
            // console.log(event.data.control)
            // if (event.data.control) {
            //     this.controlpress = event.data.control
            // }
        },
        openPage(event) {
            if (!this.menus) this.menus = {}
            // if (!this.menus[event.data.namespace]) {
            // menus.vorptest.pages

            this.menus[event.data.namespace] = {
                page: {},
                visible: true
            }
            // }
            this.menus[event.data.namespace].page = {
                namespace: event.data.namespace,
                type: event.data.type,
                name: event.data.name,
                data: { ...event.data.data },
                key: this.getKey(event.data.type, event.data.namespace, event.data.name)
            }
        },
        closeExterPage(type, namespace, name) {
            api.post("onclose", {
                type: type,
                namespace: namespace,
                name: name
            }).catch(e => {
                console.log(e.message)
            });
            this.menus[namespace].visible = false
        },
        closePage(event) {
            this.menus[event.data.namespace].visible = false
        }
    }
}
</script>
<style lang="scss">
@font-face {
    font-family: rdr;
    src: url(assets/fonts/rdrlino-regular-webfont.woff);
}


#app {
    font-family: rdr, Avenir, Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: center;
    color: #fff;
    overflow: hidden;
    user-select: none;
}

html,
body {
    overflow: hidden;
}

/* width */
::-webkit-scrollbar {
    width: 2px;
}

/* Track */
::-webkit-scrollbar-track {
    background: #000000;
}

/* Handle */
::-webkit-scrollbar-thumb {
    background: rgb(124, 45, 45);
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
    background: rgb(170, 74, 74);
}

.vorp-button {
    width: 84%;
	
	display: block;
	padding: 10px 15px;
	font-size: 20px;
	text-align: center;
	
    margin: 0 auto;
    margin-top: 6px;

	background-image: url(assets/selection_box_bg.png);
	background-repeat: no-repeat;
	background-position: center;
	background-size: 100% 110%;
    transition: all .08s;
}

.vorp-button .selected, .vorp-button:hover {
    background-image: url(assets/selsected.png), url(assets/selection_box_bg.png);
	background-repeat: no-repeat;
	background-position: center;
	background-size: 100% 100%;
    transition: all .08s;
}


/* component style */
.vue-slider-disabled {
    opacity: 0.5;
    cursor: not-allowed;
}

/* rail style */
.vue-slider-rail {
    background-color: #ccc;
    border-radius: 15px;
    height: 15px;
}

/* process style */
.vue-slider-process {
    background-color: #c90707;
    border-radius: 15px;
}

/* mark style */
.vue-slider-mark {
    z-index: 4;
}

.vue-slider-mark:first-child .vue-slider-mark-step,
.vue-slider-mark:last-child .vue-slider-mark-step {
    display: none;
}

.vue-slider-mark-step {
    width: 100%;
    height: 100%;
    border-radius: 50%;
    background-color: rgba(0, 0, 0, 0.16);
}

.vue-slider-mark-label {
    font-size: 14px;
    white-space: nowrap;
}

/* dot style */
.vue-slider-dot-handle {
    cursor: pointer;
    width: 100%;
    height: 100%;
    vertical-align: middle;
    border-radius: 50%;
    background-color: #fff;
    box-sizing: border-box;
    box-shadow: 0.5px 0.5px 2px 1px rgba(0, 0, 0, 0.32);
    transform: scale(1.5);
}

.vue-slider-dot-handle-focus {
    box-shadow: 0px 0px 1px 2px rgba(206, 206, 206, 0.36);
}

.vue-slider-dot-handle-disabled {
    cursor: not-allowed;
    background-color: #ccc;
}

.vue-slider-dot-tooltip-inner {
    font-size: 14px;
    white-space: nowrap;
    padding: 2px 5px;
    min-width: 20px;
    text-align: center;
    color: #fff;
    border-radius: 5px;
    border-color: #c90707;
    background-color: #c90707;
    box-sizing: content-box;
}

.vue-slider-dot-tooltip-inner::after {
    content: "";
    position: absolute;
}

.vue-slider-dot-tooltip-inner-top::after {
    top: 100%;
    left: 50%;
    transform: translate(-50%, 0);
    height: 0;
    width: 0;
    border-color: transparent;
    border-style: solid;
    border-width: 5px;
    border-top-color: inherit;
}

.vue-slider-dot-tooltip-inner-bottom::after {
    bottom: 100%;
    left: 50%;
    transform: translate(-50%, 0);
    height: 0;
    width: 0;
    border-color: transparent;
    border-style: solid;
    border-width: 5px;
    border-bottom-color: inherit;
}

.vue-slider-dot-tooltip-inner-left::after {
    left: 100%;
    top: 50%;
    transform: translate(0, -50%);
    height: 0;
    width: 0;
    border-color: transparent;
    border-style: solid;
    border-width: 5px;
    border-left-color: inherit;
}

.vue-slider-dot-tooltip-inner-right::after {
    right: 100%;
    top: 50%;
    transform: translate(0, -50%);
    height: 0;
    width: 0;
    border-color: transparent;
    border-style: solid;
    border-width: 5px;
    border-right-color: inherit;
}

.vue-slider-dot-tooltip-wrapper {
    opacity: 0;
    transition: all 0.3s;
}

.vue-slider-dot-tooltip-wrapper-show {
    opacity: 1;
}

</style>
