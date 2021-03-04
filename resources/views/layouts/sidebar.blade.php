<div class="main-sidebar">
    <aside id="sidebar-wrapper">
      <div class="sidebar-brand">
        <a href="index.html">Stisla</a>
      </div>
      <div class="sidebar-brand sidebar-brand-sm">
        <a href="index.html">St</a>
      </div>
      <ul class="sidebar-menu">
        <li class="menu-header">Dashboard</li>
        <li class="@if (Request::segment(1) == 'dashboard') active @endif">
          <a class="nav-link" href="{{ url('dashboard') }}"><i class="far fa-square"></i> <span>Dashboard</span></a>
        </li>
          <li class="menu-header">Menu</li>
          {{-- <li class="dropdown @if (Request::segment(1) == 'konfigurasi') active @endif">
            <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-columns"></i> <span>Konfigurasi</span></a>
            <ul class="dropdown-menu">
              <li class="@if (Request::segment(1) == 'konfigurasi' and Request::segment(2) == 'setup') active @endif">
                <a class="nav-link" href="{{ route('setup.index') }}">Setup Aplikasi</a>
              </li>
            </ul>
          </li>
          <li class="nav-item dropdown @if (Request::segment(1) == 'master-data') active @endif">
            <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-columns"></i> <span>Master Data</span></a>
            <ul class="dropdown-menu">
              <li class="@if (Request::segment(1) == 'master-data' and Request::segment(2) == 'divisi') active @endif">
                <a class="nav-link" href="{{ route('divisi.index') }}">Divisi</a>
              </li>
              <li><a class="nav-link" href="layout-top-navigation.html">Top Navigation</a></li>
            </ul>
          </li> --}}
          {{-- ==== --}}
       
          <li class="@if (Request::segment(1) == 'manajemen-layanan') active @endif">
            <a class="nav-link" href="/manajemen-layanan"><i class="far fa-square"></i> <span>Manajemen Layanan</span></a>
          </li>
          <li class="@if (Request::segment(1) == 'manajemen-tte') active @endif">
            <a class="nav-link" href="/manajemen-tte"><i class="far fa-square"></i> <span>Manajemen TTE</span></a>
          </li>
          <li class="@if (Request::segment(1) == 'manajemen-template') active @endif">
            <a class="nav-link" href="/manajemen-template"><i class="far fa-square"></i> <span>Manajemen Template</span></a>
          </li>
          
    </aside>
  </div>