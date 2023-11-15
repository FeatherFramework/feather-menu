<template>
    <div class="menu-wrap" :style="menudata?.config?.style || ''">
        <div class="close" @click="closeApp">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" width="20px" fill="white">
                <path
                    d="M20 6.91L17.09 4L12 9.09L6.91 4L4 6.91L9.09 12L4 17.09L6.91 20L12 14.91L17.09 20L20 17.09L14.91 12L20 6.91Z" />
            </svg>
        </div>
        <div class="header" :style="menudata?.config?.headerslot?.style || ''">
            <div v-for="(element, index) in HeaderContent"
                :key="'headerelement' + index + menudata.activepage.pageid + menudata.activepage.menuid">
                <AllComponents :element="element" @dragged="handleDrag"></AllComponents>
            </div>
        </div>

        <div class="content" :style="menudata?.config?.contentslot?.style || ''">
            <div v-for="(element, index) in ContentContent"
                :key="'contentelement' + index + menudata.activepage.pageid + menudata.activepage.menuid">
                <AllComponents :element="element" @dragged="handleDrag"></AllComponents>
            </div>
        </div>

        <div class="footer" :style="menudata?.config?.footerslot?.style || ''">
            <div v-for="(element, index) in FooterContent"
                :key="'footerelement' + index + menudata.activepage.pageid + menudata.activepage.menuid">
                <AllComponents :element="element" @dragged="handleDrag"></AllComponents>
            </div>
        </div>
    </div>
</template>

<script setup>
import AllComponents from '@/components/AllComponents.vue';
import { computed } from 'vue';

const props = defineProps({
    menudata: {
        type: Object,
        required: true
    },
    focused: {
        required: true
    }
})

const emit = defineEmits(['dragged', 'closed'])

const closeApp = () => {
    emit('closed')
}

const handleDrag = (event) => {
    emit('dragged', event)
}

const HeaderContent = computed(() => {
    // This is null on first enact, so lets check and send nothing back so we bipass a null error.
    if (props.menudata.activepage.elements == null) {
        return []
    }

    return Object.keys(props.menudata.activepage.elements).filter((e => props.menudata.activepage.elements[e]?.data?.slot == 'header')).sort((a, b) => props.menudata.activepage.elements[a].index - props.menudata.activepage.elements[b].index).map(key => props.menudata.activepage.elements[key])
})


const FooterContent = computed(() => {
    // This is null on first enact, so lets check and send nothing back so we bipass a null error.
    if (props.menudata.activepage.elements == null) {
        return []
    }

    return Object.keys(props.menudata.activepage.elements).filter((e => props.menudata.activepage.elements[e]?.data?.slot == 'footer')).sort((a, b) => props.menudata.activepage.elements[a].index - props.menudata.activepage.elements[b].index).map(key => props.menudata.activepage.elements[key])
})

const ContentContent = computed(() => {
    // This is null on first enact, so lets check and send nothing back so we bipass a null error.
    if (props.menudata.activepage.elements == null) {
        return []
    }

    return Object.keys(props.menudata.activepage.elements).filter((e => typeof props.menudata.activepage.elements[e]?.data?.slot == "undefined")).sort((a, b) => props.menudata.activepage.elements[a].index - props.menudata.activepage.elements[b].index).map(key => props.menudata.activepage.elements[key])
})


</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
.menu-wrap {
    min-width: 510px;
    background-image: url(../assets/inkroller.png);
    background-repeat: no-repeat;
    background-position: center;
    background-size: 100% 100%;
    border-radius: 6px;
    padding: 20px;
    // overflow: hidden;
    // overflow-y: auto;
    position: relative;
}

.content {
    overflow: hidden;
    overflow-y: auto;
}

.close {
    position: absolute;
    right: 20px;
    top: 10px;
    user-select: none;
}

.close svg {
    fill: #ffffff;
    transition: all .3s;
}

.close:hover svg {
    fill: #c90707;
    transition: all .3s;
}
</style>
