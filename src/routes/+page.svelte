<!-- YOU CAN DELETE EVERYTHING IN THIS PAGE -->

<section class="m-12 gap-3 flex flex-col items-start">
	<span class="text-4xl font-extrabold">Hi<i class="fa-regular fa-hand fa-shake"></i> I'm Onésime</span>
	<p>I am a computer science and mathematics student at Université Paul Sabatier de Toulouse. I previously studied engineering at the École Polytechnique de Louvain in Belgium. Science fascinates me and I love to learn new stuff. My interests lies primarily with computer simulations and how to solve real-world problem with procedural solutions. To that end, i like to tinker with artificial intelligence and more conventional algorithms.

	When I am not breaking a computer, you can find me on my bike 🚴, watching Formula 1 🏎️ or playing video games 🎮 with friends. I can be a massive nerd but i learned to live with it.
	</p>
	<span class="font-bold">Let's connect <i class="fa-solid fa-arrow-right"></i></span>
</section>

<section class=" text-center border-surface-900-50-token border-2 rounded-xl m-12">
	<h2 class="h2 font-bold">My tech stack</h2>
	<div class="h-96">
		<i class="fa-2xl fa-brands fa-python"></i>

		<i class="fa-2xl fa-brands fa-html5"></i>
		<i class="fa-2xl fa-brands fa-js"></i>
		<i class="fa-2xl fa-brands fa-css3-alt"></i>

		<div class="flex flex-row flex-wrap">
			<img class="max-h-12" src="java.png">
			<img class="max-h-12" src="ocaml.png">
			<img class="max-h-12" src="tux.png">
			<img class="max-h-12" src="c_lang.png">
			<img class="max-h-12" src="cpp.png">
			<img class="max-h-12" src="rust.png">
			<img class="max-h-12" src="golang.png">
			<img class="max-h-12" src="latex.png">
			<img class="max-h-12" src="python.png">
			<img class="max-h-12" src="r_lang.png">
			<img class="max-h-12" src="opengl.png">
			<img class="max-h-12" src="js.png">
			<img class="max-h-12" src="html_shield_mark.png">
			<img class="max-h-12" src="css_shield_mark.png">
			<img class="max-h-12" src="svelte.png">
			<img class="max-h-12" src="tailwind.png">
			<img class="max-h-12" src="docker.png">
			<img class="max-h-12" src="redis.png">
			
		</div>
	</div>
</section>

<section class=" text-center border-surface-900-50-token border-2 rounded-xl m-12">
		<h2 class="h2 font-bold">Sample projects</h2>
		<div class="flex flex-row justify-between flex-wrap">
			{#each { length: 4 } as _}
			<div class="card card-hover m-4 w-64 h-fit group relative">
				<section>
					<img src="https://source.unsplash.com/vjUokUWbFOs/400x175" class="bg-black/50 w-full aspect-[21/9] group-hover:blur-sm" alt="Post" />
				</section>
				<section class="absolute content hidden group-hover:block top-0 left-0 w-full h-full text-center text-lg font-bold">content</section>
			</div>
			{/each}
		</div>

</section>

<section class="flex flex-row py-12 justify-around items-center bg-gradient-to-br variant-gradient-primary-tertiary">
	<i class="fa-10x scale-150 text-surface-50-900-token fa-solid fa-link"></i>
	<div class="basis-7/12">
		<h2 class="text-5xl font-bold my-5 text-surface-50-900-token">Get in touch</h2>
		<form class="grid grid-cols-2 gap-3">
			<input type="text" class="input variant-glass placeholder-surface-500 valid:border-success-500" placeholder="First Name*" required>
			<input type="text" class="input variant-glass placeholder-surface-500 valid:border-success-500" placeholder="Last Name*" required>
			<input type="email" class="input variant-glass placeholder-surface-500 valid:border-success-500" placeholder="Email Address*" required>
			<input type="tel" class="input variant-glass placeholder-surface-500" placeholder="Phone No.">
			<textarea class="col-span-2 textarea variant-glass placeholder-surface-500 valid:border-success-500" maxlength="2048" placeholder="Message*" required></textarea>
			<button type="submit" class="group btn border-2 border-surface-50-900-token text-surface-50-900-token"><span class="font-semibold transition-all group-hover:scale-110">Send<i class=" ml-2 fa-regular fa-paper-plane"></i></span></button>
		</form>
	</div>
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
