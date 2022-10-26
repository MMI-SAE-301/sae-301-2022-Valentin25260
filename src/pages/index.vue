<script setup lang="ts">
import Button from "@/components/boutton.vue";
</script>

<template>
  <div class="ml-40 gap-[30px] row-auto  pb-72">
    <div class="font-poppins col-span-2 ml-36 mt-32 col-start-2">
      <h1 class="text-4xl font-medium ">
        PERSONNALISE<br>
        TA MONTRE CONNECTÉE.
      </h1>
      <p class="font-light text-xl mt-12">Lorem Ipsum is simply dummy text of the printing and typesetting industry.
        Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
        and typesetting industry.
      </p>
    </div>
    <RouterLink to="/montre/new" class="row-start-2 col-start-2 col-span-1 mt-10"><Boutton />Personnalisers</RouterLink>


    <Circles class="col-start-6 mt-16 lg:col-start-5" />
  </div>
</template>