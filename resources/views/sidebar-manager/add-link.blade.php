<!-- @extends('layouts.app') -->

@section('content')
<div class="content-wrapper">
    <form action="{{ route('add-link') }}" method="post">
        @csrf
        <div class="form-group">
            <label for="name">Tên Liên kết</label>
            <input type="text" class="form-control" name="name" id="name" placeholder="Tên sidebar">
        </div>
        <div class="form-group">
            <label for="access">Quyền truy cập</label>
            <input type="text" class="form-control" name="access" id="access" placeholder="Quyền truy cập">
        </div>
        <div class="form-group">
            <label for="link">Đường dẫn</label>
            <input type="text" class="form-control" name="link" id="link" placeholder="Đường dẫn">
        </div>
        <div class="form-group">
            <label for="status">Trạng thái</label>
            <select class="form-control" name="status" id="status">
                <option value="1">Mở</option>
                <option value="0">Đóng</option>
            </select>
        </div>
        <div class="form-group">
            <label for="status">Danh mục</label>
            <select class="form-control" name="parent" id="parent">
                @foreach($sidebarAll as $sidebar)
                
                <option value="{{ $sidebar['id'] }}">{{ $sidebar['name'] }}</option>
                @endforeach
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Thêm</button>
    </form>
</div>
@endsection
