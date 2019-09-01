<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Entity</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
    <link rel="stylesheet" href="assets/css/Responsive-Form.css">
    <link rel="stylesheet" href="assets/css/Responsive-Form1.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
    <div class="container">
        <div>
            <form>
                <div class="form-group">
                    <div id="formdiv" style="background-color:rgba(0,0,0,0.2);">
                        <div class="form-row" style="margin-right:0px;margin-left:0px;padding-top:24px;">
                            <div class="col" style="background-color:#a56bc8;padding:0px;">
                                <p class="text-center" style="margin:5px;margin-left:9%;font-family:Roboto, sans-serif;font-size:42px;background-color:#a967d2;width:599px;line-height:54px;margin-right:0px;"><strong>ADD ACTIVITY</strong></p>
                            </div>
                        </div>
                        <div class="form-row" style="margin-right:0px;margin-left:0px;padding-top:24px;">
                            <div class="col"></div>
                        </div>
                        <div class="form-row" style="margin-right:0px;margin-left:0px;padding-top:24px;">
                            <div class="col-md-8 offset-md-1">
                                <p style="margin-left:2%;font-family:Roboto, sans-serif;font-size:24px;"><strong>Parent Activity</strong></p>
                            </div>
                            <div class="col-md-10 offset-md-1"><input class="form-control" type="text" name="name" readonly="" placeholder="Name" style="margin-left:0px;font-family:Roboto, sans-serif;"></div>
                        </div>
                        <div class="form-row" style="margin-right:0px;margin-left:0px;padding-top:24px;margin-top:-16px;">
                            <div class="col-md-8 offset-md-1">
                                <p style="margin-left:2%;font-family:Roboto, sans-serif;font-size:24px;"><strong>Project ID</strong></p>
                            </div>
                            <div class="col-md-10 offset-md-1"><input class="form-control" type="text" name="id" readonly="" placeholder="ID" style="margin-left:0px;font-family:Roboto, sans-serif;"></div>
                        </div>
                        <div class="form-row" style="margin-right:0px;margin-left:0px;padding-top:24px;">
                            <div class="col-md-8 offset-md-1">
                                <p style="margin-left:2%;font-family:Roboto, sans-serif;font-size:24px;"><strong>Start Date</strong></p>
                            </div>
                            <div class="col-md-10 offset-md-1"><input class="form-control" type="date" name="birthDate" style="font-family:Roboto, sans-serif;"></div>
                        </div>
                        <div class="form-row" style="margin-right:0px;margin-left:0px;padding-top:24px;">
                            <div class="col-md-8 offset-md-1">
                                <p style="margin-left:2%;font-family:Roboto, sans-serif;font-size:24px;"><strong>End Date</strong></p>
                            </div>
                            <div class="col-md-10 offset-md-1"><input class="form-control" type="date" name="birthDate" style="font-family:Roboto, sans-serif;"></div>
                        </div>
                        <div class="form-row" style="margin-right:0px;margin-left:0px;padding-top:24px;">
                            <div class="col-md-8 offset-md-1">
                                <p style="margin-left:2%;font-family:Roboto, sans-serif;font-size:24px;"><strong>Predesessor</strong></p>
                            </div>
                            <div class="col-md-10 offset-md-1">
                                <div class="dropdown"><button class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false" type="button" style="width:548px;">Chosse Predesessor</button>
                                    <div class="dropdown-menu" role="menu"><a class="dropdown-item" role="presentation" href="#">First Item</a><a class="dropdown-item" role="presentation" href="#">Second Item</a><a class="dropdown-item" role="presentation" href="#">Third Item</a></div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row" style="margin-right:0px;margin-left:0px;padding-top:24px;">
                            <div class="col-md-8 offset-md-1">
                                <p style="margin-left:2%;font-family:Roboto, sans-serif;font-size:24px;"><strong>Relatioship Type</strong></p>
                            </div>
                            <div class="col-md-10 offset-md-1" style="font-family:Roboto, sans-serif;">
                                <div class="dropdown"><button class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false" type="button" style="width:548px;">Choose Relationship</button>
                                    <div class="dropdown-menu" role="menu"><a class="dropdown-item" role="presentation" href="#">First Item</a><a class="dropdown-item" role="presentation" href="#">Second Item</a><a class="dropdown-item" role="presentation" href="#">Third Item</a></div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row" style="margin-right:0px;margin-left:0px;padding-top:24px;">
                            <div class="col-12 col-md-4 offset-md-4"><button class="btn btn-light btn-lg" type="reset" style="font-family:Roboto, sans-serif;background-color:#4456f4;width:92px;">Clear </button><button class="btn btn-light btn-lg" type="submit" style="margin-left:16px;background-color:#4456f4;width:91px;">Add&nbsp;</button></div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>