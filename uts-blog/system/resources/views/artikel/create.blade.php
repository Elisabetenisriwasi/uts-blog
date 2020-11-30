@extends('templateAdmin.base')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					Tambah Data Artikel
				</div>
				<div class="card-body">
					<form action="{{url('artikel')}}" method="post">
						@csrf
					<div class="form-group">
						<label for="" class="control-label">judul</label>
						<input type="text" name="judul" class="form-control">
					</div>
					<div class="form-group">
						 <label for="" class="control-label">Penulis</label>
					     <input type="text" name="Penulis" class="form-control">
							</div>
					<div class="form-group">
						<label for="" class="control-label">isi</label>
						<textarea name="isi" class="form-control" id="isi" name="isi" rows="10"></textarea>
					</div>
					<button type="submit" class="btn btn-primary">Tambah Data</button> 
					</form>
				</div>
			</div>
		</div>
	</div>

@endsection