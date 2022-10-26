<script setup lang="ts">
import {ref} from "vue"
const props = defineProps(["logo", "name"]);
</script>

<template>
    <button class="flex justify-between items-center w-[539px] relative px-8 py-5 bg-white">
        <img :src="logo" alt="Logo de l'authentification par un tierce">
        <p class="flex-grow-0 flex-shrink-0 text-xl text-left uppercase text-black font-poppins">
            Se connecter avec {{name}}
        </p>
    </button>
</template>