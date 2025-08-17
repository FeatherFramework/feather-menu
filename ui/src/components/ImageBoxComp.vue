<template>
  <div
    v-if="element"
    class="image-box"
    :class="{ disabled }"
    :style="element.data?.style || ''"
    :tabindex="element.index"
    role="button"
    @click="onClick"
    @keydown.enter.prevent="onClick"
    @keydown.space.prevent="onClick"
    @focus="showTooltip = true"
    @blur="showTooltip = false"
    @mouseenter="showTooltip = true"
    @mouseleave="showTooltip = false"
  >
    <img :src="img" alt="icon" class="image" @error="onImgError" />
    <div v-if="imgError" class="error-overlay">⚠</div>
    <div class="box-label">{{ label }}</div>
    <div v-show="showTooltip" class="box-tooltip">{{ tooltip }}</div>
  </div>
</template>

<script setup>
import { ref, watch, onMounted } from "vue"
import api from "../api"
import placeholder from "../assets/_placeholder.png"

const props = defineProps({
  element: {
    type: Object,
    required: true,
  },
})

const emit = defineEmits(['clicked'])  // Declare the clicked event

const showTooltip = ref(false)
const imgError = ref(false)
const img = ref(placeholder)
const label = ref("")
const tooltip = ref("")
const disabled = ref(false)
const sound = ref(null)

watch(
  () => props.element?.data,
  (d) => {
    if (!d) return
    img.value = typeof d.img === "string" && d.img.length > 0 ? d.img : placeholder
    label.value = d.label ?? ""
    tooltip.value = d.tooltip ?? d.label ?? ""
    disabled.value = !!d.disabled
    sound.value = d.sound ?? null
  },
  { immediate: true }
)

const onImgError = () => {
  imgError.value = true
  console.warn("[ImageBox] failed to load:", img.value)
}

const onClick = () => {
  if (disabled.value) return

  if (sound.value?.action && sound.value?.soundset) {
    api.post("playsound", {
      action: sound.value.action,
      soundset: sound.value.soundset,
    }).catch((e) => console.error(e?.message))
  }

  emit("clicked", props.element)  // Emit the clicked event with element data
}

</script>

<style scoped>
.image-box {
  width: 110px;
  height: 110px;
  background-image: url(../assets/selection_item_box.png);
  background-size: 100% 100%;
  background-repeat: no-repeat;
  display: inline-flex;
  align-items: center;
  justify-content: center;
  margin: 5px;
  position: relative;
  cursor: pointer;
  transition: transform 0.08s;
  vertical-align: top;
  outline: none;
}
.image-box:hover,
.image-box:focus {
  background-image: url(../assets/selected_item_outline.png),
    url(../assets/selection_item_box.png);
  background-repeat: no-repeat;
  background-position: center;
  background-size: 100% 100%;
  transform: scale(1.05);
}
.image-box.disabled {
  opacity: 0.55;
  pointer-events: none;
}
.image {
  max-width: 60%;
  max-height: 60%;
  z-index: 1;
  position: relative;
}
.error-overlay {
  position: absolute;
  font-size: 20px;
  color: red;
  top: 40%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 10;
}
.box-label {
  position: absolute;
  bottom: 4px;
  right: 4px;
  background: rgba(0, 0, 0, 0.8);
  color: #fff;
  padding: 2px 6px;
  font-size: 12px;
  border-radius: 10px;
  font-weight: 700;
  z-index: 2;
}
.box-tooltip {
  position: absolute;
  top: 4px;
  left: 50%;
  transform: translateX(-50%);
  background: rgba(0, 0, 0, 0.85);
  color: #fff;
  padding: 4px 8px;
  font-size: 12px;
  border-radius: 4px;
  white-space: nowrap;
  pointer-events: none;
  z-index: 9999;
}
</style>
