<?php
    /*
    
        Website developed by Andrei Frîntu
        Critical maintenance @ codulluiandrei.ro

        Version:    3.7@main:tb
        Stage:      published@teaborgs.ro
        Contact:    admin@codulluiandrei.ro

    */
?>
<nav class="navbar navbar-expand-lg navbar-light" style="background: #fcfaf9ff !important; z-index: 999;">
    <div class="container">
        <div class="d-flex align-items-center fit">
            <img alt="" src="/static/logo/logo-v3-2024.png" width="80px">
        </div>
        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvas_navbar" aria-controls="offcanvas_navbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="offcanvas offcanvas-top h-100 bg-transparent" style="width: 100vw;" tabindex="-1" id="offcanvas_navbar">
            <div class="offcanvas-body d-flex justify-cotent-center align-items-center bg-dark-transparent">
                <ul class="navbar-nav justify-content-end text-center w-100 flex-grow-1 fs-5">
                    <li class="nav-item text-center d-md-none"><button type="button" class="btn-close btn-close-white text-center" data-bs-dismiss="offcanvas"></button></li>
                    <li class="nav-item rounded fit"><a class="nav-link text-md-white text-md-lg" href="/"><?php echo ($l == 1) ? "Acasă" : "Home"; ?></a></li>
                    <li class="nav-item rounded fit"><a class="nav-link text-md-white text-md-lg" href="/about/"><?php echo ($l == 1) ? "Despre" : "About"; ?></a></li>
                    <li class="nav-item rounded fit"><a class="nav-link text-md-white text-md-lg" href="/awards/2024"><?php echo ($l == 1) ? "Premii" : "Awards"; ?></a></li>
                    <li class="nav-item rounded fit"><a class="nav-link text-md-white text-md-lg" href="/team/2024"><?php echo ($l == 1) ? "Echipe" : "Teams"; ?></a></li>
                    <li class="nav-item rounded fit"><a class="nav-link text-md-white text-md-lg" href="/gallery/"><?php echo ($l == 1) ? "Galerie" : "Gallery"; ?></a></li>
                    <li class="nav-item rounded fit"><a class="nav-link text-md-white text-md-lg" href="/sponsors/2024"><?php echo ($l == 1) ? "Sponsori" : "Sponsors"; ?></a></li>
                    <li class="nav-item rounded fit"><a class="nav-link text-md-white text-md-lg" href="/map/"><?php echo ($l == 1) ? "Hartă FTC" : "FTC Map"; ?></a></li>
                    <li class="nav-item rounded fit"><a class="nav-link text-md-white text-md-lg" href="/news/"><?php echo ($l == 1) ? "Știri & Evenimente" : "News & Events"; ?></a></li>
                    <li class="nav-item rounded fit"><a class="nav-link text-md-white text-md-lg" href="https://linktr.ee/tea_borgs"><?php echo ($l == 1) ? "Linktree" : "Linktree"; ?></a></li>
                    <li class="rounded fit"><img src="<?php echo ($l == 1) ? "/static/icons/icons8-great-britain.png" : "/static/icons/icons8-romania.png"; ?>" id="swapLanguage" onclick="swapLanguage()" style="width: 50px; height: 50px; cursor: pointer;" class="rounded"></li>
                </ul>
            </div>
        </div>
    </div>
</nav>
