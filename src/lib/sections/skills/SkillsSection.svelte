<script lang="ts">
    export let styleClasses = "";
    import { skillData } from './skill_data';
    let active = 0;
</script>

<div class="{styleClasses}">
    <div class="flex flex-row justify-center gap-3 border-token border-surface-900-50-token p-6 relative">
        <h2 class="text-4xl font-extrabold absolute top-0 left-6 -translate-y-[50%] variant-filled">My tech stack</h2>
        <button class="panel" class:active={active===0} on:click={()=>active=0}>
            <div class="title">General Programming</div>
            <div class="content">
                {#each skillData.generalProgramming as item}
                <div class="item">
                    <div class="icon gap-1">{#each item.logosPath as logo}<img class="scale-{item.scale}" src="logos/{logo}" alt={logo}>{/each}</div>
                    <div class="level-bar"><div style="width:{item.levelPct}%">{@html item.levelText}</div></div>
                </div>
                {/each}
            </div>
            <img class="bg-img" src="code1.jpg" alt="datacenter">
        </button>

        <button class="panel" class:active={active===1} on:click={()=>active=1}>
            <div class="title">Web Development</div>
            <div class="content">
                {#each skillData.webDevelopment as item}
                <div class="item">
                    <div class="icon">{#each item.logosPath as logo}<img class="scale-{item.scale}" src="logos/{logo}" alt={logo}>{/each}</div>
                    <div class="level-bar"><div style="width:{item.levelPct}%">{@html item.levelText}</div></div>
                </div>
                {/each}
            </div>
            <img class="bg-img" src="webdev2.jpg" alt="datacenter">
        </button>

        <button class="panel" class:active={active===2} on:click={()=>active=2}>
            <div class="title">Systems & Databases</div>
            <div class="content">
                {#each skillData.systemsAndDB as item}
                <div class="item">
                    <div class="icon">{#each item.logosPath as logo}<img class="scale-{item.scale}" src="logos/{logo}" alt={logo}>{/each}</div>
                    <div class="level-bar"><div style="width:{item.levelPct}%">{@html item.levelText}</div></div>
                </div>
                {/each}
            </div>
            <img class="bg-img" src="datacenter2.jpg" alt="datacenter">
        </button>

        <button class="panel" class:active={active===3} on:click={()=>active=3}>
            <div class="title">Content Creation</div>
            <div class="content">
                {#each skillData.contentCreation as item}
                <div class="item">
                    <div class="icon">{#each item.logosPath as logo}<img class="scale-{item.scale}" src="logos/{logo}" alt={logo}>{/each}</div>
                    <div class="level-bar"><div style="width:{item.levelPct}%">{item.levelText}</div></div>
                </div>
                {/each}
            </div>
            <img class="bg-img" src="webdev1.jpg" alt="datacenter">
        </button>
    </div>
</div>

<style lang="postcss">
    .panel {
        @apply flex flex-col;
        @apply rounded-sm;
        @apply basis-32 flex-shrink-0;
        position: relative;
        overflow: hidden;
        transition: flex-grow 300ms ease-in-out;
    }
    .panel.active {
        @apply flex-grow;
    }
    .content {
        @apply flex flex-col flex-wrap gap-0.5 p-2 backdrop-blur-sm h-full;
    }
    .title {
        @apply flex justify-center items-center;
        @apply variant-form-material;
        @apply font-extrabold text-lg text-white;
        @apply h-24 p-2;
        text-shadow: -1px -1px 0 rgb(var(--color-surface-900)), 1px -1px 0 rgb(var(--color-surface-900)), -1px 1px 0 rgb(var(--color-surface-900)), 1px 1px 0 rgb(var(--color-surface-900));
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
    .item {
        @apply flex flex-row overflow-hidden gap-2 items-center;
        @apply h-16;
    }
    .icon {
        @apply flex items-center justify-center;
        @apply w-28 h-14 flex-shrink-0;
        @apply rounded-l-lg border-2 border-surface-900;
        background-color: rgb(255,255,255,.65);
        backdrop-filter: blur(6px);
    }
    .icon img {
        @apply h-11;
    }
    .level-bar {
        @apply basis-full h-14;
    }
    .level-bar div {
        @apply flex items-center;
        @apply h-full p-2;
        @apply font-extrabold text-2xl text-gray-800;
        @apply bg-gradient-to-r from-primary-500 to-tertiary-500;
        @apply rounded-r-lg border-2 border-surface-900;
        backdrop-filter: blur(6px);
        background-repeat: space;
    }
</style>
