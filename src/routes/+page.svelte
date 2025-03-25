
<div class="ctnr">
    <div class="paper">
        <p class="box name-tag">Onésime BERNARD</p>

        <div class="flag french-flag">
            <div class="stripe bg-[#0055A4]"></div>
            <div class="stripe bg-white"></div>
            <div class="stripe bg-[#EF4135]"></div>
        </div>

        <div class="flag belgian-flag">
            <div class="stripe bg-black"></div>
            <div class="stripe bg-[#FDDA24]"></div>
            <div class="stripe bg-[#EF3340]"></div>
        </div>

        <div class="flag swiss-flag">
            <div class="vertical"></div>
            <div class="horizontal"></div>
        </div>

        <p class="box">
        </p>
    </div>
</div>

<style>
    .ctnr {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        width: 100vw;
        background-color: #F5EEDC;
    }

    .name-tag {
        font-family: "Boldonse", system-ui;
        font-weight: 600;
        font-size: x-large;
        font-style: normal;
    }

    .paper {
        aspect-ratio: 210 / 297;
        width: min(95vw, 95vh * 210 / 297); /* Reduce width to allow margin */
        height: min(95vh, 95vw * 297 / 210); /* Reduce height to allow margin */

        background-color: #F5EEDC;
        color: #183B4E;
        padding: 1rem 2rem;
        border: 2px solid #183B4E;
        border-radius: 10px;
    }

    .box {
        border: 2px solid #183B4E;
        border-radius: 10px;
        width: fit-content;
        height: fit-content;
        padding: 1rem;
        margin: .2rem;
    }

    .flag {
        border: 2px solid black;
        height: 40px;
        margin: 1rem;
    }

    .french-flag {
        display: flex;
        aspect-ratio: 3 / 2; /* Standard flag aspect ratio */
    }

    .belgian-flag {
        display: flex;
        aspect-ratio: 15 / 13; /* Standard flag aspect ratio */
    }

    .stripe {
        flex: 1;
        height: 100%;
    }

    .swiss-flag {
        width: 40px;
        height: 40px;
        background-color: #D52B1E; /* Red background */
        position: relative;
    }

    .cross {
        position: absolute;
        width: 50%;
        height: 50%;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .vertical, .horizontal {
        background-color: #ffffff; /* White color for the cross */
    }

    .vertical {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        width: 25%;
        height: 60%;
    }

    .horizontal {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        height: 25%;
        width: 60%;
    }
</style>