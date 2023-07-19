@foreach($data['portofolio'] as $list)
    <tr>
        <td>
            @if($list->status == 1)
            <a class="btn btn-sm btn-text-warning shadowed mr-1 mb-1" href="{{url('detail-portofolio/'.$list->trx_id)}}">{{$list->trx_id}}</a>
            @elseif($list->status == 2)
            <a class="btn btn-sm btn-text-danger shadowed mr-1 mb-1" href="">{{$list->trx_id}}</a>
            @elseif($list->status == 3)
            <a cclass="btn btn-sm btn-text-success shadowed mr-1 mb-1" href="">{{$list->trx_id}}</a>
            @elseif($list->status == 4)
            <a class="btn btn-sm btn-text-primary shadowed mr-1 mb-1" href="">{{$list->trx_id}}</a>
            @else
            <a class="btn btn-sm btn-text-info shadowed mr-1 mb-1" href="">{{$list->trx_id}}</a>
            @endif
        </td>
        <td>{{$list->create_date}}</td>
        <td>
            @if($list->status == 1)
            <span class="badge badge-warning">Act</span>
            @elseif($list->status == 2)
            <span class="badge badge-danger">Rev</span>
            @elseif($list->status == 3)
            <span class="badge badge-success">Ver</span>
            @elseif($list->status == 4)
            <span class="badge badge-primary">Apr</span>
            @else
            <span class="badge badge-info">Del</span>
            @endif
        </td>
    </tr>
@endforeach