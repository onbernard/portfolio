<script lang="ts">
    import SkillItem from "./SkillItem.svelte";
    export let active: boolean;
</script>

<button class="panel" class:active={active} on:click>
    <div class="title">
        <slot name="header" />
    </div>
    <div class="content">
        <slot />
    </div>
</button>

<style lang="postcss">
    .panel {
        @apply flex flex-col items-stretch gap-1;
        @apply rounded-sm;
        @apply basis-36 flex-shrink-0;
        overflow: hidden;
        transition: flex-grow 300ms ease-in-out;
    }
    .panel.active {
        @apply flex-grow;
    }
    .content {
        @apply flex flex-col flex-wrap gap-1 backdrop-blur-sm h-full;
    }
    .title {
        @apply flex justify-center items-center;
        @apply font-extrabold text-xl text-white;
        @apply h-28 p-4;
        @apply relative;
        text-shadow: -1px -1px 0 rgb(var(--color-surface-900)), 1px -1px 0 rgb(var(--color-surface-900)), -1px 1px 0 rgb(var(--color-surface-900)), 1px 1px 0 rgb(var(--color-surface-900));
    }
</style>