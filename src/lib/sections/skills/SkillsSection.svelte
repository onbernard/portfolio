<script lang="ts">
    import { Accordion, AccordionItem } from '@skeletonlabs/skeleton';
    let active = 0;
</script>

<div class="flex flex-row justify-center h-[50rem] m-12 gap-3">
    <button class="panel" class:active={active===0} on:click={()=>active=0}>
        <div class="title">General Programming</div>
        <div class="content">
            <div class="icon"><img src="logos/c_lang.png"><img src="logos/cpp.png"></div>
            <div class="icon"><img src="logos/golang.png"></div>
            <div class="icon"><img src="logos/java_mark.png"></div>
            <div class="icon"><img src="logos/rust_color.png"></div>
            <div class="icon"><img src="logos/ocaml.png"></div>
            <div class="icon"><img src="logos/r_lang.png"></div>
            <div class="icon"><img src="logos/python.png"></div>
            <div class="icon"><img src="logos/opengl.png"></div>
            <div class="icon"><img src="logos/matlab.png"></div>
        </div>
        <img class="bg-img" src="code1.jpg" alt="datacenter">
    </button>

    <button class="panel" class:active={active===1} on:click={()=>active=1}>
        <div class="title">Web Development</div>
        <div class="content">
            <div class="icon"><img src="logos/html_shield.png"><img src="logos/css_shield.png"></div>
            <div class="icon"><img src="logos/js.png"><img src="logos/nodejs.png"></div>
            <div class="icon"><img src="logos/svelte_mark.png"></div>
            <div class="icon"><img src="logos/tailwind_mark.png"></div>
            <div class="icon"><img src="logos/fastapi.png" class="scale-125"></div>
            <div class="icon"><img src="logos/flask_mark.png"></div>
        </div>
        <img class="bg-img" src="webdev2.jpg" alt="datacenter">
    </button>

    <button class="panel" class:active={active===2} on:click={()=>active=2}>
        <div class="title">Systems & Databases</div>
        <div class="content">
            <div class="icon"><img src="logos/linux_mark.png"></div>
            <div class="icon"><img src="logos/bash_mark.png"></div>
            <div class="icon"><img src="logos/docker_mark.png"></div>
            <div class="icon"><img src="logos/sql.png"></div>
            <div class="icon"><img src="logos/redis.png"></div>
        </div>
        <img class="bg-img" src="datacenter2.jpg" alt="datacenter">
    </button>

    <button class="panel" class:active={active===3} on:click={()=>active=3}>
        <div class="title">Content Creation</div>
        <div class="content">
            <div class="icon"><img src="logos/latex.png"></div>
            <div class="icon"><img src="logos/ue_mark.png"></div>
            <div class="icon"><img src="logos/office_mark.png"></div>
            <div class="icon"><img src="logos/blender_mark.png"></div>
        </div>
        <img class="bg-img" src="webdev1.jpg" alt="datacenter">
    </button>
</div>

<style lang="postcss">
    .panel {
        @apply flex flex-col;
        @apply rounded-xl;
        @apply p-1;
        @apply basis-32 flex-shrink-0;
        position: relative;
        overflow: hidden;
        transition: flex-grow 300ms ease-in-out;
    }
    .panel.active {
        @apply flex-grow flex-shrink;
    }
    .content {
        @apply flex flex-col flex-wrap gap-1;
    }
    .title {
        @apply flex justify-center items-center;
        @apply variant-form-material;
        @apply font-semibold text-lg text-white;
        @apply h-16 p-2;
    }
    .bg-img {
        display: block;
        position: absolute;
        inset: 0;
        width: 100%;
        height: 100%;
        object-fit: cover;
        z-index: -1;
        max-width: 100%;
    }
    .icon {
        @apply flex items-center justify-center;
        @apply w-fit h-fit p-1;
        @apply rounded-full;
        background-color: rgb(255,255,255,.35);
        backdrop-filter: blur(6px);
    }
    .icon img {
        @apply h-10;
    }
</style>
