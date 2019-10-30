<jsp:include page="home.jsp" />






<div class="card">
	<div class="social-box" style="height: 110%">
		<div class="card">
			<div class="card-body">
				<img src="" class="img-avatar m-4" alt="" width="20%">
				<br>
				<form action="" method="POST" enctype="multipart/form-data">
					<input type='hidden' name='csrfmiddlewaretoken' value='' />
					<div class="custom-file col-md-4">
						<input type="file" name="img" class="custom-file-input"
							id="validatedCustomFile" required /> <label
							class="custom-file-label btn-sm" for=""> Upload Picture...</label>
						<div>
							<button class="btn btn-primary btn-sm my-2" type="submit">Upload</button>
						</div>
					</div>