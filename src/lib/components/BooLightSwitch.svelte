<script lang="ts">
    // Credits: https://codepen.io/nicolasjesenberger/pen/bGQwBYo
    import { setInitialClassState } from '@skeletonlabs/skeleton';
    import { setModeCurrent } from '@skeletonlabs/skeleton';
    import { getModeAutoPrefers } from '@skeletonlabs/skeleton';
	import { onMount } from 'svelte';

    let checked: boolean;
    let mounted = false;
    onMount(() => {
        checked = !getModeAutoPrefers();
        mounted = true;
    })   

    $: if (mounted) {
        setModeCurrent(!checked);
    };
</script>

<svelte:head>{@html `<script>(${setInitialClassState.toString()})();</script>`}</svelte:head>
<div class="toggle-container boo">
    <input class="toggle-checkbox toggled-once peer" bind:checked type="checkbox"/>
    <div class="toggle-track bg-primary-500 peer-checked:bg-tertiary-500">
        <div class="toggle-thumb" />
    </div>
</div>

<style lang="postcss">
    .toggle-container {
        position: relative;
        border-radius: 3.125em;
        width: 3.5em;
        height: 2em;
    }
    .toggle-checkbox {
        -webkit-appearance: none;
        appearance: none;
        position: absolute;
        z-index: 1;
        border-radius: inherit;
        width: 100%;
        height: 100%;
        opacity: 0;
        cursor: pointer;
    }
    .toggle-track {
        display: flex;
        align-items: center;
        position: relative;
        border-radius: inherit;
        padding: 0.25em;
        width: 100%;
        height: 100%;
        box-shadow: inset 0 0.0625em 0.125em #000;
        transition: background-color 0.4s linear;
    }
    .toggle-thumb {
        position: relative;
        border-radius: 0.6875em;
        transform-origin: left;
        width: 1.375em;
        height: 1.375em;
        background-color: #fff;
        box-shadow: 0 0.25em 0.25em #000, inset 0 -0.125em 0.25em #000;
    }
    .toggle-checkbox.toggled-once + .toggle-track > .toggle-thumb {
        animation-name: grow-out, bounce-out;
        animation-duration: 0.2s;
        animation-timing-function: cubic-bezier(0.75, 0, 1, 1), cubic-bezier(0, 0, 0.3, 1.5);
        animation-delay: 0s, 0.2s;
        animation-fill-mode: forwards;
    }
    .toggle-checkbox.toggled-once:checked + .toggle-track > .toggle-thumb {
        animation-name: grow-in, bounce-in;
    }
    .toggle-container.boo .toggle-thumb::after {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        border-radius: inherit;
        width: 100%;
        height: 100%;
        background-image: url("https://assets.codepen.io/4175254/boo-face.png");
        background-size: 63.6363636364% 54.5454545455%;
        background-position: center;
        background-repeat: no-repeat;
        box-shadow: inset 0 -0.125em 0.25em #000;
        image-rendering: pixelated;
        opacity: 0;
        transition: opacity 0.2s linear;
    }
    .toggle-container.boo > .toggle-checkbox:checked + .toggle-track > .toggle-thumb::after {
        opacity: 1;
    }
    @media (hover: hover) {
        .toggle-container.boo > .toggle-checkbox:hover + .toggle-track > .toggle-thumb::after {
            opacity: 1;
        }
    }
    @keyframes grow-in {
        0% {
            border-radius: 0.6875em;
            transform: translateX(0) scale(1);
        }
        100% {
            border-radius: 0.4448529412em / 0.9453125em;
            transform: translateX(0.5em) scale(1.5454545455, 0.7272727273);
        }
    }
    @keyframes bounce-in {
        0% {
            border-radius: 0.4448529412em / 0.9453125em;
            transform: translateX(0.5em) scale(1.5454545455, 0.7272727273);
        }
        100% {
            border-radius: 0.6875em;
            transform: translateX(100%) scale(1);
        }
    }
    @keyframes grow-out {
        0% {
            border-radius: 0.6875em;
            transform: translateX(100%) scale(1);
        }
        100% {
            border-radius: 0.4448529412em / 0.9453125em;
            transform: translateX(0.125em) scale(1.5454545455, 0.7272727273);
        }
    }
    @keyframes bounce-out {
        0% {
            border-radius: 0.4448529412em / 0.9453125em;
            transform: translateX(0.125em) scale(1.5454545455, 0.7272727273);
        }
        100% {
            border-radius: 0.6875em;
            transform: translateX(0) scale(1);
        }
    }
</style>