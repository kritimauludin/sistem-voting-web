@extends('templates.adminLayout')

@section('title', '[RB Vote - Edit]')

@section('content')
<!-- Begin Page Content -->
<div class="container-fluid">
    <div class="col-lg-8">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-dark d-inline">{{$polling[0]->title_polling}} - Chapter {{$kandidat->chapter}}</h6>
            </div>
            <div class="card-body">
                <form action="/mypolling/kandidat/{{$kandidat->slug}}" method="POST" enctype="multipart/form-data">
                    @method('put')
                    @csrf
                    <input type="hidden" name="oldImage" value="{{$kandidat->img_kandidat}}">
                    <div class="mb-3">
                        <label for="title_kandidat" class="form-label">Title Chapter</label>
                        <input type="text" class="form-control @error('title_kandidat') is-invalid @enderror" id="title_kandidat" name="title_kandidat" value="{{old('title_kandidat', $kandidat->title_kandidat)}}" required autofocus>
                        @error('title_kandidat')<div class="invalid-feedback">{{ $message }}</div>@enderror
                    </div>
                    <div class="mb-3">
                        <label for="slug" class="form-label">Slug</label>
                        <input type="text" class="form-control @error('slug') is-invalid @enderror" id="slug" name="slug" disable readonly value="{{old('slug', $kandidat->slug)}}">
                        @error('slug')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="body" class="form-label">Body</label>
                        @error('body')
                        <p class="text-danger">{{$message}}</p>
                        @enderror
                        <textarea name="body" class="my-editor form-control" id="body" cols="30" rows="10">{{old('body', $kandidat->body)}}</textarea>
                    </div>
                    <div class="mb-3">
                        <label for="img_kandidat">Upload Photo</label>
                        @if($kandidat->img_kandidat)
                        <img src="{{asset('storage/'. $kandidat->img_kandidat)}}" class="img-preview img-fluid mb-3 col-sm-5 d-block">
                        @else
                        <img class="img-preview img-fluid mb-3 col-sm-5">
                        @endif
                        <input type="file" class="form-control-file @error('img_kandidat') is-invalid @enderror" id="img_kandidat" name="img_kandidat" onchange="previewImage()">
                        @error('img_kandidat')
                        <p class="text-danger">{{$message}}</p>
                        @enderror
                    </div>
                    <a href="/mypolling/kandidat/{{$kandidat->slug}}" class="btn btn-danger">Cancel</a>
                    <button type="submit" class="btn btn-primary">Update</button>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="//cdn.ckeditor.com/4.6.2/standard/ckeditor.js"></script>
<script>
    const title_kandidat = document.querySelector('#title_kandidat');
    const slug = document.querySelector('#slug');

    title_kandidat.addEventListener('change', function() {
        fetch('/mypolling/kandidat/createSlug?title_kandidat=' + title_kandidat.value)
            .then(response => response.json())
            .then(data => slug.value = data.slug)
    });

    CKEDITOR.replace('body');
</script>
<script>
    function previewImage() {
        const img_kandidat = document.querySelector('#img_kandidat');
        const imgPreview = document.querySelector('.img-preview');

        imgPreview.style.display = "block";

        const oFReader = new FileReader();
        oFReader.readAsDataURL(img_kandidat.files[0]);

        oFReader.onload = function(oFREvent) {
            imgPreview.src = oFREvent.target.result;
        }
    }
</script>

@endsection
