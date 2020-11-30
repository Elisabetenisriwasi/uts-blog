@extends('templateAdmin.base')

@section('content')
<div class="container">
	<div class="row">
		<div class="col-md-12 mt-5">
			<div class="card">
				<div class="card-header">
					Edit Data Artikel
				</div>
				<div class="card-body">
					<form action="{{url('artikel', $artikel->id)}}" method="post">
						@csrf
						@method("PUT")
					<div class="form-group">
						<label for="" class="control-label">Judul artikel</label>
						<input type="text" class="form-control" name="Judul" value="{{$artikel->Judull}}">
					</div>
					<div class="form-group">
								<label for="" class="control-label">Penulis artikel</label>
								<input type="text" class="form-control" name="Penulis" value="{{$artikel->Penulis}}">
							</div>
						</div>
						
						</div>
						
						</div>
					</div>

					<div class="form-group">
					<label for="" class="control-label">Isi</label>
						<textarea name="isi" class="form-control" id="isi name="isi rows="10">
						<{{$artikel->Isi}}</textarea>

						<button class="btn btn-dark float-right"><i class="fa fa-save"></i> Simpan</button>
					</div>
					
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection