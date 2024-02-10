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
    $db['table'] = "awards";

    /* init connection */
    $conn = mysqli_connect($db['server'], $db['user'], $db['password'], $db['name']);
    /* check connection activity */
    if (!$conn) {
        if ($db['mentenanta'] == true) echo "Website-ul este momentan în mentenanță. Revino mai tărziu!";
        echo "Conexiunea a eșuat!";
    }

    /* routing pages for future interactions */
    $router['page'] = 'awards';
    $router['logo'] = 'logo-v2-2024';
    $router['lang'] = $l = (isset($_COOKIE['language'])) ? $_COOKIE['language'] : 1;

    $years_of_activity = array("2019", "2020", "2021", "2022", "2023", "2024");
    $year = (isset($_GET['y']) && in_array($_GET['y'], $years_of_activity)) ? $_GET['y'] : "2023";

    if (!isset($_GET['y']) || !in_array($_GET['y'], $years_of_activity))
        header("Location: /awards/2023");
?>
<!DOCTYPE html>
<html lang="<?php echo ($l == 1) ? "ro" : "en"; ?>">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- HTML Title Tag --->
    <title>Our Awards From Season <?php echo ($year - 1) . " - " . $year; ?> - Tea Borgs #19121 | RO087 - Romanian Robotics Team</title>
    <!-- Favicon / Page Icon Link Tag --->
    <link rel="icon" type="image/x-icon" href="/static/logo/<?php echo $router['logo'] . '.ico'; ?>">
    
    <!-- HTML Meta Tags --->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="robotics, computer science, tea borgs, 19121, RO087">
    <meta name="description" content="Our Awards From Season <?php echo ($year - 1) . " - " . $year; ?> - Tea Borgs #19121 | RO087 - Science in a cup of tea! Romanian Robotics Team from Colegiul Național Tudor Vladimirescu, Gorj, Târgu Jiu">
    <!-- Google / Search Engine Meta Tags --->
    <meta itemprop="name" content="Our Awards From Season <?php echo ($year - 1) . " - " . $year; ?> - Tea Borgs #19121 | RO087 - Romanian Robotics Team">
    <meta itemprop="image" content="/static/logo/<?php echo $router['logo'] . '.png'; ?>">
    <meta itemprop="description" content="Our Awards From Season <?php echo ($year - 1) . " - " . $year; ?> - Tea Borgs #19121 | RO087 - Science in a cup of tea! Romanian Robotics Team from Colegiul Național Tudor Vladimirescu, Gorj, Târgu Jiu">
    <!-- Facebook Meta Tags --->
    <meta property="og:type" content="website">
    <meta property="og:url" content="/">
    <meta property="og:title" content="Our Awards From Season <?php echo ($year - 1) . " - " . $year; ?> - Tea Borgs #19121 | RO087 - Romanian Robotics Team">
    <meta property="og:image" content="/static/logo/<?php echo $router['logo'] . '.png'; ?>">
    <meta property="og:description" content="Our Awards From Season <?php echo ($year - 1) . " - " . $year; ?> - Tea Borgs #19121 | RO087 - Science in a cup of tea! Romanian Robotics Team from Colegiul Național Tudor Vladimirescu, Gorj, Târgu Jiu">
    <!-- Twitter Meta Tags --->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Our Awards From Season <?php echo ($year - 1) . " - " . $year; ?> - Tea Borgs #19121 | RO087 - Romanian Robotics Team">
    <meta name="twitter:image" content="/static/logo/<?php echo $router['logo'] . '.png'; ?>">
    <meta name="twitter:description" content="Our Awards From Season <?php echo ($year - 1) . " - " . $year; ?> - Tea Borgs #19121 | RO087 - Science in a cup of tea! Romanian Robotics Team from Colegiul Național Tudor Vladimirescu, Gorj, Târgu Jiu">

    <!-- Libraries Import Link Tags --->
    <link href="/static/styles.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <style> @media (max-width: 991.98px) { .w-sm-100 { width: 90% !important; } .w-md-100 { width: 100% !important; } } </style>
</head>
<body class="tb-background overflow-x-hidden">
    <section class="tb-half-hero overflow-hidden">
       

        <?php include_once("static/pages/navbar.php"); ?>


        <h1 class="text-unbounded text-center justify-content-center text-white mt-5 d-flex align-items-center gap-2 fl-cont"><?php echo ($l == 1) ? "Vizualizezi premiile noastre din sezonul" : "You are viewing our awards from season"; ?>
        <select class="form-select form-select-lg text-unbounded text-blue w-sm-100" style="width: auto;" id="year">
                <!-- <option class="text-unbounded" value="2024" <?php if ($year == '2024') echo "selected"; ?>>2023 - 2024</option> -->
                <option class="text-unbounded" value="2023" <?php if ($year == '2023') echo "selected"; ?>>2022 - 2023</option>
                <option class="text-unbounded" value="2022" <?php if ($year == '2022') echo "selected"; ?>>2021 - 2022</option>
                <option class="text-unbounded" value="2021" <?php if ($year == '2021') echo "selected"; ?>>2020 - 2021</option>
                <option class="text-unbounded" value="2020" <?php if ($year == '2020') echo "selected"; ?>>2019 - 2020</option>
                <option class="text-unbounded" value="2019" <?php if ($year == '2019') echo "selected"; ?>>2018 - 2019</option>
        </select></h1>
        <div class="w-75 m-auto d-flex flex-column justify-content-between align-items-start gap-3 flex-wrap"  id="Second">
            <?php
                /* variable used to create multiple instances of same content */
                $contor = 0;
                $gallery = mysqli_query($conn, "SELECT * FROM `" . $db['table'] . "` WHERE `an` LIKE '%" . $year . "%' ORDER BY `poza`, `imp` DESC");
                /* loop through all content inside db */
                while ($cont = mysqli_fetch_assoc($gallery)) {
                    $contor = $contor + 1;
                    $nume = $cont['nume'];
                    $poza = $cont['poza'];
                    $an = $cont['an'];
            ?>
            
            <h1 class="text-white text-unbounded text-justify <?php if ($contor % 2) echo "fir"; else echo "fil"; ?>"><img alt="" src="/static/icons/icons8-medal-<?php if ($poza == 'gold') echo "first"; else if ($poza == 'silver') echo "second"; else echo "third"; ?>-place-96.png" style="width: 64px !important; height: 64px !important;"><?php echo $nume; ?></h1>
            <?php
                }
            ?>
        
        </div>
        <!-- <h1 class="text-white text-unbounded text-center mt-5">Awards Gallery:</h1>
        <div class="w-75 mt-5 m-auto d-flex flex-column justify-content-between align-items-start gap-3 flex-wrap">
            <div class="w-100 m-auto d-flex justify-content-between align-items-center gap-3 flex-wrap">
                <img src="static/awards-photos/d1.png" alt="" class="w-20" style="aspect-ratio: 1/1; object-fit: contain;">
                <img src="static/awards-photos/d2.png" alt="" class="w-20" style="aspect-ratio: 1/1; object-fit: contain;">
                <img src="static/awards-photos/t1.png" alt="" class="w-20" style="aspect-ratio: 1/1; object-fit: contain;">
                <img src="static/awards-photos/d3.png" alt="" class="w-20" style="aspect-ratio: 1/1; object-fit: contain;">
            </div>
        </div> -->
    </section>


    <?php include_once("static/pages/footer.php"); ?>


    <script src="/static/scripts.js?loc=<?php echo $router['page']; ?>"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>