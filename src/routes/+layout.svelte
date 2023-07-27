<script lang='ts'>
	import '../theme.postcss';
	// The ordering of these imports is critical to your app working properly
	// If you have source.organizeImports set to true in VSCode, then it will auto change this ordering
	import '@skeletonlabs/skeleton/styles/skeleton.css';
	// Most of your app wide CSS should be put in this file
	import '../app.postcss';
	import { AppShell, AppBar } from '@skeletonlabs/skeleton';
	import LightSwitch from '$lib/components/BooLightSwitch.svelte';
</script>

<!-- App Shell -->
<AppShell>
	<svelte:fragment slot="header">
		<!-- App Bar -->
		<AppBar>
			<svelte:fragment slot="lead">
				<span class="text-surface-50-900-token text-outline-token"><strong class="text-5xl font-extrabold">O. BERNARD</strong> (づ ◕‿◕ )づ</span>
			</svelte:fragment>
			<svelte:fragment slot="trail">
				<a
					class="btn variant-ringed btn-icon hover:bg-primary-600 dark:hover:bg-tertiary-600"
					href="https://fr.linkedin.com/in/onésime-bernard-82b953173"
					target="_blank"
					rel="noreferrer"
				>
					<i class="fa-brands fa-linkedin-in"></i>
				</a>
				<a
					class="btn variant-ringed btn-icon hover:bg-primary-600 dark:hover:bg-tertiary-600"
					href="https://twitter.com/emiseno"
					target="_blank"
					rel="noreferrer"
				>
					<i class="fa-brands fa-twitter"></i>
				</a>
				<a
					class="btn variant-ringed btn-icon hover:bg-primary-600 dark:hover:bg-tertiary-600"
					href="https://github.com/onbernard"
					target="_blank"
					rel="noreferrer"
				>
					<i class="fa-lg fa-brands fa-github"></i>
				</a>
				<a
					class="btn variant-ringed hover:bg-primary-600 dark:hover:bg-tertiary-600"
					href="resume_onbernard.pdf"
					download
				>
					<i class="fa-regular fa-file-lines"></i>
					<span class="font-semibold">Get my resume</span>
				</a>
				<h2 class="gradient-border hover:scale-105 group">
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