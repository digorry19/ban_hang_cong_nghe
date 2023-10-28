<div class="container-fluild">
    <h3>Thêm danh mục sản phẩm mới</h3>
    <form method="post" action="?act=adddm">
        <div class="mb-3">
            <label for="name" class="form-label">Tên danh mục</label>
            <input type="text" class="form-control" id="name" placeholder="Nhập tên danh mục" name="tendm" />
        </div>
        <button type="submit" class="btn btn-primary" name="btnsubmit">Thêm mới</button>
        <button class="btn btn-primary" name="btnlist"><a href="index.php?act=dsdm" style="color: white; text-decoration: none;">Danh sách</a></button>
    </form>
</div>