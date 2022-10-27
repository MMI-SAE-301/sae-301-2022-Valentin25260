<script setup lang="ts">
import type { Montre } from "../types";
import ListeMontre from "../components/ListeMontre.vue";

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
        <div class="flex">
            <h1 class="text-4xl font-medium mt-32 ml-96">
                VOS<br>
                MODELES
            </h1>
        </div>

        <div class=" flex gap-40 justify-center mt-30">
            <div class="w-64">
                <ListeMontre />
            </div>
        </div>
    </section>
</template>