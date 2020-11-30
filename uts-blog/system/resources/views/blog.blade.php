@extends('templateClient.base')

@section('content')
	<div class="Blog-bg">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="Blogheading">
                     <h3>Blog </h3>
                  </div>
               </div>
            </div>
         </div>
      </div>


      <!-- section --> 
      <div class="section layout_padding bg light_silver">
         <div class="container">
          <div class="row">
               <div class="col-md-12">
                  <div class="card">
                     <div class="card-header">
                        DAFTAR ARTIKEL
                     </div>
                     <table class="table">
                       <thead>
                        <th>No</th>
                        <th>judul artikel</th>
                        <th>penulis artikel</th>
                        <th>isi artikel</th>
                        </thead>
                        <tbody>
                         @foreach($list_artikel as $artikel)
                        <tr>
                         <td>{{$loop->iteration}}</td> 
                         <td>{{$artikel->judul}}</td>
                         <td>{{$artikel->penulis}}</td>
                         <td>{{$artikel->isi}}</td>
                          </tr>
                          @endforeach
                       </tbody>
                       </table>
                      </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
            
            
      <!-- end section -->

<!-- section -->
	 @include('templateClient.section.comment')

@endsection