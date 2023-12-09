<template>
    <!-- <div v-for="(element, index) in sortedActivePage" :key="'element' + index + activepage.pageid + activepage.menuid"> -->
        <HeaderComp v-if="element.type === 'header'" :element="element" @mousedown="handleDrag"></HeaderComp>
        <SuberHeaderComp v-if="element.type === 'subheader'" :element="element"></SuberHeaderComp>
        <LineComp v-if="element.type === 'line'" :element="element"></LineComp>
        <BottomLineComp v-if="element.type === 'bottomline'" :element="element"></BottomLineComp>
        <InputComp v-if="element.type === 'input'" :element="element"></InputComp>
        <TextDisplayComp v-if="element.type === 'textdisplay'" :element="element"></TextDisplayComp>
        <ButtonComp v-if="element.type === 'button'" :element="element"></ButtonComp>
        <ArrowSelectorComp v-if="element.type === 'arrows'" :element="element"></ArrowSelectorComp>
        <SliderComp v-if="element.type === 'slider'" :element="element"></SliderComp>
        <ToggleComp v-if="element.type === 'toggle'" :element="element"></ToggleComp>
        <HTMLComp v-if="element.type === 'html'" :element="element"></HTMLComp>
        <PageArrowsComp v-if="element.type === 'pagearrows'" :element="element"></PageArrowsComp>
        <TextAreaComp v-if="element.type === 'textarea'" :element="element"></TextAreaComp>
        <GraphSliderComponent v-if="element.type === 'gridslider'" :element="element"></GraphSliderComponent>
        <CheckboxComponent v-if="element.type === 'checkbox'" :element="element"></CheckboxComponent>
    <!-- </div> -->
</template>
  
<script setup>
import HeaderComp from './HeaderComp.vue';
import SuberHeaderComp from './SuberHeaderComp.vue';
import LineComp from './LineComp.vue';
import BottomLineComp from './BottomLineComp.vue'
import InputComp from './InputComp.vue';
import TextDisplayComp from './TextDisplayComp.vue';
import ButtonComp from './ButtonComp.vue'
import ArrowSelectorComp from './ArrowSelectorComp.vue';
import SliderComp from './SliderComp.vue';
import ToggleComp from './ToggleComp.vue';
import HTMLComp from './HTMLComp.vue';
import PageArrowsComp from './PageArrowsComp.vue';
import TextAreaComp from './TextAreaComp.vue';
import GraphSliderComponent from './GraphSliderComponent.vue';
import CheckboxComponent from './CheckboxComponent.vue';

const props = defineProps({
    element: {
        type: Object,
        required: true
    }
})

const emit = defineEmits(['dragged'])

const handleDrag = (event) => {
    if (props.element.data.draggable == true || typeof props.element.data.draggable == 'undefined') emit('dragged', event)
}

</script>