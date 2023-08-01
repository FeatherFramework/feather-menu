<template>
    <div @click="emitButton" v-if="element" :tabindex="index" class="feather-button" :style="element.style || ''">
        {{ element.label }}
    </div>
</template>
  
<script>
import api from "../api";

export default {
    name: 'VButton',
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
    methods: {
        emitButton() {
            api.post("onchange", {
                type: this.pd.page.type,
                namespace: this.pd.page.namespace,
                name: this.pd.page.name,
                action: 'buttonclick',
                index: this.index + 1,
                element: this.element
            }).catch(e => {
                console.log(e.message)
            });
        }
    }
}
</script>
  