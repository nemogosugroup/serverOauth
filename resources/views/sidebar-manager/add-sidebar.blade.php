<!-- @extends('layouts.app') -->

@section('content')
<div class="content-wrapper">
    <form action="{{ route('add-sidebar') }}" method="post">
        @csrf
        <div class="form-group">
            <label for="name">Tên Danh mục</label>
            <input type="text" class="form-control" name="name" id="name" placeholder="Tên sidebar">
        </div>
        <div class="form-group">
            <label for="access">Quyền truy cập</label>
            <input type="text" class="form-control" name="access" id="access" placeholder="Quyền truy cập">
        </div>
        <div class="form-group">
            <label for="status">Trạng thái</label>
            <select class="form-control" name="status" id="status">
                <option value="1">Mở</option>
                <option value="0">Đóng</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Thêm</button>
    </form>
</div>
@endsection
