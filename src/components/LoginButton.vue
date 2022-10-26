<script setup lang="ts">
import { ref } from "vue"
const props = defineProps(["logo", "name"]);
</script>

<template>
    <button class="flex justify-between items-center border-4 p-3 gap-4">
        <img :src="logo" alt="Logo de l'authentification par un tierce">
        <p class="font-rubik-bold text-black">
            Se connecter avec {{ name }}
        </p>
    </button>
</template>