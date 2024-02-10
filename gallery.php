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
    $db['table'] = "gallery";

    /* init connection */
    $conn = mysqli_connect($db['server'], $db['user'], $db['password'], $db['name']);
    /* check connection activity */
    if (!$conn) {
        if ($db['mentenanta'] == true) echo "Website-ul este momentan în mentenanță. Revino mai tărziu!";
        echo "Conexiunea a eșuat!";
    }

    /* routing pages for future interactions */
    $router['page'] = 'gallery';
    $router['logo'] = 'logo-v2-2024';
    $router['lang'] = $l = (isset($_COOKIE['language'])) ? $_COOKIE['language'] : 1;

?>
<!DOCTYPE html>
<html lang="<?php echo ($l == 1) ? "ro" : "en"; ?>">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- HTML Title Tag --->
    <title>Gallery & Photos - Tea Borgs #19121 | RO087 - Romanian Robotics Team</title>
    <!-- Favicon / Page Icon Link Tag --->
    <link rel="icon" type="image/x-icon" href="/static/logo/<?php echo $router['logo'] . '.ico'; ?>">
    
    <!-- HTML Meta Tags --->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="robotics, computer science, tea borgs, 19121, RO087">
    <meta name="description" content="Gallery & Photos - Tea Borgs #19121 | RO087 - Science in a cup of tea! Romanian Robotics Team from Colegiul Național Tudor Vladimirescu, Gorj, Târgu Jiu">
    <!-- Google / Search Engine Meta Tags --->
    <meta itemprop="name" content="Gallery & Photos - Tea Borgs #19121 | RO087 - Romanian Robotics Team">
    <meta itemprop="image" content="/static/logo/<?php echo $router['logo'] . '.png'; ?>">
    <meta itemprop="description" content="Gallery & Photos - Tea Borgs #19121 | RO087 - Science in a cup of tea! Romanian Robotics Team from Colegiul Național Tudor Vladimirescu, Gorj, Târgu Jiu">
    <!-- Facebook Meta Tags --->
    <meta property="og:type" content="website">
    <meta property="og:url" content="/">
    <meta property="og:title" content="Gallery & Photos - Tea Borgs #19121 | RO087 - Romanian Robotics Team">
    <meta property="og:image" content="/static/logo/<?php echo $router['logo'] . '.png'; ?>">
    <meta property="og:description" content="Gallery & Photos - Tea Borgs #19121 | RO087 - Science in a cup of tea! Romanian Robotics Team from Colegiul Național Tudor Vladimirescu, Gorj, Târgu Jiu">
    <!-- Twitter Meta Tags --->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Gallery & Photos - Tea Borgs #19121 | RO087 - Romanian Robotics Team">
    <meta name="twitter:image" content="/static/logo/<?php echo $router['logo'] . '.png'; ?>">
    <meta name="twitter:description" content="Gallery & Photos - Tea Borgs #19121 | RO087 - Science in a cup of tea! Romanian Robotics Team from Colegiul Național Tudor Vladimirescu, Gorj, Târgu Jiu">

    <!-- Libraries Import Link Tags --->
    <link href="/static/styles.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <style> @media (max-width: 991.98px) { .w-sm-100 { width: 90% !important; } .w-md-100 { width: 100% !important; } } </style>
</head>
<body class="tb-background overflow-x-hidden">
    <section class="tb-hero overflow-hidden" style="background: url(/static/pages/index.png); background-attachment: fixed; background-position: center; background-repeat: no-repeat; background-size: cover;">
        
    
        <?php include_once("static/pages/navbar.php"); ?>
        
        
    </section>

    <section class="tb-hero position-relative w-75 w-sm-100 m-auto d-flex flex-column gap-3 flex-wrap" id="Second">
        <div class="d-flex mt-5 align-items-center justify-content-between flex-wrap gap-3 w-md-100">

            <?php
                /* variable used to create multiple instances of same content */
                $contor = 0;
                $gallery = mysqli_query($conn, "SELECT * FROM `" . $db['table'] . "` ORDER BY `an` DESC");
                /* loop through all content inside db */
                while ($cont = mysqli_fetch_assoc($gallery)) {
                    $contor = $contor + 1;
                    $nume = $cont['nume'];
                    $poza = $cont['poza'];
                    $desc = $cont['descriere'];
                    $imgs = $cont['imagini'];
                    $data = date("d M Y", strtotime($cont['an']));
                    
                    // echo "/static/gallery-photos/" . $contor . "/" . $contor . "-1.jpg";

                    // for ($i = 1; $i <= $poza; $i++) {
                    //     echo "&lt;img class='w-100' src='/static/gallery-photos/" . $contor . "/" . $contor . "-" . $i . ".jpg'><br>";
                    // }
            ?>

            <div class="w-23 w-md-100 d-flex flex-column rounded border border-2 border-white bg-white <?php
                $elementsPerRow = 4;
                
                if ($contor % $elementsPerRow == 1) echo "fil";
                else if ($contor % $elementsPerRow == 0) echo "fir";
                else echo "fib";
                
            ?>" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvas<?php echo $contor; ?>" aria-controls="offcanvas<?php echo $contor; ?>" style="min-height: 420px;" id="Third<? echo $contor; ?>">
                <div style="background-image: url('<?php echo $poza;?>'); background-size: cover; background-position: center; min-height: 300px; aspect-ratio: 1/1 !important;"></div>
                <h2 class="text-center text-blue fs-5 px-1"><?php echo $nume; ?></h2>
                <h5 class="text-center text-secondary fw-bold fs-6"><?php echo $data; ?></h5>
            </div>
            <div class="offcanvas offcanvas-start w-100" data-bs-backdrop="static" tabindex="-1" id="offcanvas<?php echo $contor; ?>">
                <div class="offcanvas-header">
                    <h1 class="offcanvas-title text-blue text-unbounded"><?php echo $nume; ?></h1>
                    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                    <div class="w-75 m-auto d-flex flex-column justify-content-between align-items-start gap-3 flex-wrap">
                        <p class="text-justify fs-4" style="color: var(--celtic-blue-2);"><?php echo $desc; ?></p>
                        <div class="w-100 m-auto d-flex justify-content-between align-items-center gap-3 flex-wrap"><?php echo $imgs; ?></div>
                    </div>
                </div>
            </div>

            <?php
                }
            ?>
        
            <input type="hidden" value="<?php echo $contor; ?>" id="ThirdCounter">

        </div>
    </section>


    <?php include_once("static/pages/footer.php"); ?>


    <script src="/static/scripts.js?loc=<?php echo $router['page']; ?>"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>