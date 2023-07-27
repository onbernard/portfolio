<script lang="ts">
    import SkillPanel from './SkillPanel.svelte';
    import SkillItem from './SkillItem.svelte';
    import { skillData } from './skill_data';
    export let styleClasses = "";
    let active = 0;
</script>

<div class="{styleClasses}">
    <div class="flex flex-row justify-center gap-3 variant-ringed p-6 pb-1 relative">
        <h2 class="text-4xl font-extrabold absolute top-0 left-6 -translate-y-[50%] variant-filled">My tech stack</h2>

        <SkillPanel active={active===0} on:click={()=>active=0}>
            <svelte:fragment slot="header">
                General Programming
                <img class="bg-img" src="stock/code1.jpg" alt="datacenter-bg">
            </svelte:fragment>
            {#each skillData.generalProgramming as item}
            <SkillItem pct={item.levelPct}>
                <svelte:fragment slot="logos">
                    {#each item.logosPath as logo}
                    <img src="logos/{logo}" alt={logo}>
                    {/each}
                </svelte:fragment>
                <svelte:fragment slot="text">
                    {@html item.levelText}
                </svelte:fragment>
            </SkillItem>
            {/each}
        </SkillPanel>

        <SkillPanel active={active===1} on:click={()=>active=1}>
            <svelte:fragment slot="header">
                Web Development
                <img class="bg-img" src="stock/webdev2.jpg" alt="web-bg">
            </svelte:fragment>
            {#each skillData.webDevelopment as item}
            <SkillItem pct={item.levelPct}>
                <svelte:fragment slot="logos">
                    {#each item.logosPath as logo}
                    <img src="logos/{logo}" alt={logo}>
                    {/each}
                </svelte:fragment>
                <svelte:fragment slot="text">
                    {@html item.levelText}
                </svelte:fragment>
            </SkillItem>
            {/each}
        </SkillPanel>

        <SkillPanel active={active===2} on:click={()=>active=2}>
            <svelte:fragment slot="header">
                Systems & Databases
                <img class="bg-img" src="stock/datacenter2.jpg" alt="datacenter-bg">
            </svelte:fragment>

            {#each skillData.systemsAndDB as item}
            <SkillItem pct={item.levelPct}>
                <svelte:fragment slot="logos">
                    {#each item.logosPath as logo}
                    <img src="logos/{logo}" alt={logo}>
                    {/each}
                </svelte:fragment>
                <svelte:fragment slot="text">
                    {@html item.levelText}
                </svelte:fragment>
            </SkillItem>
            {/each}
        </SkillPanel>

        <SkillPanel active={active===3} on:click={()=>active=3}>
            <svelte:fragment slot="header">
                Content Creation
                <img class="bg-img" src="stock/webdev1.jpg" alt="content-creation-bg">
            </svelte:fragment>

            {#each skillData.contentCreation as item}
            <SkillItem pct={item.levelPct}>
                <svelte:fragment slot="logos">
                    {#each item.logosPath as logo}
                    <img src="logos/{logo}" alt={logo}>
                    {/each}
                </svelte:fragment>
                <svelte:fragment slot="text">
                    {@html item.levelText}
                </svelte:fragment>
            </SkillItem>
            {/each}
        </SkillPanel>
    </div>
</div>

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
    .bg-img {
        position: absolute;
        width: 100%;
        height: 100%;
        object-fit: cover;
        z-index: -1;
    }
    .item {
        @apply flex flex-row overflow-hidden gap-2 items-center;
        @apply h-16;
    }
    .icon {
        @apply flex items-center justify-center gap-1;
        @apply w-36 h-16 flex-shrink-0;
        @apply rounded-l-lg border-2 ;
        background-color: #FFFA;
    }
    .icon img {
        @apply h-11;
    }
    .level-bar {
        @apply basis-full h-16;
    }
    .level-bar div {
        @apply flex items-center;
        @apply h-full p-2;
        @apply font-extrabold text-4xl whitespace-nowrap;
    }
</style>
