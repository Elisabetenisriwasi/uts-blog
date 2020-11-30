@extends('templateAdmin.base')

@section('content')
<div class="container">
		
	<div class="card">
		<div class="card-header">
			Data Produk
			<a href="{{url('artikel/create')}}" class="btn btn-dark float-right"><i class="fa fa-plus"></i> Tambah</a>
		</div>
		<div class="card-body">
			<table class="table table-datatable">
				<thead>
					<th>No</th>
					<th>Aksi</th>
					<th>judul artikel</th>
					<th>penulis artikel</th>
					<th>isi artikel</th>
				</thead>
				<tbody>
					@foreach($list_artikel as $artikel)
					<tr>
						<td>{{$loop->iteration}}</td>
						<td>
							<div class="btn-group">
								<a href="{{url('artikel', $artikel->id)}}" class="btn btn-dark float-right"><i class="fa fa-info"></i></a>
								<a href="{{url('artikel', $artikel->id)}}/edit" class="btn btn-warning float-right"><i class="fa fa-edit"></i></a>
								@include('templateAdmin.utils.delete', ['url' => url('artikel', $artikel->id)])
							</div>
						</td>
						<td>{{$artikel->judul}}</td>
						<td>{{$artikel->penulis}}</td>
						<td>{{$artikel->isi}}</td>
					</tr>
					@endforeach
				</tbody>
			</table>
		</div>
	</div>

	@endsection