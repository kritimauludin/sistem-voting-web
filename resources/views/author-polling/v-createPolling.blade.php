@extends('templates.adminLayout')

@section('title', '[RB Vote - Create]')

@section('content')
<!-- Begin Page Content -->
<div class="container-fluid">
    <div class="col-lg-8">
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-dark d-inline">Create New Polling</h6>
            </div>
            <div class="card-body">
                <form action="/mypolling/pollings" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="mb-3">
                        <label for="title_polling" class="form-label">Title</label>
                        <input type="text" class="form-control @error('title_polling') is-invalid @enderror" id="title_polling" name="title_polling" value="{{old('title_polling')}}" required autofocus>
                        @error('title_polling')<div class="invalid-feedback">{{ $message }}</div>@enderror
                    </div>
                    <div class="mb-3">
                        <label for="slug" class="form-label">Slug</label>
                        <input type="text" class="form-control @error('slug') is-invalid @enderror" id="slug" name="slug" disable readonly value="{{old('slug')}}">
                        @error('slug')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="excerpt_polling">Deskripsi</label>
                        @error('excerpt_polling')
                        <p class="text-danger">{{$message}}</p>
                        @enderror
                        <textarea class="form-control my-editor" name="excerpt_polling" id="excerpt_polling" rows="5"></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="img_cover_polling">Upload Photo</label>
                        <img class="img-preview img-fluid mb-3 col-sm-5">
                        <input type="file" class="form-control-file @error('img_cover_polling') is-invalid @enderror" id="img_cover_polling" name="img_cover_polling" onchange="previewImage()">
                        @error('img_cover_polling')
                        <p class="text-danger">{{$message}}</p>
                        @enderror
                    </div>
                    <a href="/mypolling/pollings" class="btn btn-danger">Cancel</a>
                    <button type="submit" class="btn btn-primary">Create</button>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="//cdn.ckeditor.com/4.6.2/standard/ckeditor.js"></script>
<script>
    const title_polling = document.querySelector('#title_polling');
    const slug = document.querySelector('#slug');

    title_polling.addEventListener('change', function() {
        fetch('/mypolling/pollings/createSlug?title_polling=' + title_polling.value)
            .then(response => response.json())
            .then(data => slug.value = data.slug)
    });

    CKEDITOR.replace('excerpt_polling');
</script>
<script>
    function previewImage() {
        const img_cover_polling = document.querySelector('#img_cover_polling');
        const imgPreview = document.querySelector('.img-preview');

        imgPreview.style.display = "block";

        const oFReader = new FileReader();
        oFReader.readAsDataURL(img_cover_polling.files[0]);

        oFReader.onload = function(oFREvent) {
            imgPreview.src = oFREvent.target.result;
        }
    }
</script>

@endsection
