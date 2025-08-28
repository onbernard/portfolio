<script>
    export let height = "300px"; // Default width (square flag)
</script>


<div class="flag" style="--height: {height};">
    <div class="vertical"></div>
    <div class="horizontal"></div>
</div>


<style>
    .flag {
        height: var(--height);
        width: var(--height);
        background-color: #D52B1E; /* Red background */
        position: relative;
        border: 2px solid black;
    }


    .vertical, .horizontal {
        background-color: #ffffff; /* White color for the cross */
    }

    .vertical {
        position: absolute;
        transform: translate(-50%, -50%);
        top: 50%;
        left: 50%;
        width: 20%;
        height: 60%;
    }

    .horizontal {
        position: absolute;
        transform: translate(-50%, -50%);
        top: 50%;
        left: 50%;
        height: 20%;
        width: 60%;
    }
</style>