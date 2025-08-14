<template>
    <div></div>
</template>
<script setup>
import api from "../api";

import { toast } from "vue3-toastify";
import "vue3-toastify/dist/index.css";

const queueNoty = (id, noty) => {
    let opened = false, closed = false
    toast(noty.message, {
        type: noty?.type ?? "default", //info, success, warning, error, default
        hideProgressBar: noty?.hideProgressBar ?? false,
        rtl: noty?.rtl ?? false,
        transition: noty?.transition ?? "zoom", //bounce, flip, slide, zoom
        autoClose: noty?.autoClose ?? 3000,
        position: noty?.position ?? 'top-right', //top-left top-center top-right bottom-left bottom-center bottom-right
    toastStyle: {zIndex: "100001", // ensure it stacks above the menu
      ...noty.toastStyle
    },
        style: noty?.style ?? null,
        progressStyle: noty?.progressStyle ?? null,
        icon: noty?.icon ?? false, // can copy/paste emoji here. Or set to true for default icons.
        pauseOnHover: false,
        pauseOnFocusLoss: false,
        theme: "dark",
        closeButton: false,
        closeOnClick: false,
        onOpen: () => {
            if (opened == false) {
                api.post("onAlertAction", {
                    type: 'opened',
                    id: id
                }).catch(e => {
                    console.log(e.message)
                });
                opened = true
            }
        },
        onClose: () => {
            if (closed == false) {
                api.post("onAlertAction", {
                    type: 'closed',
                    id: id
                }).catch(e => {
                    console.log(e.message)
                });
                closed = true
            }
        }
    })
}

// Expost the helpers above so that the parent can utilize them.
defineExpose({
    queueNoty
});

</script>