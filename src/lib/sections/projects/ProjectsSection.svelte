<script lang="ts">
    export let styleClasses = "";
    import { projectData } from "./project_data";
</script>

<div class={styleClasses}>
    <section class="grid grid-cols-5 gap-2 border-token border-surface-900-50-token p-6 relative">
        <h2 class="text-4xl font-extrabold absolute top-0 left-6 -translate-y-[50%] variant-filled">Some of my projects</h2>
        {#each projectData as item}
            <div class="project-card group border-surface-900-50-token">
                <img src="stock/{item.image}" class="bg-image group-hover:blur-sm transition-all" alt="Post" />
                <div class="tech-pill variant-glass">
                    {#each item.logos as lg}
                        <img class="h-full" src="logos/{lg}">
                    {/each}
                </div>
                <a
                    class="btn h-12 variant-glass p-0"
                    href={item.link}
                    target="_blank"
                    rel="noreferrer"
                >
                    <span class="border-token border-surface-900-50-token rounded-full h-full w-12 flex justify-center items-center">
                        <i class="fa-lg fa-brands fa-github"></i>
                    </span>
                    <span class="pr-3 font-semibold">{item.name}</span>
                </a>
                <div class="bottom-0 h-0 flex justify-center items-center overflow-hidden group-hover:h-12 absolute w-full text-center variant-glass transition-all">
                    {item.description}
                </div>
            </div>
        {/each}
    </section>
</div>

<style lang="postcss">
    .project-card {
        @apply aspect-square;
        @apply border-2;
        @apply flex justify-center items-center;
        position: relative;
    }
    .bg-image {
        display: block;
        position: absolute;
        inset: 0;
        width: 100%;
        height: 100%;
        object-fit: cover;
        z-index: -1;
        max-width: 100%;
    }
    .tech-pill {
        @apply absolute top-0 right-[50%] translate-x-[50%];
        @apply flex justify-center items-center;
        @apply p-1 gap-1;
        @apply h-12;
        @apply rounded-b-2xl;
    }
    .tech-pill img {
        @apply h-8 m-1;
    }
</style>