<template>
  <div class="">
    <nav class="shadow-xl">
      <div class="relative bg-noirfond">
        <div class="mx-auto max-w-7xl px-4 sm:px-6">
          <div class="flex items-center justify-between  py-6 md:justify-start md:space-x-10">
            <div class="flex justify-start lg:w-0 lg:flex-1">
              <a href="/">
                <router-link to="/">
                  <img src="../public/logo.png" alt="logo" class="w-40">
                </router-link>
              </a>
            </div>
            <div class="-my-2 -mr-2 md:hidden">
              <button type="button"
                class="inline-flex items-center justify-center rounded-md bg-grey p-2 text-gray-400 hover:bg-gray-100 hover:text-gray-500 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-500"
                aria-expanded="false">
                <span class="sr-only">Open menu</span>
                <!-- Heroicon name: outline/bars-3 -->
                <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                  stroke-width="1.5" stroke="currentColor" aria-hidden="true">
                  <path stroke-linecap="round" stroke-linejoin="round"
                    d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5" />
                </svg>
              </button>
            </div>
            <nav class="hidden space-x-20 md:flex">

              <a href="persona" class="text-2xl font-Rubik">Personnaliser</a>
              <a href="modele" class="text-2xl font-Rubik">Vos modèles</a>
              <a href="Login" class="text-2xl font-Rubik">Compte</a>
            </nav>
          </div>
        </div>
      </div>
    </nav>
  </div>


  <Suspense>
    <router-view class="" />
  </Suspense>

  <footer class="text-black" style="background-color: #f1f1f1;">
    <div class="container pt-9 mt-40 ml-10 ">
      <div class="flex justify-between  mb-9">
        <div class="">
          <a href="/">
            <router-link to="/">
              <img src="../public/logo.png" alt="logo" class="w-40">
            </router-link>
          </a>
        </div>
        <div class="flex gap-10 mt-3">
          <p>ACCUEIL</p>
          <p>VOS MEDELES</p>
          <p>PERSONNALISATION</p>
          <p>COMPTE</p>
        </div>
      </div>
    </div>

    <div class="text-center text-gray-700 p-2" style="background-color: rgba(0, 0, 0, 0.2);">
      SAE 301
      <a class="text-gray-800" href="https://tailwind-elements.com/">Tholomier Valentin</a>
    </div>
  </footer>
</template>





<script setup lang="ts">
import { Bars3Icon } from "@heroicons/vue/20/solid";
</script>
