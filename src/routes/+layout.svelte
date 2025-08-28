<script>
	import '../app.css';

	let { children } = $props();

</script>

<svelte:head>
	<title>OB's landing</title>
	<script src="https://kit.fontawesome.com/76d7f17d8d.js" crossorigin="anonymous"></script>
</svelte:head>


{@render children()}
