<script setup lang="ts">
import LoginLogout from '@/components/LoginLogout.vue'
</script>

<template>
    <div class="grid grid-cols-10 gap-[30px] row-auto lg:grid-cols-8 pb-96">
        <div class="font-poppins col-span-2 mt-32 col-start-2">
            <h1 class="text-5xl font-medium ">
                CONNECTEZ-VOUS.
            </h1>
        </div>
        <LoginLogout />
    </div>
</template>