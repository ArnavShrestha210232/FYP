<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="{{asset('css/bootstrap.min.css')}}" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('css/dash.css')}}">
    <title>Document</title>
</head>
<body>
        <form method="post" action="{{ route('auth.register')}}" enctype="multipart/form-data">
            @csrf
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">name</label>
                <div class="col-sm-10">
                    <input type="text" name="name" class="form-control" />
                </div>
            </div>
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">email</label>
                <div class="col-sm-10">
                    <input type="text" name="email" class="form-control" />
                </div>
            </div>
            <div class="row mb-3">
                <label class="col-sm-2 col-label-form">password</label>
                <div class="col-sm-10">
                    <input type="text" name="password" class="form-control" />
                </div>
            </div>
            <div class="text-center">
                <input type="submit" class="btn btn-primary" value="Add" />
            </div>
            
        </form>
    
</body>
</html>
