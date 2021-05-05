<!-- sell more products  -->
<h2 class="text-center  mt-3">Sản phẩm bán chạy</h2>
<!-- vans -->
<div class="row">
    <?php
    if(isset($giayBanchay))
    for ($i = 0; $i < count($giayBanchay); $i++) {
    ?>
    <div class="col-6 col-sm-6 col-md-3">
        <div class="card mt-3">
            <div class="product-1 alight-item-center p2 text-center">
                <img src="<?php echo $giayBanchay[$i]->anhGiay;?>" alt="" class="rounded img-fluid" width="150">
                <h5><?php echo $giayBanchay[$i]->tenGiay ?></h5>
            </div>
        </div>
    </div>
    <?php
    }
    ?>

</div>
<!-- converse -->
<!-- sell more products  -->