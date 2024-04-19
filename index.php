<?php

    /*
    
        Website developed by Andrei Frîntu
        Critical maintenance @ codulluiandrei.ro

        Version:    3.7@main:tb
        Stage:      published@teaborgs.ro
        Contact:    admin@codulluiandrei.ro

    */

    /* init session */
    session_start();
    /* save last accesed page for future interactions */
    $_SESSION['last_page'] = "https://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";

    /* database connection variables */
    $db['mentenanta'] = true;
    include("config.php");
    $db['table'] = "home";

    /* init connection */
    $conn = mysqli_connect($db['server'], $db['user'], $db['password'], $db['name']);
    /* check connection activity */
    if (!$conn) {
        if ($db['mentenanta'] == true) echo "Website-ul este momentan în mentenanță. Revino mai tărziu!";
        echo "Conexiunea a eșuat!";
    }

    /* routing pages for future interactions */
    $router['page'] = 'home';
    $router['logo'] = 'logo-v3-2024';
    $router['lang'] = $l = (isset($_COOKIE['language'])) ? $_COOKIE['language'] : 1;

?>
<!DOCTYPE html>
<html lang="<?php echo ($l == 1) ? "ro" : "en"; ?>">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- HTML Title Tag --->
    <title>Tea-Borgs #19121 | RO087 - Romanian Robotics Team</title>
    <!-- Favicon / Page Icon Link Tag --->
    <link rel="icon" type="image/x-icon" href="/static/logo/<?php echo $router['logo'] . '.ico'; ?>">
    
    <!-- HTML Meta Tags --->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="robotics, computer science, Tea-Borgs, 19121, RO087">
    <meta name="description" content="Tea-Borgs #19121 | RO087 - Science in a cup of tea! Romanian Robotics Team from Colegiul Național Tudor Vladimirescu, Gorj, Târgu Jiu">
    <!-- Google / Search Engine Meta Tags --->
    <meta itemprop="name" content="Tea-Borgs #19121 | RO087 - Romanian Robotics Team">
    <meta itemprop="image" content="/static/logo/<?php echo $router['logo'] . '.png'; ?>">
    <meta itemprop="description" content="Tea-Borgs #19121 | RO087 - Science in a cup of tea! Romanian Robotics Team from Colegiul Național Tudor Vladimirescu, Gorj, Târgu Jiu">
    <!-- Facebook Meta Tags --->
    <meta property="og:type" content="website">
    <meta property="og:url" content="/">
    <meta property="og:title" content="Tea-Borgs #19121 | RO087 - Romanian Robotics Team">
    <meta property="og:image" content="/static/logo/<?php echo $router['logo'] . '.png'; ?>">
    <meta property="og:description" content="Tea-Borgs #19121 | RO087 - Science in a cup of tea! Romanian Robotics Team from Colegiul Național Tudor Vladimirescu, Gorj, Târgu Jiu">
    <!-- Twitter Meta Tags --->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Tea-Borgs #19121 | RO087 - Romanian Robotics Team">
    <meta name="twitter:image" content="/static/logo/<?php echo $router['logo'] . '.png'; ?>">
    <meta name="twitter:description" content="Tea-Borgs #19121 | RO087 - Science in a cup of tea! Romanian Robotics Team from Colegiul Național Tudor Vladimirescu, Gorj, Târgu Jiu">

    <!-- Disable Search Engine Indexing --->
    <meta property="robots" content="noindex">
    <!-- Libraries Import Link Tags --->
    <link href="/static/styles.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body class="tb-background overflow-x-hidden">

    <style>@media (max-width: 991.98px) { .pad-sm-0 { padding: 0 !important; } }</style>

    <section class="tb-hero overflow-hidden" style="background: url(/static/pages/index.png); background-attachment: fixed; background-position: center; background-repeat: no-repeat; background-size: cover;">
        
    
        <?php include_once("static/pages/navbar.php"); ?>


        <div class="d-flex fl-cont align-items-center justify-content-center position-absolute w-md-100" style="width: 100%; height: 100%; top: 0; z-index: 100;">
            <div style="width: 50%;" class="d-flex align-items-center justify-content-center w-sm-100">
                <img alt="" src="/static/pages/ff_robot.png" class="w-sm-100 fil" style="width: 80%;">
            </div>
            <div style="width: 50%;" class="w-sm-100 d-flex flex-column align-items-center fir">
                <h1 class="fs-1 text-unbounded text-white">Tea-Borgs<br>#19121 | RO087<br><span><?php echo ($l == 1) ? "Știință într-o ceașcă de ceai!" : "Science in a cup of tea!"; ?></span><br></h1>
                <a style="width: 75%;" class="w-sm-100 btn btn-lg fw-bold btn-outline-light text-unbounded" href="/about/"><?php echo ($l == 1) ? "Povestea noastră" : "Our story"; ?></a>
                <img src="/static/pages/AUTO.png" height="200px">
            </div>
        </div>
    </section>

    <section class="gears tb-hero position-relative d-flex align-items-center justify-content-center px-5 pad-sm-0 overflow-visible" id="about">
        <div style="width: 75%;" class="px-5 w-sm-100 pad-sm-0 overflow-visible d-flex align-items-center justify-content-center flex-column overflow-visible" style="top: 0;" id="Second">
            <br><br>
            <div class="">
                <h1 class="fs-1 text-unbounded text-blue fil"><?php echo ($l == 1) ? "Cine suntem noi?" : "Who are we?"; ?></h1>
                <p class="text-justify text-blue-light fs-4 fib"><?php echo ($l == 1) ? "📍În orașul lui 𝐁𝐫â𝐧𝐜𝐮ș𝐢, pe porțile 𝐂𝐨𝐥𝐞𝐠𝐢𝐮𝐥𝐮𝐢 𝐍𝐚ț𝐢𝐨𝐧𝐚𝐥 `𝐓𝐮𝐝𝐨𝐫 𝐕𝐥𝐚𝐝𝐢𝐦𝐢𝐫𝐞𝐬𝐜𝐮` povestea noastră începe. 📖<br>🦖Numele nostru este 𝐓𝐄𝐀-𝐁𝐎𝐑𝐆𝐒, o echipă de robotică care în călătoria sa spre excelență, se concentrează pe dezvoltarea abilităților tehnice, cât și a celor non-tehnice, precum lucrul în echipă, comunicarea și rezolvarea creativă a problemelor. 💙<br>☀️Țelul nostru este crearea unui mediu 𝐢𝐧𝐜𝐥𝐮𝐬𝐢𝐯 și 𝐬𝐭𝐢𝐦𝐮𝐥𝐚𝐭𝐢𝐯, unde spiritul de echipă de echipă să prospere și creativitatea fiecărui membru să fie susținută și încurajată.🌍<br>🍵Deviza noastră 𝐒𝐂𝐈𝐄𝐍𝐂𝐄 𝐈𝐍 𝐀 𝐂𝐔𝐏 𝐎𝐅 𝐓𝐄𝐀 înglobează credința noastră în fuziunea dintre 𝐢𝐧𝐨𝐯𝐚ț𝐢𝐞 și 𝐭𝐫𝐚𝐝𝐢ț𝐢𝐞. La fel ca și cea mai bună ceașcă de ceai care amestecă diferite elemente pentru a crea armonie, echipa noastră adună perspective și idei diverse pentru a crea ceva extraordinar.🇷🇴" : "📍In the city of 𝐁𝐫â𝐧𝐜𝐮ș𝐢, at the gates of `𝐓𝐮𝐝𝐨𝐫 𝐕𝐥𝐚𝐝𝐢𝐦𝐢𝐫𝐞𝐬𝐜𝐮` 𝐍𝐚𝐭𝐢𝐨𝐧𝐚𝐥 𝐂𝐨𝐥𝐥𝐞𝐠𝐞, our story begins. 📖<br>🦖Our name is 𝐓𝐄𝐀-𝐁𝐎𝐑𝐆𝐒, a robotics team that on its journey towards excellence, focuses on developing both technical skills, as well as non-technical ones, such as teamwork, communication, and creative problem-solving. 💙<br>☀️Our goal is to create an 𝐢𝐧𝐜𝐥𝐮𝐬𝐢𝐯𝐞 and 𝐬𝐭𝐢𝐦𝐮𝐥𝐚𝐭𝐢𝐧𝐠 environment, where the team spirit thrives and the creativity of each member is supported and encouraged. 🌍<br>🍵Our motto 𝐒𝐂𝐈𝐄𝐍𝐂𝐄 𝐈𝐍 𝐀 𝐂𝐔𝐏 𝐎𝐅 𝐓𝐄𝐀 encapsulates our belief in the fusion of 𝐢𝐧𝐧𝐨𝐯𝐚𝐭𝐢𝐨𝐧 and 𝐭𝐫𝐚𝐝𝐢𝐭𝐢𝐨𝐧. Just like the finest cup of tea blends different elements to create harmony, our team gathers diverse perspectives and ideas to create something extraordinary. 🇷🇴"; ?></p>
            </div>
            <div class="">
                <h1 class="fs-1 text-unbounded text-blue fil"><?php echo ($l == 1) ? "Ce este FTC?" : "What is FTC?"; ?></h1>
                <p class="text-justify text-blue-light fs-4 fib"><?php echo ($l == 1) ? "🤖𝐈𝐭’𝐬 𝐰𝐚𝐲 𝐦𝐨𝐫𝐞 𝐭𝐡𝐚𝐧 𝐛𝐮𝐢𝐥𝐝𝐢𝐧𝐠 𝐫𝐨𝐛𝐨𝐭𝐬. 𝐅𝐈𝐑𝐒𝐓 𝐓𝐞𝐜𝐡 𝐂𝐡𝐚𝐥𝐥𝐞𝐧𝐠𝐞 îi provoacă pe tinerii să proiecteze, să construiască, să programeze și să opereze roboți pentru a concura față în față într-un format de alianță, totul în timp ce păstrează legătura cu comunitatea lor locală prin evenimente de outreach.🏁<br>🎮Fiecare an aduce provocări unice; de exemplu, tema acestui an, 𝐂𝐄𝐍𝐓𝐄𝐑𝐒𝐓𝐀𝐆𝐄, nu numai că a evidențiat 𝐀-ul din 𝐒𝐓𝐄𝐀𝐌, dar a împins și echipele să abordeze mai multe sarcini noi în cadrul jocului, amplificând nivelul de 𝐝𝐢𝐟𝐢𝐜𝐮𝐥𝐭𝐚𝐭𝐞 și 𝐜𝐫𝐞𝐚𝐭𝐢𝐯𝐢𝐭𝐚𝐭𝐞𝐚 necesare.🎉" : "🤖𝐈𝐭’𝐬 𝐰𝐚𝐲 𝐦𝐨𝐫𝐞 𝐭𝐡𝐚𝐧 𝐛𝐮𝐢𝐥𝐝𝐢𝐧𝐠 𝐫𝐨𝐛𝐨𝐭𝐬. 𝐅𝐈𝐑𝐒𝐓 𝐓𝐞𝐜𝐡 𝐂𝐡𝐚𝐥𝐥𝐞𝐧𝐠𝐞 challenges young individuals to design, build, program, and operate robots to compete in a head-to-head challenge in an alliance format, all while keeping in touch with their local community through outreach events.🏁<br>🎮Each year presents unique challenges; for instance, this year's theme 𝐂𝐄𝐍𝐓𝐄𝐑𝐒𝐓𝐀𝐆𝐄 not only highlighted the 𝐀 in 𝐒𝐓𝐄𝐀𝐌 but also pushed teams to tackle multiple new tasks within the game, amplifying the 𝐜𝐡𝐚𝐥𝐥𝐞𝐧𝐠𝐞 and 𝐜𝐫𝐞𝐚𝐭𝐢𝐯𝐢𝐭𝐲 required.🎉"; ?></p>
            </div>
            <div class="">
                <h1 class="fs-1 text-unbounded text-blue fil"><?php echo ($l == 1) ? "Care este scopul nostru?" : "What is our goal?"; ?></h1>
                <p class="text-justify text-blue-light fs-4 fib"><?php echo ($l == 1) ? "🦖Prin implicarea noastră în comunitatea locală , ne-am propus să 𝐢𝐧𝐬𝐩𝐢𝐫ă𝐦 cât mai multe persoane să își urmeze pasiunile în domeniul 𝐒𝐓𝐄𝐀𝐌 (𝐒𝐜𝐢𝐞𝐧𝐜𝐞, 𝐓𝐞𝐜𝐡𝐧𝐨𝐥𝐨𝐠𝐲, 𝐄𝐧𝐠𝐢𝐧𝐞𝐞𝐫𝐢𝐧𝐠, 𝐀𝐫𝐭𝐬 𝐚𝐧𝐝 𝐌𝐚𝐭𝐡𝐞𝐦𝐚𝐭𝐢𝐜𝐬) și să își dezvolte abilitățile tehnice, prin organizarea de evenimente de informare și workshop-uri pentru elevii de toate vârstele . 🔭💻🛠️🎨📐<br>📌În concluzie, 𝐓𝐄𝐀-𝐁𝐎𝐑𝐆𝐒 este mult mai mult decât o echipa de robotică. Este o 𝐟𝐚𝐦𝐢𝐥𝐢𝐞, o 𝐜𝐨𝐦𝐮𝐧𝐢𝐭𝐚𝐭𝐞, care are ca obiectiv să 𝐢𝐧𝐬𝐩𝐢𝐫𝐞 și să 𝐞𝐝𝐮𝐜𝐞 𝐮𝐫𝐦ă𝐭𝐨𝐚𝐫𝐞𝐚 𝐠𝐞𝐧𝐞𝐫𝐚ț𝐢𝐞 𝐝𝐞 𝐢𝐧𝐨𝐯𝐚𝐭𝐨𝐫𝐢 î𝐧 𝐭𝐞𝐡𝐧𝐨𝐥𝐨𝐠𝐢𝐞, dar și să devină un exemplu pentru comunitatea de robotică.🤝" : "🦖By engaging in our local community, we aim to 𝐢𝐧𝐬𝐩𝐢𝐫𝐞 as many individuals as possible to pursue their passions in the fields of 𝐒𝐓𝐄𝐀𝐌 (𝐒𝐜𝐢𝐞𝐧𝐜𝐞, 𝐓𝐞𝐜𝐡𝐧𝐨𝐥𝐨𝐠𝐲, 𝐄𝐧𝐠𝐢𝐧𝐞𝐞𝐫𝐢𝐧𝐠, 𝐀𝐫𝐭𝐬 𝐚𝐧𝐝 𝐌𝐚𝐭𝐡𝐞𝐦𝐚𝐭𝐢𝐜𝐬) and to develop their technical skills by organizing informational events and workshops for students of all ages.🔭💻🛠️🎨📐<br>📌In conclusion, 𝐓𝐄𝐀-𝐁𝐎𝐑𝐆𝐒  is much more than a robotics team. It's a 𝐟𝐚𝐦𝐢𝐥𝐲, a 𝐜𝐨𝐦𝐦𝐮𝐧𝐢𝐭𝐲, whose objective is to 𝐢𝐧𝐬𝐩𝐢𝐫𝐞 and 𝐞𝐝𝐮𝐜𝐚𝐭𝐞 the 𝐟𝐮𝐭𝐮𝐫𝐞 𝐠𝐞𝐧𝐞𝐫𝐚𝐭𝐢𝐨𝐧 𝐨𝐟 𝐢𝐧𝐧𝐨𝐯𝐚𝐭𝐨𝐫𝐬 𝐢𝐧 𝐭𝐞𝐜𝐡𝐧𝐨𝐥𝐨𝐠𝐲, as well as to become an example for the robotics community.🤝"?></p>
            </div>
            <br><br>
        </div>
    </section>


    <?php include_once("static/pages/footer.php"); ?>


    <script src="/static/scripts.js?loc=<?php echo $router['page']; ?>"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
