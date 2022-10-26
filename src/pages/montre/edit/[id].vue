<script setup lang="ts">
import FormMontre from "../../../components/FormMontre.vue";
defineProps<{
    id: string;
}>();
</script>
<template>
    <FormMontre :id="id" />
</template>
