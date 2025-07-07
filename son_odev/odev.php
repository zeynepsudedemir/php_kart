<!DOCTYPE html>
 <html lang="tr">
 <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP Örnek veritabanı</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
 </head>
 <body>
<?php 
$con=mysqli_connect('localhost:3307','root','','ornek');
if (!$con) {
    die("Bağlantı hatası: " . mysqli_connect_error());
}

$result=mysqli_query($con,"select * from Menu");
$data=mysqli_fetch_all($result,MYSQLI_ASSOC);
?>
<nav class="navbar navbar-expand-sm navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="javascript:void(0)">Logo</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="mynavbar">
            <ul class="navbar-nav me-auto">
            <?php 
            foreach ($data as $aa ) {
                //echo "".$aa["Mlink"]."".$aa["Madi"];
            ?>
            <li class="nav-item">
                <a class="nav-link" href="<?php echo $aa["Mlink"]; ?>">
                    <?php 
                        echo $aa["Madi"];
                    ?>
                </a>
            </li>
            <?php } ?>
            </ul>
            <form class="d-flex">
                <input class="form-control me-2" type="text" placeholder="Search">
                <button class="btn btn-primary" type="button">Search</button>
            </form>
        </div>
    </div>
 </nav>
 <!-- kategori ve içerik alanı -->
<?php 
    $result2=mysqli_query($con,"select * from Kategori");
    $data2=mysqli_fetch_all($result2,MYSQLI_ASSOC);
?>
 <div class="container my-3">
    <div class="row">
    <!--! Kategori -->
        <div class="col-2">
            <div class="list-group">
                <?php
                    foreach ($data2 as $aa2 ) {
                        echo "<a href='?Kategori=".$aa2["link"]."' class='list-group-item list-group-item-action'>".$aa2["Kategori"]."</a>";
                    }
                ?>
            </div>
        </div>
<?php 
if (isset($_GET['Kategori'])) {
    $kategori_link = $_GET['Kategori'];
    $query = "SELECT * FROM dersler WHERE kategori_link = '$kategori_link'";
} else {
    $query = "SELECT * FROM dersler";
}
$result3 = mysqli_query($con, $query);
$data3 = mysqli_fetch_all($result3, MYSQLI_ASSOC);
?>
    <div class="col-md-8">
        
        <!--! dersler -->
        <?php
            foreach ($data3 as $aa3 ) {
            echo '
            <div class="card mb-3">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="img/1.JPG" class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">'.$aa3["Dadi"].'</h5>
                            <p class="card-text">'.$aa3["icerik"].'</p>
                            <p class="card-text"><small class="text-muted">Yazar: '.$aa3["yazar"].'</small></p>
                            <p class="card-text"><small class="text-muted">Tarih: '.$aa3["tarih"].'</small></p>
                            <p class="card-text"><small class="text-muted">Anahtar Kelimeler: '.$aa3["keyword"].'</small></p>
                        </div>
                    </div>
                </div>
            </div>
            ';
        }
        ?>
        <!--! Card 3 --> 
        ..
    </div>
</div>

<?php
    // Veritabanı bağlantısı
     
    $sorgu="select *from users";
    $result=mysqli_query($con,$sorgu);
    $data=mysqli_fetch_all($result,MYSQLI_ASSOC);
 // Veritabanından veri çekme ve ekrana yazdırma
    foreach ($data as $aa ) {
        echo "<h2> KULLANICI".$aa["UID"]." ".$aa["UName"]." ".$aa["UPass"]."</h2>";
    }
    mysqli_close(( $con) );
?>
    </body>
</html>