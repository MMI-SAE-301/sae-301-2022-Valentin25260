<script setup lang="ts">
import { supabase } from "@/supabase";
import MontreProfil from "./MontreProfil.vue";
const props = defineProps<{
    max?: number;
}>();
let { data: Montres, error } = await supabase
    .from("montre")
    .select("*")
    .limit(props.max ?? 100)
if (error) {
    console.log("n'a pas pu récupérer les montres", { error });
}
</script>

<template>
    <div class="">
        <ul class="grid grid-cols-2 gap-20">
            <li v-for="montre in Montres" :key="montre.id_montre">
                <router-link :to="{ name: 'montre-edit-id', params: { id: montre.montre_id } }">
                    <MontreProfil class="w-64 " v-bind="montre" />
                </router-link>
            </li>
        </ul>
    </div>
</template>