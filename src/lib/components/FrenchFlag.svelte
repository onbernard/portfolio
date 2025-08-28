<script>
    export let height = "300px";
</script>

<div class="flag" style="--height: {height};">
    <div class="stripe blue"></div>
    <div class="stripe white"></div>
    <div class="stripe red"></div>
</div>

<style>
  .flag {
    display: flex;
    aspect-ratio: 3 / 2; /* Standard flag aspect ratio */
    height: var(--height);
    border: 2px solid black;
  }

  .stripe {
    flex: 1;
    height: 100%;
  }

  .blue { background-color: #0055A4; }
  .white { background-color: #ffffff; }
  .red { background-color: #EF4135; }
</style>