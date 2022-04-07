<?php include 'view/header.php';
	if (isset($_POST['submit'])) {
    foreach ($_POST['qty'] as $key => $value) {
        if (($value == 0) and ( is_numeric($value))) {
            unset($_SESSION['cart'][$key]);
        } elseif (($value > 0) and ( is_numeric($value))) {
            $_SESSION['cart'][$key] = $value;
        }
    }
    header("Location: .?action=view_cart");
}
 ?>
	<content>
		<div class="container">
			<form method="post">
				<input type="hidden" name="action" value="view_cart">
				<table class="table table-bordered">
					<tr>
						<th><a style="font-size:20px;" data-toggle='tooltip' data-placement='bottom' title='Xóa toàn bộ giỏ hàng' href="?action=delcart&item=0"><i class="fa fa-trash"></i></a></th>
						<th style="color: #337ab7;">SẢN PHẨM</th>
						<th style="width: 150px;color: #337ab7;">GIÁ (VNĐ)</th>
						<th style="width: 100px;color: #337ab7;">SỐ LƯỢNG</th>
						<th style="width: 150px;color: #337ab7;">THÀNH TIỀN (VNĐ)</th>
					</tr>
					<?php 
						$ok = 1;
        				if (isset($_SESSION['cart'])) {
				            foreach ($_SESSION['cart'] as $k => $v) {
				                if (isset($k)) {
				                    $ok = 2;
				                }
				            }
				        }
				        if ($ok == 2) {
				        	foreach ($_SESSION['cart'] as $key => $value) {
				                $item[] = $key;
				            }
				            $str = implode(",", $item);
				            $sql = "select * from sanpham where IdSP in ($str)";
				            $query = $db->query($sql);
				            $total = "";
				            foreach ($query as $value) {
				        
					 ?>
					<tr>
						<td><a style="font-size:20px;" data-toggle='tooltip' data-placement='bottom' title='Xóa' href="?action=delcart&item=<?php echo $value['IdSP']; ?>"><i class="fa fa-window-close"></i></a></td>
						<td style="text-align:center">
							<p style="font-size:20px;font-weight:bold;"><?php echo $value['TenSP']; ?></p>
							<img class="production" src="images<?php echo $value['Hinh']; ?>">
						</td>
						<td><p style="margin: 0;"><?php echo number_format($value['Gia']); ?> VNĐ</p></td>
						<td>
							<input type="text" style="text-align:center;" name="qty[<?php echo $value['IdSP']; ?>]" value="<?php echo $_SESSION['cart'][$value['IdSP']]; ?>" size="5">
						</td>
						<td><p style="margin: 0;"><?php echo number_format($_SESSION['cart'][$value['IdSP']] * $value['Gia']); ?></p></td>
					</tr>
					<?php
						 $total=$_SESSION['cart'][$value['IdSP']] * $value['Gia'];
						}
					}
					 ?>
					<tr>
						<td colspan="5">
							<div style="text-align:right;padding-right:30px;">
								<p style="font-weight: bold;font-size:20px;">TỔNG TIỀN</p>
								<p style="color:#3EC37D;font-size:16px;"><?php echo number_format($total); ?> VNĐ</p>
								<input type="submit" name="submit" value="Cập nhập giỏ hàng">
							</form>
							<form method="post" style="margin-top:20px;">
								<input type="hidden" name="action" value="thanhtoan">
								<input type="hidden" name="userid" value="<?php	$username = $_SESSION['Username'];$username = get_id_user($username); echo $username;?>">
								<input type="hidden" name="chitiet" value="
								<?php 
									$sql1 = "select * from sanpham where IdSP in ($str)";
						            $query1 = $db->query($sql1);
						            foreach ($query1 as $value1) {
						            	$cart_chitiet = "Mã sản phẩm: ".$value1['IdSP']." - Số lượng: ".$_SESSION['cart'][$value['IdSP']]."</br>";
						            	echo $cart_chitiet;
						            }
								 ?>
								">
								<input type="hidden" name="giatien" value="<?php echo $total;?>">
								<input type="hidden" name="date" value="<?php echo date("d/m/y-h:i:sa");?>">
								<input type="submit" value="Đặt hàng">
							</form>
							</div>
						</td>
					</tr>
				</table>
		</div>
	</content>
<?php include 'view/footer.php'; ?>