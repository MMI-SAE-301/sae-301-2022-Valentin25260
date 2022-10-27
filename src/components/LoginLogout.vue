<script setup lang="ts">
import { supabase, user } from '../supabase';
import { useRouter } from "vue-router";
import LoginButton from './LoginButton.vue';

const router = useRouter();
async function loginG() {
    supabase.auth.signIn({ provider: 'google' }, /*{ redirectTo: }*/)
}
async function loginF() {
    supabase.auth.signIn({ provider: 'facebook' })
}
</script>
<template>
    <div class="mt-36 flex items-center justify-center gap-12">
        <LoginButton :logo="'public/images/Google.png'" :name="'Google'" @click="loginG" />
        <LoginButton :logo="'public/images/facebook.png'" :name="'Facebook'" @click="loginF" />
        <button class="border-2 mb-6 bg-brun2 text-noir2 p-2 rounded-full lg:text-lg" v-if="user"
            @pointerdown="supabase.auth.signOut()">
            Se déconnecter ({{ user.email }})
        </button>
    </div>
</template>
