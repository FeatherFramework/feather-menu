<template>
    <div :style="element.style || ''">
        <div :style="compstyle"  v-if="element.mode === 'paged'" class="page-paged">
            <div v-for="(pag, i) in filteredelements" :key="'paginated' + pd.page.namespace + i">
                <AllComponents :element="pag" :index="i" :pd="pd"></AllComponents>
            </div>
        </div>

        <div :style="compstyle"  v-if="element.mode === 'scroll'" class="page-overflow">
            <div v-for="(pag, i) in element.elements" :key="'paginated' + pd.page.namespace + i">
                <AllComponents :element="pag" :index="i" :pd="pd"></AllComponents>
            </div>
        </div>

        <VBottomLine></VBottomLine>
        <div class="pagination-controls" v-if="element.mode === 'paged'">
            <div class="page-control">
                <svg width="28pt" @click="currentpage > 1 ? currentpage-- : () => { }" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"  fill="#fff"><path d="M15.41,16.58L10.83,12L15.41,7.41L14,6L8,12L14,18L15.41,16.58Z" /></svg>
            </div>
            <div>{{ currentpage }}/{{ pagecount }}</div>
            <div class="page-control">
                <svg width="28pt" @click="currentpage < pagecount ? currentpage++ : () => { }" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="#fff"><path d="M8.59,16.58L13.17,12L8.59,7.41L10,6L16,12L10,18L8.59,16.58Z" /></svg>
            </div>
        </div>
    </div>
</template>
  
<script>
import AllComponents from '../components/AllComponents.vue'
import BottomLine from '../components/BottomLine.vue'
export default {
    name: 'VScrollable',
    props: {
        element: {
            type: Object,
            required: true
        },
        pd: {
            type: Object,
            required: true
        }
    },
    data() {
        return {
            currentpage: 1
        }
    },
    components: {
        'AllComponents': AllComponents,
        'VBottomLine': BottomLine,
    },
    methods: {
        paginate(array, page_size, page_number) {
            // human-readable page numbers usually start with 1, so we reduce 1 in the first argument
            return array.slice((page_number - 1) * page_size, page_number * page_size);
        }
    },
    computed: {
        compstyle() {
            return {
                'max-height': this.element.maxheight || '300px',
                'min-height': this.element.minheight || '300px'
            }
        },
        pagecount() {
            if (!this.element.perpage) return

            return Math.ceil( this.element.elements.length/this.element.perpage)
        },
        filteredelements() {
            return this.paginate(this.element.elements, this.element.perpage, this.currentpage)
        }
    }
}
</script>
<style scoped>
.pagination-controls {
    display: flex;
    margin: 0 23px;
}

.page-control {
    flex: 1;
}  

.page-control:first-child {
    margin-right: 4px;
} 


.page-overflow {
    overflow: hidden;
    overflow-y: auto;
}

.page-paged {
    overflow: hidden;
}

.page-control svg {
    fill: #fff;
    transition: all 0.2s ease;
}

.page-control:hover svg {
    fill: #c90707;
    transition: all 0.2s ease;
}
</style>