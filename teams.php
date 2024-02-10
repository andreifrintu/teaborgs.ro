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
    $db['table'] = "members";

    /* init connection */
    $conn = mysqli_connect($db['server'], $db['user'], $db['password'], $db['name']);
    /* check connection activity */
    if (!$conn) {
        if ($db['mentenanta'] == true) echo "Website-ul este momentan în mentenanță. Revino mai tărziu!";
        echo "Conexiunea a eșuat!";
    }

    /* routing pages for future interactions */
    $router['page'] = 'teams';
    $router['logo'] = 'logo-v2-2024';
    $router['lang'] = $l = (isset($_COOKIE['language'])) ? $_COOKIE['language'] : 1;

    $years_of_activity = array("2019", "2020", "2021", "2022", "2023", "2024");
    $year = (isset($_GET['y']) && in_array($_GET['y'], $years_of_activity)) ? $_GET['y'] : "2023";

    if (!isset($_GET['y']) || !in_array($_GET['y'], $years_of_activity))
        header("Location: /team/2023");
?>
<!DOCTYPE html>
<html lang="<?php echo ($l == 1) ? "ro" : "en"; ?>">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- HTML Title Tag --->
    <title>Our Team Members From Season <?php echo ($year - 1) . " - " . $year; ?> - Tea Borgs #19121 | RO087 - Romanian Robotics Team</title>
    <!-- Favicon / Page Icon Link Tag --->
    <link rel="icon" type="image/x-icon" href="/static/logo/<?php echo $router['logo'] . '.ico'; ?>">
    
    <!-- HTML Meta Tags --->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="robotics, computer science, tea borgs, 19121, RO087">
    <meta name="description" content="Our Team Members From Season <?php echo ($year - 1) . " - " . $year; ?> - Tea Borgs #19121 | RO087 - Science in a cup of tea! Romanian Robotics Team from Colegiul Național Tudor Vladimirescu, Gorj, Târgu Jiu">
    <!-- Google / Search Engine Meta Tags --->
    <meta itemprop="name" content="Our Team Members From Season <?php echo ($year - 1) . " - " . $year; ?> - Tea Borgs #19121 | RO087 - Romanian Robotics Team">
    <meta itemprop="image" content="/static/logo/<?php echo $router['logo'] . '.png'; ?>">
    <meta itemprop="description" content="Our Team Members From Season <?php echo ($year - 1) . " - " . $year; ?> - Tea Borgs #19121 | RO087 - Science in a cup of tea! Romanian Robotics Team from Colegiul Național Tudor Vladimirescu, Gorj, Târgu Jiu">
    <!-- Facebook Meta Tags --->
    <meta property="og:type" content="website">
    <meta property="og:url" content="/">
    <meta property="og:title" content="Our Team Members From Season <?php echo ($year - 1) . " - " . $year; ?> - Tea Borgs #19121 | RO087 - Romanian Robotics Team">
    <meta property="og:image" content="/static/logo/<?php echo $router['logo'] . '.png'; ?>">
    <meta property="og:description" content="Our Team Members From Season <?php echo ($year - 1) . " - " . $year; ?> - Tea Borgs #19121 | RO087 - Science in a cup of tea! Romanian Robotics Team from Colegiul Național Tudor Vladimirescu, Gorj, Târgu Jiu">
    <!-- Twitter Meta Tags --->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Our Team Members From Season <?php echo ($year - 1) . " - " . $year; ?> - Tea Borgs #19121 | RO087 - Romanian Robotics Team">
    <meta name="twitter:image" content="/static/logo/<?php echo $router['logo'] . '.png'; ?>">
    <meta name="twitter:description" content="Our Team Members From Season <?php echo ($year - 1) . " - " . $year; ?> - Tea Borgs #19121 | RO087 - Science in a cup of tea! Romanian Robotics Team from Colegiul Național Tudor Vladimirescu, Gorj, Târgu Jiu">

    <!-- Libraries Import Link Tags --->
    <link href="/static/styles.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <style> @media (max-width: 991.98px) { .w-sm-100 { width: 90% !important; } .w-md-100 { width: 100% !important; } } </style>
</head>
<body class="tb-background overflow-x-hidden">
    <section class="tb-hero overflow-hidden">
        
        
        <?php include_once("static/pages/navbar.php"); ?>


        <h1 class="text-unbounded text-center text-white mt-5"><?php echo ($l == 1) ? "Mentorii noștrii" : "Our mentors"; ?></h1>
        <div class="d-flex w-75 w-sm-100 m-auto gap-2 mt-5 fl-cont" id="Second">
            <div class="w-50 w-md-100 bg-white d-flex align-items-center justify-content-end border border-2 rounded fl-cont fil" style="min-height: 300px;">
                <div class="w-50 text-center">
                    <h1 class="text-blue fw-bold">Eugen Nodea</h1>
                </div>
                <div class="w-50 w-md-100 h-300" style="background-image: url('/static/member-photos/nodea.webp'); background-size: cover; background-position: center; min-height: 100%;"></div>
            </div>
            <div class="w-50 w-md-100 bg-white d-flex align-items-center justify-content-start border border-2 rounded fl-cont fir" style="min-height: 300px;">
                <div class="w-50 w-md-100 h-300" style="background-image: url('/static/member-photos/stoian.webp'); background-size: cover; background-position: center; min-height: 100%;"></div>
                <div class="w-50 text-center">
                    <h1 class="text-blue fw-bold">Mirel Stoian</h1>
                </div>
            </div>
        </div>
        <h1 class="text-unbounded text-center justify-content-center text-white mt-5 d-flex align-items-center gap-2 fl-cont"><?php echo ($l == 1) ? "Vizualizezi echipa noastră din sezonul" : "You are viewing our team from season"; ?>
        <select class="form-select form-select-lg text-unbounded text-blue w-sm-100" style="width: auto;" id="year">
                <option class="text-unbounded" value="2024" <?php if ($year == '2024') echo "selected"; ?>>2023 - 2024</option>
                <option class="text-unbounded" value="2023" <?php if ($year == '2023') echo "selected"; ?>>2022 - 2023</option>
                <option class="text-unbounded" value="2022" <?php if ($year == '2022') echo "selected"; ?>>2021 - 2022</option>
                <option class="text-unbounded" value="2021" <?php if ($year == '2021') echo "selected"; ?>>2020 - 2021</option>
                <option class="text-unbounded" value="2020" <?php if ($year == '2020') echo "selected"; ?>>2019 - 2020</option>
                <option class="text-unbounded" value="2019" <?php if ($year == '2019') echo "selected"; ?>>2018 - 2019</option>
        </select></h1>
        <div class="w-75 w-sm-100 m-auto d-flex justify-content-between align-items-center gap-3 flex-wrap fl-cont" id="Thrid">
            <?php
                /* variable used to create multiple instances of same content */
                $contor = 0;
                $members = mysqli_query($conn, "SELECT * FROM `" . $db['table'] . "` WHERE `an` LIKE '%" . $year . "%' ORDER BY `nume`");
                
                $members_array = array();
                /* create class to sort array by gold > silver > bronze */
                class Member {
                    public $nume, $rol, $poza, $an, $imp;
                }
                
                $roles = array(
                    'marketing' => 'marketing',
                    'mechanic' => 'mecanic',
                    'programmer' => 'programator',
                    'public relations' => 'relații publice',
                    '3D designer' => 'designer 3D',
                    'CAD' => 'proiectare 3D',
                    'outreach' => 'outreach',
                    'driver' => 'driver',
                    'mascot' => 'mascotă'
                );
                
                /* loop through all content inside db */
                while ($cont = mysqli_fetch_assoc($members)) {
                    /* create new object instance */
                    $member_object = new Member();

                    $nume = $cont['nume'];
                    $rolesArray = explode(",", $cont['rol']);

                    // Translate the terms if $l is 1 and the terms exist in the $roles array
                    $rol = ($l == 1) ? implode(",", array_map(function($term) use ($roles) {
                        return isset($roles[$term]) ? $roles[$term] : $term;
                    }, $rolesArray)) : $cont['rol'];

                    
                    $poza = $cont['poza'];
                    $imp = explode(",", $cont['imp']);

                    foreach ($imp as $key => $value) {
                        $imp[2019 + $key] = $value;
                    }
                    $an = $cont['an'];
                    

                    /* add items to object and push into array */
                    $member_object->nume = $nume;
                    $member_object->rol = $rol;
                    $member_object->poza = str_replace("&#226;", "â", str_replace("&#351;", "ș", str_replace("&#350;", "Ș", str_replace("&#355;", "ț", $poza))));
                    $member_object->imp = $imp[$year];
                    $member_object->an = $an;
                    array_push($members_array, $member_object);
                }
                
                usort($members_array, function ($a, $b) {
                    if ($a->imp == $b->imp)
                        return 0;
                    elseif ($a->imp > $b->imp)
                        return -1;
                    else
                        return 1;
                });

                foreach ($members_array as $member) {
                    $contor = $contor + 1;
            ?>

            <div class="w-20 w-sm-100 d-flex flex-column rounded border border-2 border-white bg-white <?php
                $elementsPerRow = 4;
                
                if ($contor % $elementsPerRow == 1) echo "fil";
                else if ($contor % $elementsPerRow == 0) echo "fir";
                else echo "fib";
                
            ?>" style="min-height: 45vh;" id="Third<? echo $contor; ?>">
                <div style="background-image: url('<?php echo $member->poza; ?>'); background-size: cover; background-position: center; min-height: 300px; aspect-ratio: 1:1 !important;" id="<?php echo $member->nume; ?> "></div>
                <h3 class="text-center text-blue"><?php if ($member->nume == "Andrei Fr&#238;ntu") echo "<a href='https://codulluiandrei.ro/' style='color: #8282ff; text-decoration: none;'>" . $member->nume . "</a>"; else echo $member->nume; ?></h3>
                <h5 class="text-center text-secondary fw-bold"><?php echo $member->rol; ?></h5>
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