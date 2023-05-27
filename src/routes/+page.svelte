<script lang="ts">
	import SkillsSection from '$lib/sections/skills/SkillsSection.svelte';
	import ProjectsSection from '$lib/sections/projects/ProjectsSection.svelte';
	import PresentationSection from '$lib/sections/presentation/PresentationSection.svelte';
</script>

<PresentationSection />

<SkillsSection />

<ProjectsSection />

<section id="connect" class="flex flex-row py-12 justify-around items-center bg-gradient-to-br variant-gradient-primary-tertiary">
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
