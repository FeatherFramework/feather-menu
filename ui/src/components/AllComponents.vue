<template>
    <VHeader v-if="element.type === 'header'" :element="element" @mousedown="handleDrag">
        {{ element.label }} {{ source === 'menu' }}
    </VHeader>
    <VSubHeader v-if="element.type === 'subheader'" :element="element">
        {{ element.label }}
    </VSubHeader>
    <Vline v-if="element.type === 'line'" :element="element"></Vline>
    <VBottomLine v-if="element.type === 'bottomline'" :element="element"></VBottomLine>
    <VButton :element="element" :index="index" :pd="pd" v-if="element.type === 'button'"></VButton>
    <VTextDisplay :element="element" :pd="pd" v-if="element.type === 'textdisplay'"></VTextDisplay>
    <VCustomHTML :element="element" :pd="pd" v-if="element.type === 'html'"></VCustomHTML>
    <VArrowSelect :element="element" :index="index" :pd="pd" v-if="element.type === 'arrowselect'"></VArrowSelect>
    <VToggle :element="element" :index="index" :pd="pd" v-if="element.type === 'toggle'"></VToggle>
    <VSlider :element="element" :index="index" :pd="pd" v-if="element.type === 'slider'"></VSlider>
    <VInput :element="element" :index="index" :pd="pd" v-if="element.type === 'input'"></VInput>
</template>
  
<script>
import Button from "./Button.vue"
import Display from "./TextDisplay.vue"
import Header from './Header.vue'
import SubHeader from './SuberHeader.vue'
import Line from './Line.vue'
import BottomLine from './BottomLine.vue'
import CustomHTML from "./CustomHTML.vue"
import ArrowSelector from "./ArrowSelector.vue"
import Toggle from "./Toggle.vue"
import Slider from './Slider.vue'
import Input from './Input.vue'

export default {
    name: 'AllComponents',
    props: {
        element: {
            type: Object,
            required: true
        },
        pd: {
            type: Object,
            required: true
        },
        index: {
            type: Number,
            required: true
        },
        source: {
            type: String,
            required: false,
            default: 'component'
        },
    },
    components: {
        'VButton': Button,
        'VTextDisplay': Display,
        'VHeader': Header,
        'VSubHeader': SubHeader,
        'Vline': Line,
        'VBottomLine': BottomLine,
        'VCustomHTML': CustomHTML,
        'VArrowSelect': ArrowSelector,
        'VToggle': Toggle,
        'VSlider': Slider,
        'VInput': Input
    },
    methods: {
        handleDrag(event) {
            if(this.source === 'menu') this.$parent.$parent.dragMouseDown(event)
        }
    }
}
</script>
<style scoped></style>