<script lang="ts">
    export let pct: number;
</script>

<div class="flex flex-row overflow-hidden gap-2 items-center h-16">
    <div class="icon flex items-center justify-center gap-1 w-36 h-16 flex-shrink-0">
        <slot name="logos" />
    </div>
    <div class="level-bar basis-full h-16">
        <div style="width:{pct}%" class="rounded-xl text-surface-50-900-token text-outline bg-stripped flex items-center h-full p-2 font-extrabold text-4xl whitespace-nowrap">
            <slot name="text" />
        </div>
    </div>
</div>

<style lang="postcss">
    .icon :global(img) {
        @apply p-2;
        @apply rounded-xl;
        @apply bg-primary-300 border-2 border-primary-400;
        @apply object-cover max-h-16;
    }
    :global(.dark) .icon :global(img) {
        @apply bg-secondary-500 border-secondary-700;
    }
    .text-outline {
		text-shadow: -1px -1px 0 rgb(var(--color-surface-900)), 1px -1px 0 rgb(var(--color-surface-900)), -1px 1px 0 rgb(var(--color-surface-900)), 1px 1px 0 rgb(var(--color-surface-900));
    }
    :global(.dark) .text-outline {
        text-shadow: -1px -1px 0 rgb(var(--color-surface-50)), 1px -1px 0 rgb(var(--color-surface-50)), -1px 1px 0 rgb(var(--color-surface-50)), 1px 1px 0 rgb(var(--color-surface-50));
    }
    .bg-stripped {
        opacity: 1;
        background-image: linear-gradient( to right, rgb(var(--color-primary-500)), rgb(var(--color-primary-500)) 20px, transparent 5px, transparent );
        background-size: 25px 100%;
    }
    :global(.dark) .bg-stripped {
        opacity: 1;
        background-image: linear-gradient( to right, rgb(var(--color-secondary-500)), rgb(var(--color-secondary-500)) 20px, transparent 5px, transparent );
        background-size: 25px 100%;
    }
</style>