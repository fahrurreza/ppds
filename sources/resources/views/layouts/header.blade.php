
@if($data['page'] == 'Dashboard')

<div class="appHeader bg-primary text-light">
    <div class="pageTitle">{{$data['page']}}</div>
    <div class="right"></div>
</div>

@else

<div class="appHeader bg-primary text-light">
    <div class="left">
        <a href="javascript:;" class="headerButton goBack">
            <ion-icon name="chevron-back-outline"></ion-icon>
        </a>
    </div>
    <div class="pageTitle">{{$data['page']}}</div>
</div>

@endif