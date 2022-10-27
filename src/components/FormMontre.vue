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

async function supprimerMontre() {
    const { data, error } = await supabase
        .from("montre")
        .delete()
        .match({ montre_id: montre.value.montre_id });
    if (error) {
        console.error(
            "Erreur à la suppression de ",
            montre.value,
            "erreur :",
            error
        );
    } else {
        router.push("/modele");
    }
}

const { data: listeMateriaux, error } = await supabase
    .from("materiaux")
    .select("*");
if (error) console.log("n'a pas pu charger la table Materiaux :", error);
// Les convertir par `map` en un tableau d'objets {value, label} pour FormKit
const optionsMateriaux = listeMateriaux?.map((materiaux) => ({
    value: materiaux.materiaux_id,
    label: materiaux.materiaux_libelle,
}));
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
                <h2 class="text-blue-400 mb-4 dark:text-white">TIK-TAK V1</h2>
                <h2 class="mb-4 dark:text-white">199 € SEULEMENT 24H</h2>

                <FormKitListColors name="cadran" label="cadran" />
                <FormKitListColors name="bracelet" label="bracelet" />
                <FormKitListColors name="ecran" label="ecran" />
                <FormKit type="select" name="materiaux_cadran" label="Matériaux Cadran" :options="optionsMateriaux" />
                <FormKit type="select" name="materiaux_bracelet" label="Matériaux Bracelet"
                    :options="optionsMateriaux" />


                <div class="flex justify-center items-center relative gap-2.5  mt-10 w-80">
                    <Boutton name="MES MODELES" />
                    <Boutton name="ENREGISTRER" />
                    <Boutton name="COMMANDER" />
                    <Boutton name="SUPPRIMER" @click="supprimerMontre()">
                    </Boutton>
                </div>
            </FormKit>
        </div>
    </div>
</template>
