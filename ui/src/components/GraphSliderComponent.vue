<template>
  <div v-if="element?.data" class="select-content" :style="element.data.style || ''">

    <div class="top">
      {{ element.data.toplabel }}
    </div>

    <div class="middle">
      <div class="left">
        {{ element.data.leftlabel }}
      </div>

      <div class="radarContainer" ref="radarContainer">
        <div class="radarChart" ref="radarChart" :tabindex="element.index" @mousedown="handleMousedown"></div>
      </div>

      <div class="right">
        {{ element.data.rightlabel }}
      </div>
    </div>

    <div class="bottom">
      {{ element.data.bottomlabel }}
    </div>
  </div>
</template>
  
<script setup>
import api from "../api";
import { onMounted, reactive, ref, watch } from 'vue'

const isDragging = ref(false);

const radarContainer = ref(null);
const radarChart = ref(null);

const output = reactive({
  x: 0,
  y: 0
});
const initiated = ref(false);
const timer = ref(null)
const posX = ref(0);
const posY = ref(0);

const props = defineProps({
  element: {
    type: Object,
    required: true
  }
})

const updateChart = () => {
  radarChart.value.style.left = posX.value - radarChart.value.offsetWidth / 2 + 'px';
  radarChart.value.style.top = posY.value - radarChart.value.offsetHeight / 2 + 'px';

  // Calculate relative position
  const relX = (posX.value - radarContainer.value.offsetWidth / 2) / ((radarContainer.value.offsetWidth - radarChart.value.offsetWidth) / 2);
  const relY = -(posY.value - radarContainer.value.offsetHeight / 2) / ((radarContainer.value.offsetHeight - radarChart.value.offsetHeight) / 2);


  // Map relative position to data range (-100 to 100)
  output.x = (relX * props.element.data.maxx).toFixed(props.element.data.precision || 1)
  output.y = (relY * props.element.data.maxy).toFixed(props.element.data.precision || 1)
}

const handleMousedown = () => {
  isDragging.value = true;
  radarChart.value.style.cursor = 'grabbing';
}

watch(() => props.element.data.value, async (value) => {
  if (value !== null && typeof value !== 'undefined') {
    const defaultRelX = value.x / props.element.data.maxx;
    const defaultRelY = value.y / props.element.data.maxy;

    // Reverse calculate relative position to actual position
    posX.value = (defaultRelX * ((radarContainer.value.offsetWidth - radarChart.value.offsetWidth) / 2)) + radarContainer.value.offsetWidth / 2;
    posY.value = -(defaultRelY * ((radarContainer.value.offsetHeight - radarChart.value.offsetHeight) / 2)) + radarContainer.value.offsetHeight / 2;
    updateChart();
  }
})

onMounted(async () => {
  if (props.element.data?.value?.x !== null && typeof props.element.data?.value?.x !== 'undefined') {
    // Reverse map default output to relative position
    const defaultRelX = props.element.data.value.x / props.element.data.maxx;
    const defaultRelY = props.element.data.value.y / props.element.data.maxy;

    // Reverse calculate relative position to actual position
    posX.value = (defaultRelX * ((radarContainer.value.offsetWidth - radarChart.value.offsetWidth) / 2)) + radarContainer.value.offsetWidth / 2;
    posY.value = -(defaultRelY * ((radarContainer.value.offsetHeight - radarChart.value.offsetHeight) / 2)) + radarContainer.value.offsetHeight / 2;
  } else {
    posX.value = radarContainer.value.offsetWidth / 2
    posY.value = radarContainer.value.offsetHeight / 2
  }

  document.addEventListener('mouseup', () => {
    if (isDragging.value) {
      isDragging.value = false;
      radarChart.value.style.cursor = 'grab';
    }
  });

  document.addEventListener('mousemove', (e) => {
    if (isDragging.value) {
      posX.value = e.clientX - radarContainer.value.getBoundingClientRect().left;
      posY.value = e.clientY - radarContainer.value.getBoundingClientRect().top;

      // Constrain within radarContainer boundaries
      posX.value = Math.max(radarChart.value.offsetWidth / 2, Math.min(radarContainer.value.offsetWidth - radarChart.value.offsetWidth / 2, posX.value));
      posY.value = Math.max(radarChart.value.offsetHeight / 2, Math.min(radarContainer.value.offsetHeight - radarChart.value.offsetHeight / 2, posY.value));

      updateChart();
    }
  });

  document.addEventListener('keydown', (e) => {
    const step = props.element.data.arrowsteps || 1; // Change this to control how much the radarChart moves with each key press
    if (document.activeElement === radarChart.value) {
      e.preventDefault()
      e.target.focus({ preventScroll: true });
      switch (e.key) {
        case 'ArrowUp':
          posY.value = Math.max(radarChart.value.offsetHeight / 2, posY.value - step);
          break;
        case 'ArrowDown':
          posY.value = Math.min(radarContainer.value.offsetHeight - radarChart.value.offsetHeight / 2, posY.value + step);
          break;
        case 'ArrowLeft':
          posX.value = Math.max(radarChart.value.offsetWidth / 2, posX.value - step);
          break;
        case 'ArrowRight':
          posX.value = Math.min(radarContainer.value.offsetWidth - radarChart.value.offsetWidth / 2, posX.value + step);
          break;
      }

      updateChart();
    }
  });

  updateChart();

  setTimeout(() => {
    initiated.value = true
  }, 250);
})

watch(output, () => {
  if (initiated.value == true) {
    if (timer.value) clearTimeout(timer.value);

    timer.value = setTimeout(() => {
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
        value: output
      }).catch(e => {
        console.log(e.message)
      });
    }, 250);
  }
})
</script>
<style scoped>
.select-content {
  width: 350px;
  height: 300px;
  margin: 0 auto;
  margin-top: 10px;
  margin-bottom: 40px;
  display: flex;
  flex-direction: column;
  align-items: center;
  align-self: center;
  justify-content: center;
}

.radarContainer {
  position: relative;
  width: 100%;
  height: 100%;
  /* border: 1px solid #ccc; */

  background-image: url(../assets/grid_1a.png);
  background-repeat: no-repeat;
  background-position: center;
  background-size: 100% 100%;
}

.select-content .top,
.select-content .bottom {
  align-self: flex-end;
  text-align: center;
  align-self: center;
  margin: 10px 0;
}

.middle {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  width: 100%;
  height: 100%;
  margin: 0 10px;
}

.select-content .left,
.select-content .right {
  flex-grow: 1;
  text-align: center;
  align-self: center;

  margin: 0 10px;
}


.radarChart {
  position: absolute;
  width: 15px;
  height: 15px;
  background-color: #fff;
  border-radius: 50%;
  cursor: grab;
}

.radarChart:focus {
  background-color: #c90707;
}
</style>