<script setup lang="ts">
import MontreProfil from "../components/MontreProfil.vue";
import type { Montre } from "../types";
import FormMontre from "../components/FormMontre.vue";
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
        <h1 class="text-2xl">Exemples de montres.</h1>
        <div class="flex gap-2">
            <div class="w-64">
                <LoginLogout />
                <FormMontre />
            </div>
            <ListeBaskets />
        </div>
    </section>
</template>

