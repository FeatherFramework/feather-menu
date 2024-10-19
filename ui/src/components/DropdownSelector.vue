<template>
  <div class="dropdown">
    <div
      @click="toggleDropdown"
      :tabindex="0"
      class="dropdown-button"
      :style="dropdownStyle"
    >
      {{ selectedOption ? selectedOption : placeholder }}
    </div>
    <ul v-if="isOpen" class="dropdown-menu">
      <li
        v-for="(option, index) in options"
        :key="option.value"
        @click="selectOption(option)"
        :tabindex="index + 1"
        class="dropdown-button"
        :style="optionStyle"
      >
        {{ option.text }}
      </li>
    </ul>
  </div>
</template>

<script setup>
import { ref } from "vue";
import api from "../api";

const props = defineProps({
  element: {
    type: Object,
    required: true,
  },
  options: {
    type: Array,
    required: true,
  },
  modelValue: {
    type: [String, Number],
    default: null,
  },
  placeholder: {
    type: String,
    default: "Select an option",
  },
  dropdownStyle: {
    type: String,
    default: "",
  },
  optionStyle: {
    type: String,
    default: "",
  },
});

const isOpen = ref(false);
const selectedOption = ref(null);
const timer = ref(null)

const toggleDropdown = () => {
  isOpen.value = !isOpen.value;
};

const selectOption = (option) => {
  selectedOption.value = option.text;
  isOpen.value = false;

  if (props.element.hasCallback == true) {
    if (timer.value) clearTimeout(timer.value);

    timer.value = setTimeout(() => {
      api
        .post("onCallback", {
          ...props.element,
          value: option.value || "",
        })
        .catch((e) => {
          console.log(e.message);
        });
    }, 500);
  }
};

// Set the initial selected option based on the modelValue
if (props.modelValue !== null) {
  const initialOption = props.options.find(
    (opt) => opt.value === props.modelValue
  );
  if (initialOption) {
    selectedOption.value = initialOption.text;
  }
}
</script>

<style scoped>
.dropdown {
  position: relative;
  display: inline-block;
  width: 100%;
}

.dropdown-menu {
  position: absolute;
  top: 100%;
  left: 0;
  z-index: 1000;
  display: block;
  float: left;
  min-width: 100%;
  padding: 0;
  margin: 2px 0 0;
  font-size: 20px;
  text-align: center;
  list-style: none;
  box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
}

.dropdown-button {
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
  transition: all 0.08s;
}

.dropdown-button .selected,
.dropdown-button:hover,
.dropdown-button:focus {
  outline: none;
  background-image: url(../assets/selsected.png),
    url(../assets/selection_box_bg.png);
  background-repeat: no-repeat;
  background-position: center;
  background-size: 100% 100%;
  transition: all 0.08s;
}
</style>
