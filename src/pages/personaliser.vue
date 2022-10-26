<script setup lang="ts">
import type { Montre } from "../types";
import FormMontre from "../components/FormMontre.vue";

const exemples: Montre[] = [{
    cadran: "#FF0000",
    ecran: "#FF0000",
    bracelet: "#FF0000",
},
{
    cadran: "#FF0600",
    ecran: "#FF0500",
    bracelet: "#FF4000",

}];
</script>

<template>
    <section>
        <FormMontre />
    </section>
</template>
