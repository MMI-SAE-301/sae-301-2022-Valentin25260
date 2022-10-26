<script setup lang="ts">
import type { Montre } from "@/types";
withDefaults(defineProps<Montre>(), {
    cadran: "white",
    ecran: "white",
    bracelet: "white",
})
</script>

<template>
    <svg id="Calque_1" data-name="Calque 1" xmlns="http://www.w3.org/2000/svg"
        xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 343.4 708.4">
        <g id="bracelet">
            <path id="bracelet_long"
                d="M573.9,54.9s52.2-20.7,98.6-19.2S768.2,52,768.2,52s-29,276.8-26.1,356.7,27.5,313.8,27.5,313.8-47.8,22.2-92.8,19.2-97.1-17.8-97.1-17.8,23.9-244.2,23.9-340.4S573.9,54.9,573.9,54.9Z"
                transform="translate(-501.2 -34.6)" :fill="bracelet" stroke="#000" stroke-miterlimit="10"
                stroke-width="2" />
            <path id="bracelet_haut"
                d="M530.3,207.6s39.1-72.5,34.8-126.1c0,0,17.4-27.5,102.9-27.5S778.1,72.8,778.1,72.8s14.8,110.1,35.1,130.4c0,0-96,18.8-148.1,18.8S530.3,207.6,530.3,207.6Z"
                transform="translate(-501.2 -34.6)" :fill="bracelet" stroke="#000" stroke-miterlimit="10"
                stroke-width="2" />
            <path id="bracelet_bas"
                d="M813.2,570s-41.9,70.9-39.6,124.7c0,0-18.4,26.9-103.9,23.6s-109.3-23-109.3-23-10.6-110.6-30.1-131.7c0,0,96.6-15.2,148.7-13.2S813.2,570,813.2,570Z"
                transform="translate(-501.2 -34.6)" :fill="bracelet" stroke="#000" stroke-miterlimit="10"
                stroke-width="2" />
        </g>
        <g id="boitier">
            <path id="cadran"
                d="M771.4,590.1h-197a72.2,72.2,0,0,1-72.2-72.2V259.5a72.2,72.2,0,0,1,72.2-72.2h197a72.2,72.2,0,0,1,72.2,72.2V517.9A72.3,72.3,0,0,1,771.4,590.1Z"
                transform="translate(-501.2 -34.6)" :fill="cadran" stroke="#000" stroke-miterlimit="10"
                stroke-width="2" />
            <path id="ecran"
                d="M758.3,573.6H585.2A65.2,65.2,0,0,1,520,508.4V269a65.2,65.2,0,0,1,65.2-65.2H758.3A65.2,65.2,0,0,1,823.5,269V508.4A65.2,65.2,0,0,1,758.3,573.6Z"
                transform="translate(-501.2 -34.6)" :fill="ecran" stroke="#000" stroke-miterlimit="10" />
            <image id="meteo" width="512" height="512" transform="translate(55.3 446.9) scale(0.1)"
                xlink:href="@/assets/la-meteo.png" style="isolation:isolate" />
            <image id="coeur" width="512" height="512" transform="translate(145.3 445.5) scale(0.11)"
                xlink:href="@/assets/coeur.png" style="isolation:isolate" />
            <image id="message" width="512" height="512" transform="translate(238 447.7) scale(0.1)"
                xlink:href="@/assets/message.png" style="isolation:isolate" />
        </g>
        <g id="texte">
            <g style="isolation:isolate">
                <text transform="translate(81.7 306.5)" font-size="118" font-family="NeutralFaceBold, Neutral Face"
                    letter-spacing="-0.1em" style="isolation:isolate">
                    <tspan x="28.7" y="0" letter-spacing="-0.15em">1</tspan>
                    <tspan x="83.1" y="0">4</tspan>
                </text>
                <text transform="translate(67.2 407.5)" font-size="118" font-family="NeutralFaceBold, Neutral Face"
                    letter-spacing="-0.1em" style="isolation:isolate">: 1O</text>
            </g>
        </g>
    </svg>
</template>

   