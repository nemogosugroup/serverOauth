<!-- @extends('layouts.app') -->

@section('left-sidebar')
<nav class="sidebar sidebar-offcanvas" id="sidebar">
  <ul class="nav">
    
    <li class="nav-item nav-category" >Danh sách
      
    </li>
    @foreach($sidebarAll as $sidebar)
    <li class="nav-item">
      <a class="nav-link" data-bs-toggle="collapse" href="#slug_{{$sidebar['id']}}" aria-expanded="false" aria-controls="aria{{ $sidebar['id'] }}">
        <i class="menu-icon mdi mdi-floor-plan"></i>
        <span class="menu-title">{{ $sidebar['name'] }}</span> 
        <i class="menu-arrow"></i> 
      </a>
      <div class="collapse" id="slug_{{$sidebar['id']}}">
        <ul class="nav flex-column sub-menu">
          @foreach($sidebar['chirl'] as $sidebarChirl)
            <li class="nav-item">
                <a class="nav-link" href="{{ $sidebarChirl['link'] }}" target="_blank">{{ $sidebarChirl['name'] }}</a>
            </li>
          @endforeach
        </ul>
      </div>
    </li>
    @endforeach
    <li class="nav-item" style="position: relative;">
      <a class="nav-link" data-bs-toggle="collapse" href="#setting" aria-expanded="false" aria-controls="aria{{ $sidebar['id'] }}">
        <i class="menu-icon mdi mdi-settings"></i>
        <span class="menu-title">Cài đặt</span> 
        <i class="menu-arrow"></i> 
      </a>
      <div class="collapse" id="setting">
        <ul class="nav flex-column sub-menu">
            <li class="nav-item">
                <a class="nav-link" href="/form-add-sidebar">Tạo danh mục</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/form-add-link">Tạo liên kết</a>
            </li>
        </ul>
      </div>
    </li>
  </ul>
</nav>


<script>
$(document).ready(function() {
  
});
</script>

@endsection
