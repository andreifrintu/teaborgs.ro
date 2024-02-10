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
    $db['table'] = "map";

    /* init connection */
    $conn = mysqli_connect($db['server'], $db['user'], $db['password'], $db['name']);
    /* check connection activity */
    if (!$conn) {
        if ($db['mentenanta'] == true) echo "Website-ul este momentan în mentenanță. Revino mai tărziu!";
        echo "Conexiunea a eșuat!";
    }

    /* routing pages for future interactions */
    $router['page'] = 'map';
    $router['logo'] = 'logo-v2-2024';
    $router['lang'] = $l = (isset($_COOKIE['language'])) ? $_COOKIE['language'] : 1;

?>
<!DOCTYPE html>
<html lang="<?php echo ($l == 1) ? "ro" : "en"; ?>">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- HTML Title Tag --->
    <title>Our Friends Map - Tea Borgs #19121 | RO087 - Romanian Robotics Team</title>
    <!-- Favicon / Page Icon Link Tag --->
    <link rel="icon" type="image/x-icon" href="/static/logo/<?php echo $router['logo'] . '.ico'; ?>">
    
    <!-- HTML Meta Tags --->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="robotics, computer science, tea borgs, 19121, RO087">
    <meta name="description" content="Our Friends Map - Tea Borgs #19121 | RO087 - Science in a cup of tea! Romanian Robotics Team from Colegiul Național Tudor Vladimirescu, Gorj, Târgu Jiu">
    <!-- Google / Search Engine Meta Tags --->
    <meta itemprop="name" content="Our Friends Map - Tea Borgs #19121 | RO087 - Romanian Robotics Team">
    <meta itemprop="image" content="/static/logo/<?php echo $router['logo'] . '.png'; ?>">
    <meta itemprop="description" content="Our Friends Map - Tea Borgs #19121 | RO087 - Science in a cup of tea! Romanian Robotics Team from Colegiul Național Tudor Vladimirescu, Gorj, Târgu Jiu">
    <!-- Facebook Meta Tags --->
    <meta property="og:type" content="website">
    <meta property="og:url" content="/">
    <meta property="og:title" content="Our Friends Map - Tea Borgs #19121 | RO087 - Romanian Robotics Team">
    <meta property="og:image" content="/static/logo/<?php echo $router['logo'] . '.png'; ?>">
    <meta property="og:description" content="Our Friends Map - Tea Borgs #19121 | RO087 - Science in a cup of tea! Romanian Robotics Team from Colegiul Național Tudor Vladimirescu, Gorj, Târgu Jiu">
    <!-- Twitter Meta Tags --->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Our Friends Map - Tea Borgs #19121 | RO087 - Romanian Robotics Team">
    <meta name="twitter:image" content="/static/logo/<?php echo $router['logo'] . '.png'; ?>">
    <meta name="twitter:description" content="Our Friends Map - Tea Borgs #19121 | RO087 - Science in a cup of tea! Romanian Robotics Team from Colegiul Național Tudor Vladimirescu, Gorj, Târgu Jiu">

    <!-- Libraries Import Link Tags --->
    <link href="/static/styles.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link href='https://unpkg.com/maplibre-gl@3.3.1/dist/maplibre-gl.css' rel='stylesheet'>
    <script src='https://unpkg.com/maplibre-gl@3.3.1/dist/maplibre-gl.js'></script>
    <style>@media (max-width: 991.98px) { .pad-sm-0 { padding: 0 !important; } }</style>
</head>
<body class="tb-background overflow-x-hidden">


    <section class="tb-hero overflow-hidden">
        
    
        <?php include_once("static/pages/navbar.php"); ?>


        <div class="d-flex fl-cont align-items-center justify-content-center position-absolute w-md-100" style="width: 100%; height: 100%; top: 0;">
            <div id="map" style="width: 100% !important; height: 80% !important;"></div>
            <script>
                const map = new maplibregl.Map({
                    container: 'map',
                    style: 'https://api.maptiler.com/maps/streets/style.json?key=Lb7pFg7y9vYzpCGtLbmm',
                    center: [25, 46],
                    zoom: 6.5
                });
                
                const geojson = {
                    'type': 'FeatureCollection',
                    'features': [
                        <?php
                        
                            $contor = 0;
                            $map = mysqli_query($conn, "SELECT * FROM `" . $db['table'] . "` ORDER BY `id` DESC");
                            
                            while ($cont = mysqli_fetch_assoc($map)) {
                                $contor = $contor + 1;
                                $nume = $cont['nume'];
                                $url = $cont['url'];
                                $poza = $cont['poza'];
                                $coord = $cont['coord'];
                                
                                echo "{
                                    'type': 'Feature',
                                    'properties': {
                                        'name': '" . $nume . "',
                                        'url': '" . $url . "',
                                        'photo': '" . $poza . "',
                                        'size': [70, 70]
                                    },
                                    'geometry': {
                                        'type': 'Point',
                                        'coordinates': [" . $coord . "]
                                    }
                                },";
                            }
                        ?>
                    ]
                };
        
                geojson.features.forEach((marker) => {
                    const markerElement = document.createElement('div');
                    markerElement.className = 'marker';
                    markerElement.title = marker.properties.name;
                    markerElement.style.backgroundImage = `url('${marker.properties.photo}')`;
                    markerElement.style.width = `${marker.properties.size[0]}px`;
                    markerElement.style.height = `${marker.properties.size[1]}px`;
                    markerElement.style.backgroundSize = 'cover';
                    markerElement.style.cursor = 'pointer';
            
                    markerElement.addEventListener('click', () => {
                        window.location.replace(marker.properties.url);
                    });
            
                    new maplibregl.Marker({element: markerElement}).setLngLat(marker.geometry.coordinates).addTo(map);
                });
            </script>
        </div>
        <div class="w-100 d-flex align-items-center justify-content-center position-absolute gap-2" style="height: 10%; bottom: 0 !important;">
            <a href="#signin" class="text-white fs-4">Înscrieți-vă echipa pe website-ul nostrul! <img width="48px" height="48px" src="https://img.icons8.com/ios-glyphs/90/FFFFFF/thick-arrow-pointing-down.png" alt=""></a>
        </div>
    </section>
    
    <section class="tb-half-hero overflow-hidden d-flex justify-content-center align-items-center py-5" id="signin">
        <?php
        
            if (isset($_POST['team']) && isset($_POST['coord']) && isset($_POST['url'])) {
                /* Gather data sent by the user */
                $team = mysqli_real_escape_string($conn, $_POST['team']);
                $url = mysqli_real_escape_string($conn, $_POST['url']);
                $code = mysqli_real_escape_string($conn, sha1(mt_rand(100000, 999999)));
                $photo = "/static/map-photos/" . $code . ".png";
                $coord = mysqli_real_escape_string($conn, $_POST['coord']);
            
                if ($_FILES['photo']['error'] === UPLOAD_ERR_OK) {
                    $tempFile = $_FILES['photo']['tmp_name'];
                    $targetFile = $_SERVER['DOCUMENT_ROOT'] . $photo;
                    
                    if (move_uploaded_file($tempFile, $targetFile))
                        mysqli_query($conn, "INSERT INTO `map`(`nume`, `url`, `poza`, `coord`) VALUES ('$team', '$url', '$photo', '$coord')");
                }
            }
            
        ?>
        <form method="POST" class="w-75 text-center" id="Second" style="visibility: hidden;" enctype="multipart/form-data">
            <h1 class="text-unbounded text-white"><?php echo ($l == 1) ? "Înscrieți-vă echipa pe website-ul nostru!" : "Sign your team on our website!"; ?></h1>
            <input required name="team" class="form-control form-control-lg mb-2" type="text" placeholder="<?php echo ($l == 1) ? "Informațiile echipei" : "Team information"; ?> - Format: Tea Borgs #19121 | RO087">
            <input required name="url" class="form-control form-control-lg mb-2" type="url" placeholder="<?php echo ($l == 1) ? "Pagina web / Rețea socială" : "Team website / Social Network"; ?> - Format: https://teaborgs.ro/">
            <input required name="photo" class="form-control form-control-lg mb-2" type="file" accept="image/png" placeholder="<?php echo ($l == 1) ? "Sigla echipei" : "Team logo"; ?> (png)">
            <input required name="coord" class="form-control form-control-lg mb-2" type="text" placeholder="<?php echo ($l == 1) ? "Coordonatele școlii / sediului echipei" : "Team school / HQ coordinates"; ?> - Format: 23.273869950499023, 45.0373408489883">
            <button style="width: 75%;" class="w-sm-100 btn btn-lg fw-bold btn-outline-light text-unbounded" type="submit">Submit form</button>
        </form>
    </section>

    <?php include_once("static/pages/footer.php"); ?>


    <script src="/static/scripts.js?loc=<?php echo $router['page']; ?>"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>