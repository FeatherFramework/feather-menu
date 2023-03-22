<template>
    <div v-if="element" :tabindex="index" class="select-button" :style="element.style || ''">
        <div>
            {{ element.label }}
        </div>

        <div class="selector-controls">
            <input type="text" v-model="value" :placeholder="element.placeholder">

        </div>
    </div>
</template>
  
<script>
import api from "../api";

export default {
    name: 'VInput',
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
            value: '',
            timer: null
        }
    },
    mounted() {
    },
    watch: {
        value(data) {
            clearTimeout(this.timer);

            this.timer = setTimeout(() => {
                this.emitChange(data)
            }, 1500);
        }
    },
    methods: {
        async emitChange(data) {
            api.post("onchange", {
                type: this.pd.page.type,
                namespace: this.pd.page.namespace,
                name: this.pd.page.name,
                action: 'input',
                index: this.index + 1,
                value: data || '',
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

.selector-control {
    /* flex: 1; */
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

input[type=text] {
    width: 100%;
    padding: 6px 10px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 3px solid #ccc;
    border-radius: 4px;
    background-color: #ccc;
    color: #413f3f;
    transition: all 0.3s;
    font-weight: 600;
}

input[type=text]::placeholder {
    font-weight: 600;
    /* opacity: 0.5; */
    color: #413f3f;
}


input[type=text]:focus {
    border: 3px solid #c90707;
    outline: none;
}
</style>