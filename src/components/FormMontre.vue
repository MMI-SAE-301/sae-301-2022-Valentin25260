<script setup lang="ts">
import type { Montre } from "@/types"
import { ref } from "vue";
import { useRouter } from "vue-router";
import SvgProfil from "./MontreProfil.vue";
import FormKitListColors from "./FormKitListColors.vue";
import { supabase } from "@/supabase";

const props = defineProps(["id", "data"]);
const montre = ref<Montre>(props.data ?? {});
const router = useRouter();
if (props.id) {
    // On charge les données de la table Montre
    let { data, error } = await supabase
        .from("montre")
        .select("*")
        .eq("montre_id", props.id);
    if (error || !data)
        console.log("n'a pas pu charger la table Montre :", error);
    else montre.value = data[0];
}

async function upsertMontre(dataForm, node) {
    const { data, error } = await supabase.from("montre").upsert(dataForm);
    if (error) node.setErrors([error.message]);
    else {
        node.setErrors([]);
        router.push({ name: "montre-edit-id", params: { id: data[0].montre_id } });
    }
}


</script>

<template>
    <div class="p-2">
        <ul class="flex gap-1">
            <li><a href="#profil">Profil</a></li>
        </ul>
        <div class="carousel w-64">
            <SvgProfil class="carousel-item w-64" v-bind="montre" id="profil" />
        </div>

        <FormKit type="form" v-model="montre" @submit="upsertMontre">
            <FormKitListColors name="cadran" label="cadran" />
            <FormKitListColors name="bracelet" label="bracelet" />
            <FormKitListColors name="ecran" label="ecran" />
        </FormKit>
    </div>
</template>