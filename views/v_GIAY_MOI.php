<main class="container">
    <h1 class="text-center mt-3">SẢN PHẨM MỚI</h1>
    <div class="row">
        <?php
        for ($i = 0; $i < count($dsGiay); $i++) {
        ?>
            <div class="col-12 col-md-3">
                <div class="card mt-3">
                    <div class="product-1 alight-item-center p2 text-center">
                        <img src="<?php echo $dsGiay[$i]->anhGiay; ?>" alt="" class="rounded" width="150">
                        <!-- card info -->
                        <div class="mt-3 mb-3 info">
                            <span class="text d-block"><?php echo $dsGiay[$i]->tenGiay; ?><br><br>#M5039V
                            </span>
                        </div>
                        <div class="cost mt-3 text-dark">
                            <span><?php echo $dsGiay[$i]->giaBan ?></span>
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
                                    <!-- sua thanh link bang the a chu ko de button  --> 
                                    <a class="btn btn-outline-info" href="/demo.php?demo=<?php $dsGiay[$i]->tenGiay; ?>">Mua ngay</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <?php
        }
        ?>
        <nav aria-label="Page navigation example">
            <ul class="pagination">
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</main>