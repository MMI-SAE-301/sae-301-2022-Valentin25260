<script setup lang="ts">
defineProps<{
    name?: string;
}>();
</script>

<template>
    <button
        class=" px-5 py-4 bg-blue-400 flex-grow-0 text-white flex-shrink-0 text-3x1 text-center uppercase font-NeutralFace">{{
        name
        }}</button>
</template>
