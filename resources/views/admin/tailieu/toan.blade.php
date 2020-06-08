@extends('admin.layout.index')
@section('body')

		<div class="container-fluid tintuc">
			<div class="container">
				<div class="row">
					<div class="col-md-12 tieudetintuc">
				
						<h3> TÀI LIỆU</h3>
					</div>
				</div>

				<div class="main_gioithieu">
					
					<h4>	<b>Lý thuyết về mệnh đề</b></h4>
 					<b>I. Tóm tắt kiến thức</b> <br><br>

					1.Mệnh đề là câu khẳng định có thể xác định được tính đúng hay sai của nó. Một mệnh đề không thể vừa đúng vừa sai.<br><br>
					
					2. Mệnh đề chứa biến là câu khẳng định mà sự đúng đắn, hay sai của nó còn tùy thuộc vào một hay nhiều yếu tố biến đổi.<brbr><>
					Dưới đây là ví dụ:<br><br>Câu số nguyên n chia hết cho 3 không phải là mệnh đề, vì không thể xác định được nó đúng hay sai.<br><br>
					Nếu ta gán cho n giá trị n=4 thì là một mệnh đề sai.<br><br>
					Nếu ta gán cho n giá trị n=9 thì đây là mệnh đề đúng.
				<br><br>
					3. Phủ định của một mệnh đề là một mệnh đề. Hai mệnh đề này có những khẳng định trái ngược nhau.<br><br>
					4. Mệnh đề kéo theo<br><p  class="anh_gioithieu"><img src="imgs/banner/toan.jpg" style="border: 1px solid #C8C4C4; float: right"></p> 
					Mệnh đề " Nếu P thì Q" được gọi là mệnh đề kéo theo, và kí hiệu P => Q.<br> <br>
					Mệnh đề P => Q còn được phát biểu là" P kéo theo Q" hoặc "Từ P suy ra Q".<br><br>
					Mệnh đề P => Q chỉ sai khi P đúng và Q sai.<br> <br>
					Các định lý toán học là những mệnh đề đúng và thường có dạng P => Q<br><br>
					Khi đó ta nói : P là giả thiết, Q là kết luận của định lý, hoặc<br>P là điều kiện đủ để có Q,<br> hoặc: Q là điều kiện cần để có P.<br><br>
					5. Mệnh đề đảo - Hai mệnh đề tương đương<br><br>
					Mệnh đề Q => P được gọi là mệnh đề đảo của mệnh đề P => Q.<br>
					Nếu cả hai mệnh đề P => Q và Q => P đều đúng thì ta nói P và Q là hai mệnh đề tương đương.<br><br>
					Khi đó, ta kí hiệu P <=> Q đọc là P tương đương Q,<br><br> hoặc: P là điều kiện cần và đủ để có Q, <br><br>hoặc: P khi và chỉ khi Q. 
					
					<h4><b>II. Bài tập thực hành</b></h4><br>
					<p  class="anh_gioithieu"><img src="imgs/banner/toan1.jpg" style="border: 1px solid #C8C4C4; float: right"></p> 
					Bài 1: Trong các câu sau, câu nào là mệnh đề, câu nào là mệnh đề chứa biến ?<br><br>
					a, 3 + 2 = 7		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	b, 4 + x = 3	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	c, x + y > 1<br><br>
					Bài 2: Xét tính đúng sai của các mệnh đề sau và phất biểu mệnh đề phủ định của nó.<br><br>
					a, 1794 chia hết cho 3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b, -5 là một số nguyên âm<br><br>
					c, 100 % 4 = 2.5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;d, 9 là số chính phương<br><br>
					Bài 3: Cho các mệnh đề kéo theo:<br><br>
					Nếu a và b cùng chia hết cho c thi a + b chia hết cho c ( a, b, c dều là các số tự nhiên)<br><br>
					Các số nguyên có tận cùng bằng 0 đều chia hết cho 5.<br><br>
					Tam giác cân có 2 trung tuyến bằng nhau.<br><br>
					Hai tam giác bằng nhau có diện tích bằng nhau.<br><br>
					a, Hãy phát biểu mệnh đề đảo của mỗi mệnh đề trên.<br><br>
					b, Phát biểu mỗi mệnh đề trên, bằng cách sử dụng khái niệm  " mệnh đề đủ ".<br><br>
					c, Phát biểu mỗi mệnh đề trên, bằng cách sử dụng khái niệm  " mệnh đề cần ".<br><br>
				</div>

			

				
			</div>
		</div>
		


@stop