<script>
    import FrenchFlag from "$lib/components/FrenchFlag.svelte";
    import BelgianFlag from "$lib/components/BelgianFlag.svelte";
    import SwissFlag from "$lib/components/SwissFlag.svelte";
    import { jsPDF } from "jspdf";
    import html2canvas from "html2canvas-pro";

    async function downloadPDF() {
        let e = document.getElementById('a4-paper');
        if (e) {
            html2canvas(e, { scale: 2 }).then(canvas => {
                    let imgData = canvas.toDataURL('image/png');
                    let pdf = new jsPDF('p', 'mm', 'a4');
                    
                    let imgWidth = 190;  // Adjust width to fit in A4
                    let imgHeight = (canvas.height * imgWidth) / canvas.width;  // Maintain aspect ratio
                    
                    pdf.addImage(imgData, 'PNG', 10, 10, imgWidth, imgHeight);
                    pdf.save('styled-document.pdf');
                });
        } else {
            console.log("uwu")
        }
    }
</script>

<div class="w-screen h-screen flex justify-center items-center font-roboto">
    <button on:click={downloadPDF} class="bg-pink-400 text-white p-2 rounded">Download CV</button>

    <div id="a4-paper" class="dark:text-slate-50 dark:bg-slate-950 a4-paper grid grid-cols-4 gap-2 p-4 border-pink-500 border-2">

        <div class="flex flex-col justify-between gap-2 col-span-1 @container">
            <picture class="border-slate-950 dark:border-slate-50 border-2 p-2 rounded-md"><img class="rounded-xl object-cover" src="profile_pic.jpg"></picture>
            <p class="border-slate-950 dark:border-slate-50 font-montserrat text-center border-2 rounded-md p-2 text-3xl @sm:text-xs">Onésime<br>BERNARD</p>
            <div class="text-xs font-extrabold flex flex-col gap-2 text-black">
                <a href="mailto:bernard.onesime@gmail.com" target="_blank" class="bg-blue-300 flex flex-row justify-between items-center rounded-sm px-2 py-1">
                    <i class="text-xl fa-solid fa-envelope"></i>
                    <span>bernard.onesime@gmail.com</span>
                </a>
                <div class="grid grid-cols-2 gap-2">
                    <a href="https://www.x.com/emiseno" target="_blank" class="bg-blue-300 flex flex-row justify-between items-center rounded-sm p-2">
                        <i class="text-xl fa-brands fa-twitter"></i>
                        <span>@emiseno</span>
                    </a>
                    <a class="bg-blue-300 flex flex-row justify-between items-center rounded-sm p-2">
                        <i class="text-xl fa-brands fa-linkedin-in"></i>
                        <span>onbernard</span>
                    </a>

                </div>
            </div>
        </div>

        <div class="flex flex-col justify-between gap-2 col-span-3">
            <div class="flex flex-row justify-between items-top font-boldonse">
                <div>DFIR/OSINT</div>
                <FrenchFlag height="30px"/>
                <div>DATA</div>
                <BelgianFlag height="30px"/>
                <div>Software</div>
                <SwissFlag height="30px"/>
                <div>Systems</div>
            </div>

            <span class="font-bold text-blue-300 text-xl"><span class="italic">Учітеся, брати мої, думайте, читайте.</span> Тарас Шевченко</span>

            <div class="border-slate-950 dark:border-slate-50 font-medium text-sm text-justify inline-block border-2 rounded-md p-2 py-4 relative">
                <div class="bg-white dark:bg-slate-950 absolute top-0 left-0 -translate-y-1/2 font-boldonse text-xs pl-2 pb-0.5">About</div>
                Work never stop. At home, I pursue personal projects focused on Linux, FOSS, OSINT and drones. Beyond tech, I enjoy cycling, following formula 1 and breeding shrimps. At any hour of the day, you can find me writing software, building my homelab, watching over my aquariums or following conferences. You can sometime find me at those. Ask me about NixOS.
            </div>

            <div class="border-slate-950 dark:border-slate-50 border-2 rounded-md p-2 mt-1.5 relative">
                <div class="bg-white dark:bg-slate-950 absolute top-0 left-0 -translate-y-1/2 font-boldonse text-xs pl-2 pb-0.5">Skills</div>
                <ul class="grid grid-cols-3 gap-3">
                    <li class="flex flex-row items-center gap-2">
                        <span class="font-bold text-sm">Languages</span>
                        <i class="fa-brands fa-python"></i>
                        <i class="fa-brands fa-rust"></i>
                        <i class="fa-brands fa-golang"></i>
                    </li>
                    <li class="flex flex-row items-center gap-2">
                        <span class="font-bold text-sm">Web</span>
                        <i class="fa-brands fa-js">

                        </i><i class="fa-brands fa-react"></i>
                    </li>
                    <li class="flex flex-row items-center gap-2">
                        <span class="font-bold text-sm">Systems</span>
                        <i class="fa-brands fa-linux"></i>
                        <i class="fa-brands fa-windows"></i>
                        <i class="fa-brands fa-docker"></i>
                        <!-- ProxMox
                        ESXi -->
                    </li>
                    <li class="flex flex-row items-center gap-2">
                        <span class="font-bold text-sm">Network</span>
                        <!-- CISCO -->
                    </li>
                    <li class="flex flex-row items-center gap-2">
                        <span class="font-bold text-sm">Databases</span>
                        <i class="fa-solid fa-database"></i>
                        <!-- <div>PG ClickHouse MSSQL</div> -->
                    </li>
                </ul>
            </div>

            <div class="border-slate-950 dark:border-slate-50 border-2 rounded-md p-2 text-sm relative">
                <div class="bg-white dark:bg-slate-950 absolute top-0 left-0 -translate-y-1/2 font-boldonse text-xs pl-2 pb-0.5">Languages</div>
                Fluent in <span class="font-bold">English</span>, <span class="font-bold">French</span>. Intermediate in <span class="font-bold">Russian</span>, <span class="font-bold">Ukrainian</span>. Beginner in <span class="font-bold">German</span>.
            </div>
        </div>



        <div class="border-slate-950 dark:border-slate-50 col-span-4 border-2 rounded-md size-fit p-6 mt-2.5 relative">
            <div class="bg-white dark:bg-slate-950 absolute top-0 left-0 -translate-y-1/2 font-boldonse font-bold p-2">Profesional Experience</div>
            <div class="ml-40">
                <ul class="border-l-2 border-slate-50 py-6 pl-3 list-disc flex flex-col gap-6">
                    <li>
                        <div class="flex flex-row justify-between relative">
                            <div class="bg-slate-50 dark:bg-slate-950 absolute -translate-x-1/2 -left-16 font-boldonse text-xs">
                                2016 - 2018
                            </div>
                            <p class="text-bold font-boldonse">FSC Emergency</p>
                            <p class="font-bold">Charleroi, 🇧🇪BE</p>
                        </div>
                        <p class="text-sm text-justify m-4">First-aid emergency on sportive and cultural events.</p>
                    </li>
                    <li>
                        <div class="flex flex-row justify-between relative">
                            <div class="bg-slate-50 dark:bg-slate-950 absolute -translate-x-3/4 -left-14 font-boldonse text-xs">
                                09.2022 - 01.2024
                            </div>
                            <p class="text-bold font-boldonse">LERTI Digital Forensic Laboratory</p>
                            <p class="font-bold">Grenoble, 🇫🇷FR</p>
                        </div>
                        <p class="text-sm text-justify m-4">
                            First <span class="font-bold">Software Developer</span> then <span class="font-bold">System Administrator</span>, while also preparing forensic reports for judicial authorities. I developed facial recognition and automatic speech recognition software to aid investigations and contributed to cases involving terrorism, international money laundering, and sexual delinquency. Additionally, I presented my work at the Association Francophone des Sociétés de l'Investigation Numérique (AFSIN).
                        </p>
                    </li>
                    <li>
                        <div class="flex flex-row justify-between relative">
                            <div class="bg-slate-50 dark:bg-slate-950 absolute -translate-x-3/4 -left-8 font-boldonse text-xs">
                                2024
                            </div>
                            <p class="text-bold font-boldonse">Sabbatical</p>
                            <p class="font-bold">Ternopil Oblast, 🇺🇦UA</p>
                        </div>
                    </li>
    
                    <li>
                        <div class="flex flex-row justify-between relative">
                            <div class="bg-slate-50 dark:bg-slate-950 absolute -translate-x-3/4 -left-14 font-boldonse text-xs">
                                07.2024 - Current
                            </div>
                            <p class="text-bold font-boldonse">EXTIA - IMA Automation</p>
                            <p class="font-bold">La Chaux-de-Fonds, 🇨🇭CH</p>
                        </div>
                        <p class="text-sm text-justify m-4">As a <span class="font-bold">Software Industrial System Engineer</span>, I design and implement IT/OT systems and develop software for pharmaceutical production lines, ensuring efficiency and compliance with industry standards. Additionally, I write data collection processes, optimizing production monitoring and analysis.</p>
                    </li>
                </ul>
            </div>
        </div>


        <div class="border-slate-950 dark:border-slate-50 col-span-4 border-2 rounded-md size-fit p-6 relative w-full">
            <div class="bg-white dark:bg-slate-950 absolute top-0 left-0 -translate-y-1/2 font-boldonse font-bold p-2">Academic</div>
            <div class="ml-40">
                <ul class="border-l-2 border-slate-50 py-6 pl-3 list-disc flex flex-col gap-6">
                    <li>
                        <div class="flex flex-row justify-between relative">
                            <div class="bg-slate-50 dark:bg-slate-950 absolute -translate-x-1/2 -left-16 font-boldonse text-xs">
                                2018 - 2022
                            </div>
                            <p class="text-bold font-boldonse">Université Paul Sabatier</p>
                            <p class="font-bold">Toulouse, 🇫🇷FR</p>
                        </div>
                        <p class="text-sm text-justify m-4">Computer Science Bachelor</p>
                    </li>
                </ul>
            </div>
        </div>


    </div>
</div>

<style>
    .a4-paper {
        aspect-ratio: 210 / 297;
        width: min(95vw, 95vh * 210 / 297);
        height: min(95vh, 95vw * 297 / 210);
    }
</style>
