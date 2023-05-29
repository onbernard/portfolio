<script lang='ts'>
	import '../theme.postcss';
	// The ordering of these imports is critical to your app working properly
	// If you have source.organizeImports set to true in VSCode, then it will auto change this ordering
	import '@skeletonlabs/skeleton/styles/skeleton.css';
	// Most of your app wide CSS should be put in this file
	import '../app.postcss';
	import { AppShell, AppBar, LightSwitch } from '@skeletonlabs/skeleton';
</script>

<!-- App Shell -->
<AppShell>
	<svelte:fragment slot="header">
		<!-- App Bar -->
		<AppBar>
			<svelte:fragment slot="lead">
				<strong class="text-4xl font-extrabold text-surface-50-900-token text-outline-token">O. BERNARD 	(づ ◕‿◕ )づ</strong>
			</svelte:fragment>
			<svelte:fragment slot="trail">
				<a
					class="social-btn"
					href="https://fr.linkedin.com/in/onésime-bernard-82b953173"
					target="_blank"
					rel="noreferrer"
				>
					<i class="fa-brands fa-linkedin-in"></i>
				</a>
				<a
					class="social-btn"
					href="https://twitter.com/emiseno"
					target="_blank"
					rel="noreferrer"
				>
					<i class="fa-brands fa-twitter"></i>
				</a>
				<a
					class="social-btn"
					href="https://github.com/onbernard"
					target="_blank"
					rel="noreferrer"
				>
					<i class="fa-lg fa-brands fa-github"></i>
				</a>
				<a
					class="resume-btn"
					href="resume_onesime_bernard.pdf"
					download
				>
					<i class="fa-regular fa-file-lines"></i>
					<span class="font-semibold">Get my resume</span>
				</a>
				<h2 class="gradient-border group">
					<a href="#connect" class="bg-surface-100-800-token text-token text-xl font-semibold p-3 group-hover:bg-transparent">Let's connect!</a>
				</h2>
				<div class="">
					<LightSwitch />
				</div>
			</svelte:fragment>
		</AppBar>
	</svelte:fragment>
	<!-- Page Route Content -->
	<slot />
</AppShell>

<style lang="postcss">
	.social-btn {
		@apply btn btn-icon variant-ringed;
	}
	.resume-btn {
		@apply btn variant-ringed;
	}
	.connect-btn {
		@apply btn btn-xl variant-ringed rounded-none;
	}
	.gradient-border {
        @apply flex justify-center items-center p-0.5;
		@apply bg-gradient-to-br variant-gradient-primary-tertiary;
        @apply transition-all;
	}
</style>