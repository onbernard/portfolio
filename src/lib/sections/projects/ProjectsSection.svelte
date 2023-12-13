<script lang="ts">
    export let styleClasses = "";
    import { projectData } from "./project_data";
</script>

<div class={styleClasses}>
    <section class="grid grid-cols-4 gap-2 variant-ringed p-6 relative">
        <h2 class="text-4xl font-extrabold absolute top-0 left-6 -translate-y-[50%] variant-filled">Some of my projects</h2>
        {#each projectData as item}
            <div class="aspect-square rounded-lg flex justify-center items-center relative group border-surface-900-50-token overflow-hidden">
                <img src="stock/{item.image}" class="bg-image rounded-lg group-hover:blur-sm transition-all" alt="bg-card" />
                <div class="p-1 gap-1 h-12 rounded-b-2xl flex justify-center items-center absolute top-0 right-[50%] translate-x-[50%] variant-ghost">
                    {#each item.logos as lg}
                        <img class="h-8 m-1" src="logos/{lg}" alt="logo-{lg}">
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
</style>