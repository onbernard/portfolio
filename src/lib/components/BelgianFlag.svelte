<script>
    export let height = "300px";
</script>

<div class="flag" style="--height: {height};">
    <div class="stripe black"></div>
    <div class="stripe yellow"></div>
    <div class="stripe red"></div>
</div>    


<style>
    .flag {
        display: flex;
        aspect-ratio: 15 / 13;
        height: var(--height);
        border: 2px solid black;
    }

    .stripe {
        flex: 1;
        height: 100%;
    }

    .black { background-color: #000000; }
    .yellow { background-color: #FDDA24; }
    .red { background-color: #EF3340; }
</style>

