<!-- form -->
<div class="container-fluid bg-login">
    <div class="row">
        <div class="col-12 col-xs-12 col-sm-2 col-md-2 col-lg-3 col-xl-4">
        </div>
        <div class="col-12  col-xs-12 col-sm-8 col-md-8 col-lg-6  col-xl-4 mt-5  bg-white rounded shadow mb-5">
            <div class="row">
                <div class="col-lg-12">
                    <form class="text-center p-3" action='validateregister.php' method="POST" >
                        <p class="h1 mb-4 mt-4">Đăng ký
                        </p>
                        <?php if (isset($_GET['error'])) { ?>
                            <p class="error"><?php echo $_GET['error']; ?></p>
                        <?php } ?>
                        <?php if (isset($_GET['success'])) { ?>
                            <p class="success"><?php echo $_GET['success']; ?></p>
                        <?php } ?>
                        <!-- E-mail -->
                        <input type="email"  class="form-control mb-4" placeholder="E-mail" name="email" />
                        <!-- Password -->
                        <input type="password"  class="form-control mb-4" placeholder="Mật khẩu "  name="password" />
                        <!-- Password -->
                        <input type="password" class="form-control mb-4" placeholder="Xác nhận mật khẩu" name="cfpassword" />
                        <!-- Sign up button -->
                        <button class="btn btn-info my-4 btn-block" name="register" type="submit">Đăng ký
                        </button>
                        <!-- login -->
                        <p class="mb-4">
                            Bạn đã có tài khoản?
                            <a href="login.php">Đăng nhập
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