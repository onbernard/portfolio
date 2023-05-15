<!-- YOU CAN DELETE EVERYTHING IN THIS PAGE -->

<div class="container mx-auto flex justify-center">
	<div class="flex flex-col items-start">
		<span class="text-4xl font-extrabold">Hi<i class="fa-regular fa-hand fa-shake"></i> I'm Onésime</span>
		<p>I am a computer science and mathematics student at Université Paul Sabatier de Toulouse. I previously studied engineering at the École Polytechnique de Louvain in Belgium. Science fascinates me and I love to learn new stuff. My interests lies primarily with computer simulations and how to solve real-world problem with procedural solutions. To that end, i like to tinker with artificial intelligence and more conventional algorithms.

		When I am not breaking a computer, you can find me on my bike 🚴, watching Formula 1 🏎️ or playing video games 🎮 with friends. I can be a massive nerd but i learned to live with it.
		</p>
		<span class="font-bold">Let's connect <i class="fa-solid fa-arrow-right"></i></span>
	</div>
</div>
<section class="flex flex-row bg-gradient-to-br variant-gradient-primary-tertiary">
	<i class="fa-10x text-surface-50-900-token fa-solid fa-link"></i>
	<h2 class="h2 text-surface-50-900-token">Get in touch</h2>
</section>

<style lang="postcss">
	figure {
		@apply flex relative flex-col;
	}
	figure svg,
	.img-bg {
		@apply w-64 h-64 md:w-80 md:h-80;
	}
	.img-bg {
		@apply absolute z-[-1] rounded-full blur-[50px] transition-all;
		animation: pulse 5s cubic-bezier(0, 0, 0, 0.5) infinite,
			glow 5s linear infinite;
	}
	@keyframes glow {
		0% {
			@apply bg-primary-400/50;
		}
		33% {
			@apply bg-secondary-400/50;
		}
		66% {
			@apply bg-tertiary-400/50;
		}
		100% {
			@apply bg-primary-400/50;
		}
	}
	@keyframes pulse {
		50% {
			transform: scale(1.5);
		}
	}

</style>
