<script setup lang="ts">
import Boutton from "@/components/Button.vue";
</script>

<template>
  <main class="dark:bg-black">
    <div class=" flex gap-40 justify-center mt-30 ">
      <div class="font-poppins col-span-2 ml-36 mt-40 col-start-2">
        <h1 class="text-4xl font-medium ">
          <span class="text-blue-400 dark:text-white">PERSONNALISE</span><br>
          <span class="dark:text-white">TA MONTRE CONNECTÉE.</span>
        </h1>
        <h2 class="font-light text-xl mt-12 text-blue-400 dark:text-white">SIMPLICITÉ FACILITÉ RAPIDITÉ</h2>

        <p class="mt-10 dark:text-white">
          Extrêmement léger, le boîtier en aluminium est constitué <br>
          d’un alliage de qualité aérospatiale 100 % recyclé.
          <br><br>
          Constitué d’un silicone extensible et doux, le bracelet <br>
          Boucle unique est conçu pour offrir un maximum de <br>
          confort,
          sans
          fermoir n’y attache.
        </p>

        <RouterLink to="personaliser" class=" row-start-2 col-start-2 col-span-1 mt-10">
          <div class="flex justify-center items-center relative gap-2.5  mt-10 w-80">
            <Boutton name="PERSONNALISER" />
          </div>
        </RouterLink>

      </div>
      <img src="../../public/images/montrenoir.png" alt="montre noir" class="mt-32">
    </div>

    <div class="grid grid-cols-5 ">
      <img src="../../public/images/montrebleu.png" alt="montre bleu" class="mt-32 flex-auto w-full ">
      <img src="../../public/images/montrejaune.png" alt="montre jaune" class="mt-32 flex-auto w-full ">
      <img src="../../public/images/montreviolette.png" alt="montre violette" class="mt-32 flex-auto w-full ">
      <img src="../../public/images/montreverte.png" alt="montre verte" class="mt-32 flex-auto w-full ">
      <img src="../../public/images/montreorange.png" alt="montre orange" class="mt-32 flex-auto w-full ">
    </div>

    <div class=" flex gap-36 justify-center items-center mt-30 ">

      <img src="../../public/images/montreblanche.png" alt="montre blanche" class="mt-32">

      <div class="font-poppins col-span-2  mt-40 col-start-2">
        <h1 class="text-4xl font-medium dark:text-white">
          UN DESIGN<br>
          <span class="text-blue-400 dark:text-white">UNIQUE</span> & <span
            class="text-blue-400 dark:text-white">ÉPURÉ</span>
        </h1>

        <p class="mt-10 dark:text-white">
          Un design recherché afin d’être le plus abouti possible <br>
          avec des reliefs épurés et ergonomiques.
          <br><br>
          Ce design aura pris plus d’un 1 an à notre équipe de <br>
          designers pour atteindre ce résultat final. Un modèle qui <br>
          tappera dans l’oeil dès vos amis.
        </p>
      </div>
    </div>
  </main>
</template>
