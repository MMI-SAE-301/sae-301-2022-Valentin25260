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
    <div class="col-span-2 col-start-5 mt-36">
        <LoginButton :logo="'public/Google.png'" :name="'Google'" @click="loginG" />
        <LoginButton :logo="'public/facebook.png'" :name="'Facebook'" @click="loginF" class="mt-9" />
    </div>
</template>  