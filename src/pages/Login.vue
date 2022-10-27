<script setup lang="ts">

import LoginLogout from '@/components/LoginLogout.vue'
</script>

<template>
    <main class="dark:bg-black">
        <div class="text-center mt-40">
            <h1 class="text-3xl font-semibold font-roboto text-blanctext dark:text-white">CONNECTEZ-VOUS</h1>

            <p class="mt-12 text-xl dark:text-white"> Si vous souhaitez pouvoir enregistrer des modèles de montres <br>
                et pouvoir les
                revoirs la
                prochaine fois sur le site vous devez possèder un compte TIK TAK.</p>
        </div>
        <LoginLogout />
    </main>
</template>