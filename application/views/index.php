<!doctype html>
<html lang="en">

<head>
	<title>Login STNK & NO KIR</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="<?php echo base_url('assets/syalala/') ?>css/style.css">

</head>

<body class="img js-fullheight" style="background-image: url(<?php echo base_url('assets/syalala/') ?>images/bgt.jpeg);">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-6 col-lg-4">
					<div class="login-wrap p-0">
						<h3 class="mb-4 text-center">Login STNK & Nomor KIR</h3>
						<?= $this->session->flashdata('pesankebenaran'); ?>
						<form action="<?= base_url('halo'); ?>" class="signin-form" method="POST">
							<div class="form-group">
								<input type="text" class="form-control" name="nama" placeholder="Username" required>
							</div>
							<div class="form-group">
								<input id="password-field" type="password" name="password" class="form-control" placeholder="Password" required>
								<span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
							</div>
							<div class="form-group">
								<button type="submit" class="form-control btn btn-primary submit px-3">Sign In</button>
							</div>

						</form>

					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="<?php echo base_url('assets/syalala/') ?>js/jquery.min.js"></script>
	<script src="<?php echo base_url('assets/syalala/') ?>js/popper.js"></script>
	<script src="<?php echo base_url('assets/syalala/') ?>js/bootstrap.min.js"></script>
	<script src="<?php echo base_url('assets/syalala/') ?>js/main.js"></script>

</body>

</html>