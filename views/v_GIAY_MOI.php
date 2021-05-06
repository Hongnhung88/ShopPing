<main class="container">
    <h1 class="text-center mt-3">SẢN PHẨM MỚI</h1>
    <div class="row">
        <?php
        print_r($dsGiay);
        echo $e;
        for ($i = 0; $i < 9; $i++) {
        ?>
            <div class="col-12 col-md-3">
                <div class="card mt-3">
                    <div class="product-1 alight-item-center p2 text-center">
                        <img src="./img/product/cvt1.png" alt="" class="rounded" width="150">
                        <!-- card info -->
                        <div class="mt-3 mb-3 info">
                            <span class="text d-block">Chuck Taylor Classic<br><br>#M5039V
                            </span>
                        </div>
                        <div class="cost mt-3 text-dark">
                            <span>1,450,000₫
                            </span>
                            <div class="star mt-3 alight-item-center">
                                <i class="fa fa-star">
                                </i>
                                <i class="fa fa-star">
                                </i>
                                <i class="fa fa-star">
                                </i>
                                <i class="fa fa-star">
                                </i>
                                <i class="fa fa-star">
                                </i>
                                <div class="p-3">
                                    <button class="btn btn-outline-info">Mua ngay</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <?php
        }
        ?>
    </div>
</main>