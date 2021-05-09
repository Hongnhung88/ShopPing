<h2 class="text-center mt-5">Sản phẩm mới</h2>
        <!-- row1 -->
        <div class="row">
        <?php
        for($i=0;$i<count($giayMoi);$i++){
        ?> <div class="col-6 col-md-3">
        <div class="card mt-3">
            <div class="product-1 alight-item-center p2 text-center">
                <img src="<?php echo $giayMoi[$i]->anhGiay;?>" alt="" class="rounded img-fluid" width="150">
                <!-- card info -->
                <div class="mt-3 mb-3 info">
                    <span class="text d-block"><?php echo $giayMoi[$i]->tenGiay;?></span>
                </div>
                <div class="cost mt-3 text-dark">
                    <span><?php echo $giayMoi[$i]->giaBan;?>
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
                            <button class="btn btn-outline-info">Xem ngay</button>
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
        <!-- row2 -->