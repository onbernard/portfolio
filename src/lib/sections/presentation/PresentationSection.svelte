<script lang="ts">
    export let styleClasses = "";
</script>

<div class={styleClasses}>
    <section class="relative p-6 py-8 gap-3 flex flex-col items-start rounded-sm variant-ringed">
        <span class="text-4xl font-extrabold absolute top-0 -translate-y-[50%] variant-filled">Hi<i class="fa-regular fa-hand fa-shake"></i> I'm Onésime</span>
        <p class="text-xl text-justify">
            I am a developer/SysAdmin working in ML and computer forensics for the Lerti laboratory in Grenoble, France. I studied mathematics and computer sciences at the University Paul Sabatier of Toulouse and before that engineering at the Polytechnic School of Louvain-la-Neuve, Belgium. My interests lies primarily with machine learning and the ways to solve real-world problem with procedural solutions. When I am not bullying an innocent computer, you can find me on my bike 🚴, watching Formula 1 🏎️ or playing video games 🎮 with friends. I am a massive nerd but I learned to live with it.
        </p>
        <div class="gradient-border hover:scale-105 group absolute bottom-0 translate-y-[50%]">
            <a href="#connect" class="bg-surface-50-900-token text-token text-xl font-semibold p-1 group-hover:bg-transparent">Let's connect <i class="fa-solid fa-arrow-right pl-1"></i></a>
        </div>
    </section>
</div>