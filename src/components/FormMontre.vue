<script setup lang="ts">
import type { Montre } from "@/types"
import { ref } from "vue";
import { useRouter } from "vue-router";
import SvgProfil from "./MontreProfil.vue";
import FormKitListColors from "./FormKitListColors.vue";
import Boutton from "./Button.vue";
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
// @ts-ignore
async function upsertMontre(dataForm, node) {
    const { data, error } = await supabase.from("montre").upsert(dataForm);
    if (error) {
        node.setErrors([error.message]);
    } else {
        node.setErrors([]);
        router.push({ name: "montre-edit-id", params: { id: data[0].montre_id } });
    }
}
</script>

<template>
    <div class="flex">
        <h1 class="text-4xl font-medium mt-12 ml-96">
            VOS<br>
            PERSONNALISATIONS
        </h1>
    </div>

    <div class="flex gap-40 justify-center">
        <div class="font-poppins col-span-2 ml-36 col-start-2">
            <div class="carousel w-64 mt-32">
                <SvgProfil class="carousel-item w-64" v-bind="montre" id="profil" />
            </div>
        </div>
        <div class="mt-72">
            <FormKit type="form" v-model="montre" @submit="upsertMontre">
                <h2 class="text-blue-400 mb-4">TIK-TAK V1</h2>
                <h2 class="mb-4">199 € SEULEMENT 24H</h2>

                <FormKitListColors name="cadran" label="cadran" />
                <FormKitListColors name="bracelet" label="bracelet" />
                <FormKitListColors name="ecran" label="ecran" />

                <div class="flex justify-center items-center relative gap-2.5  mt-10 w-80">
                    <Boutton name="MES MODELES" />
                    <Boutton name="ENREGISTRER" />
                    <Boutton name="COMMANDER" />
                </div>
            </FormKit>
        </div>
    </div>
</template>
