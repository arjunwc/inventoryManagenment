
<?php $user = session('user_type');?>
<aside class="main-sidebar">
   <section class="sidebar">
      <div class="user-panel">
         <div class="pull-left image">
            <img src="{{ asset('users/'.$user['profile_image']) }}" class="img-circle" alt="User Image"/>
         </div>
         <div class="pull-left info">
            <p><?php echo ucfirst($user['name']); ?></p>
            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
         </div>
      </div>
      <div class='main-menu'>
         <ul class="sidebar-menu">
            <li class="header">Navigation</li>
            <li class=""><a
               href="{{ url('administrator/dashboard') }}" class='text-normal'><i class='fa fa-dashboard'></i>
               <span>Dashboard</span> </a>
            </li>
            <?php if($user['user_type']=="Admin") { ?>
            <li class="{{ Route::is('users') ? 'active' : '' }}"><a
               href="{{ url('administrator/users') }}" class='text-normal'><i class="fa fa-users"></i>
               <span>User Management</span> </a>
            </li>
            <?php } ?>
            <li class="{{ Route::is('category') ? 'active' : '' }}"><a
               href="{{ url('administrator/category') }}" class='text-normal'><i class="fa fa-fw fa-arrows" aria-hidden="true"></i>
               <span>Category Management</span> </a>
            </li>
            <li class="{{ Route::is('sub-category') ? 'active' : '' }}"><a
               href="{{ url('administrator/sub-category') }}" class='text-normal'><i class="fa fa-fw fa-arrows-v"></i>
               <span>Sub Category Management</span> </a>
            </li>
            <li class="{{ Route::is('sub-sub-category') ? 'active' : '' }}"><a
               href="{{ url('administrator/sub-sub-category') }}" class='text-normal'><i class="fa fa-fw fa-arrows-v"></i>
               <span>Sub sub Category Management</span> </a>
            </li>
             <li class="{{ Route::is('warehouse') ? 'active' : '' }}"><a
               href="{{ url('administrator/warehouse') }}" class='text-normal'><i class="fa fa-building-o text-normal"></i>
               <span>Venture</span> </a>
            </li>
            <li class="{{ Route::is('inventories') ? 'active' : '' }} treeview" ><a
               href="javascript:" class='text-normal '><i class="fa fa-fw fa-mail-reply"></i>
               <span>Inventories</span> </a>
                  <ul class="treeview-menu" style="display: none;">
                  <li><a href="{{ url('administrator/inventories') }}"><i class="fa fa-circle-o"></i> Inventories</a></li>
                  <?php $records = get_assign_reason($user['id']); ?>
                  <?php foreach($records as $value){ ?>
                         <li><a href="{{ url('administrator/assign_inventories/'.$value->id) }}"><i class="fa fa-circle-o"></i> {{$value->title}}</a></li>
                  <?php } ?>
                  </ul>
            </li>

            <li class="{{ Route::is('employee') ? 'active' : '' }}"><a
               href="{{ url('administrator/employee') }}" class='text-normal'><i class="fa fa-users"></i>
               <span>Employee Management</span> </a>
            </li>
            <li class="{{ Route::is('store') ? 'active' : '' }}"><a
               href="{{ url('administrator/store') }}" class='text-normal'><i class="fa fa-fw fa-rebel"></i>
               <span>Store Management</span> </a>
            </li>
            <li class="{{ Route::is('location') ? 'active' : '' }}"><a
               href="{{ url('administrator/location') }}" class='text-normal'><i class="fa fa-fw fa-support"></i>
               <span>Location Management</span> </a>
            </li>
            <li class="{{ Route::is('assign_reasons') ? 'active' : '' }}"><a
               href="{{ url('administrator/assign_reasons') }}" class='text-normal'><i class="fa fa-fw fa-slack"></i>
               <span>Assign reason Management</span> </a>
            </li>
            <li class="{{ Route::is('report') ? 'active' : '' }}"><a
               href="{{ url('administrator/report') }}" class='text-normal'><i class="fa fa-fw fa-slack"></i>
               <span>Assign Report Management</span> </a>
            </li>
         </ul>
      </div>
   </section>
</aside>