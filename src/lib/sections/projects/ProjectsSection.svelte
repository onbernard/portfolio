<section class=" text-center border-surface-900-50-token border-2 rounded-xl m-12">
    <h2 class="h2 font-bold">Sample projects</h2>
    <div class="flex flex-row justify-between flex-wrap">
        {#each { length: 4 } as _}
        <div class="card m-4 w-64 h-fit group relative">
            <section>
                <img src="https://source.unsplash.com/vjUokUWbFOs/400x175" class="bg-black/50 w-full aspect-[21/9]" alt="Post" />
            </section>
            <div class="overlay">
                uwu
            </div>
        </div>
        {/each}
    </div>
</section>

<style lang="postcss">
    .overlay {
        @apply opacity-0 group-hover:opacity-100 absolute top-0 left-0 w-full h-full;
        @apply backdrop-blur-sm;
        transition: opacity 200ms ease-in-out;
    }
</style>