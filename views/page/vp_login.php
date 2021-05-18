<!-- form -->
<div class="container-fluid bg-login">
    <div class="row">
        <div class="col-12 col-xs-12 col-sm-2 col-md-2 col-lg-3 col-xl-4">
        </div>
        <div class="col-12  col-xs-12 col-sm-8 col-md-8 col-lg-6  col-xl-4 mt-5  bg-white rounded shadow  mb-5">
            <div class="row">
                <div class="col-lg-12">
                    <form class="text-center p-3" action="/ShopPing/handler/processLogin.php" method="POST">
                        <p class="h1 mb-4 mt-4">Đăng nhập
                        </p>
                        <?php if (isset($_GET['error'])) { ?>
                            <p class="error"><?php echo $_GET['error']; ?></p>
                        <?php } ?>
                        <!-- E-mail -->
                        <input type="email" class="form-control mb-4" placeholder="E-mail" name="email" />
                        <!-- Password -->
                        <input type="password" class="form-control mb-4" placeholder="Mật khẩu " name="password" />
                        <div class="d-flex justify-content-around">
                            <div>
                                <!-- Remember me -->
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="defaultLoginFormRemember" />
                                    <label class="custom-control-label" for="defaultLoginFormRemember">Tự động đăng nhập</label>
                                </div>
                            </div>
                            <div>
                                <!-- Forgot password -->
                                <a href="">Quên mật khẩu?</a>
                            </div>
                        </div>

                        <!-- Sign up button -->
                        <button class="btn btn-info my-4 btn-block" type="submit">Đăng nhập
                        </button>
                        <!-- login -->
                        <p class="mb-4">
                            Bạn chưa có tài khoản?
                            <a href="register.php">Đăng ký
                            </a>
                        </p>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-12 col-xs-12 col-sm-2 col-md-2 col-lg-3 col-xl-4">
        </div>
    </div>
</div>