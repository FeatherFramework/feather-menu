<template>
    <div v-if="element" :tabindex="index" class="select-button" :style="element.style || ''">
        <div>
            {{ element.label }}
        </div>

        <div class="selector-controls">
            <vue-slider class="slider" v-model="current" :min="element.min || 0" :max="element.max || 100" :interval="element.steps || 1" @drag-end="handleEnd"/>
        </div>
    </div>
</template>
  
<script>
import api from "../api";
import VueSlider from 'vue-slider-component'

export default {
    name: 'VSlider',
    props: {
        element: {
            type: Object,
            required: true
        },
        index: {
            type: Number,
            required: true
        },
        pd: {
            type: Object,
            required: true
        }
    },
    data() {
        return {
            current: null
        }
    },
    mounted() {
        this.current = this.element.start ? this.element.start : false
    },
    components: {
        VueSlider,
    },
    watch: {
        // current(data) {
        //     this.emitChange(data)
        // }
    },
    methods: {
        handleEnd() {
            this.emitChange(this.current)
        },
        emitChange(data) {
            api.post("onchange", {
                type: this.pd.page.type,
                namespace: this.pd.page.namespace,
                name: this.pd.page.name,
                action: 'slider',
                index: this.index + 1,
                value: data,
                element: this.element
            }).catch(e => {
                console.log(e.message)
            });
        }
    }
}
</script>
<style scoped>

.selector-controls {
    display: flex;
    align-items: end;
    margin: 0 23px;
}

.select-button {
    width: 84%;

    display: flex;
    vertical-align: middle;
    align-items: center;
    padding: 10px 15px;
    font-size: 20px;
    text-align: center;

    margin: 0 auto;
    margin-top: 6px;

    background-image: url(../assets/selection_box_bg.png);
    background-repeat: no-repeat;
    background-position: center;
    background-size: 100% 110%;
    transition: all .08s;
}

.select-button div {
    flex: 1;
}

.slider {
    margin-bottom: 10px;
}
</style>