<div class="header bg-success text-light p-4 text-center">
        THẾ GIỚI SMART
      </div>
      <!-- menu -->
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
          <a class="navbar-brand" href="index.php">Trang chủ</a>
          <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#"
                  >Giới thiệu</a
                >
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Liên hệ</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Góp ý</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Hỏi đáp</a>
              </li>
            </ul>
            <ul class="navbar-nav">
              <?php 
               if (!isset($_SESSION['email'])) {
                echo '<li class="nav-item">
                        <a class="nav-link" href="index.php?act=login">Đăng nhập</a>
                      </li>';
            } else {
                echo '<li class="nav-item">
                        Hello, ' . $_SESSION['email'] . ' <a href="javascript:void(0);" class="text-light" 
                        onclick="if (confirm(\'Bạn có chắc chắn muốn đăng xuất?\')) window.location.href=\'index.php?act=logout\';">
                        <button class="btn btn-danger">Đăng xuất</button></a>
                      </li>';
            }
            
              ?>
              
            </ul>
          </div>
        </div>
      </nav>
