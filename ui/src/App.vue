<template>
  <div v-for="(registeredMenu, menuid) in RegisteredMenus" :key="'MENU' + menuid">
    <Draggable v-if="registeredMenu !== null" :menudata="registeredMenu"></Draggable>
  </div>
</template>

<script setup>
import { reactive, onMounted, onUnmounted } from "vue";
import "@/assets/styles/main.css";

import Draggable from "./components/Draggable.vue";

const RegisteredMenus = reactive({})

onMounted(() => {
  window.addEventListener("message", onMessage);
});

onUnmounted(() => {
  window.removeEventListener("message", onMessage);
});

const onMessage = (event) => {
  switch (event.data.action) {
    case "openmenu":
      RegisteredMenus[event.data.menuid] = {
        menuid: event.data.menuid,
        config: event.data.config,
        activepage: {}
      }

      break;
    case "closemenu":
      RegisteredMenus[event.data.menuid] = null
      break;
    case "topage":
      RegisteredMenus[event.data.menuid].activepage = event.data
      break;
    case "updateelement":
      RegisteredMenus[event.data.menuid].activepage.elements[event.data.elemid] = event.data.element
      break;
    default:
      break;
  }
};
</script>

<style>
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
