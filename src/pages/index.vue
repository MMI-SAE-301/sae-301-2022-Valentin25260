<script setup lang="ts">
import Boutton from "@/components/boutton.vue";
</script>

<template>
  <div class=" flex gap-40 justify-center mt-30 ">
    <div class="font-poppins col-span-2 ml-36 mt-40 col-start-2">
      <h1 class="text-4xl font-medium ">
        PERSONNALISE<br>
        TA MONTRE CONNECTÉE.
      </h1>
      <h2 class="font-light text-xl mt-12">SIMPLICITÉ FACILITÉ RAPIDITÉ</h2>

      <p class="mt-10">
        Extrêmement léger, le boîtier en aluminium est constitué <br>
        d’un alliage de qualité aérospatiale 100 % recyclé.
        <br><br>
        Constitué d’un silicone extensible et doux, le bracelet <br>
        Boucle unique est conçu pour offrir un maximum de <br>
        confort,
        sans
        fermoir n’y attache.
      </p>

      <RouterLink to="/montre/new" class=" row-start-2 col-start-2 col-span-1 mt-10">
        <Boutton />
      </RouterLink>

    </div>
    <img src="../../public/montrenoir.png" alt="montre noir" class="mt-32">
  </div>

  <div class="grid grid-cols-5 w-full ">
    <img src="../../public/montrebleu.png" alt="montre bleu" class="mt-32 flex-auto ">
    <img src="../../public/montrejaune.png" alt="montre jaune" class="mt-32 flex-auto ">
    <img src="../../public/montreviolette.png" alt="montre violette" class="mt-32 flex-auto ">
    <img src="../../public/montreverte.png" alt="montre verte" class="mt-32 flex-auto ">
    <img src="../../public/montreorange.png" alt="montre orange" class="mt-32 flex-auto ">
  </div>


  <div class=" flex gap-36 justify-center items-center mt-30 ">

    <img src="../../public/montreblanche.png" alt="montre blanche" class="mt-32">

    <div class="font-poppins col-span-2  mt-40 col-start-2">
      <h1 class="text-4xl font-medium ">
        UN DESIGN<br>
        UNIQUE & ÉPURÉ
      </h1>

      <p class="mt-10">
        Un design recherché afin d’être le plus abouti possible <br>
        avec des reliefs épurés et ergonomiques.
        <br><br>
        Ce design aura pris plus d’un 1 an à notre équipe de <br>
        designers pour atteindre ce résultat final. Un modèle qui <br>
        tappera dans l’oeil dès vos amis.
      </p>
    </div>
  </div>




</template>