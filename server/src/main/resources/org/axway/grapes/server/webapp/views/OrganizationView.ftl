<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="author" content="jdcoffre">
		<meta name="description" content="Organization view displays a license of Grapes.">
		
		<title>Grapes Organization View</title>
		
		<!-- Bootstrap -->
		<link href="/public/twitter-bootstrap-2.3.2/css/bootstrap.css" rel="stylesheet">
		<link href="/public/twitter-bootstrap-2.3.2/css/bootstrap-responsive.css" rel="stylesheet">
		<link href="/public/twitter-bootstrap-2.3.2/css/docs.css" rel="stylesheet">
        <link href="/assets/css/grapes.css" rel="stylesheet">
        <link href="/assets/css/grapes-table.css" rel="stylesheet">

        <link rel="shortcut icon" type="image/x-icon" href="assets/img/grapes_small.gif"/>

	</head>
    <body>

        <div class="row-fluid">
            <div class="navbar navbar-inverse navbar-fixed-top">
                <div class="navbar-inner">
                    <div class="container">
                        <a class="brand active" href="/">Grapes</a>
                        <div class="nav-collapse collapse">
                            <ul class="nav">
                                <li class="">
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Documentations</a>
                                    <ul class="dropdown-menu" role="menu" aria-labelledby="drop">
                                        <li><a tabindex="-1" href="/organization">Organization API</a></li>
                                        <li><a tabindex="-1" href="/product">Product API</a></li>
                                        <li><a tabindex="-1" href="/module">Module API</a></li>
                                        <li><a tabindex="-1" href="/artifact">Artifact API</a></li>
                                        <li><a tabindex="-1" href="/license">License API</a></li>
                                    </ul>
                                </li>
                                <li class="">
                                    <a href="/sequoia">Sequoïa</a>
                                </li>
                                <li class="">
                                    <a href="/webapp">Data Browser</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container" style="">
            <div class="row-fluid">
                <h1>Organization</h1>
            </div>
        </div>

        <div class="container">
            <div class="row-fluid">
                <h3>Overview</h3>
                <p>
                    <strong>Name: </strong>${organization.getName()}<br/>
                </p>
            </div>
            <div class="row-fluid">
                <h3>Corporate GroupId prefixes</h3>
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th><span>Prefixes</span></th>
                        </tr>
                    </thead>
                    <tbody>
                        <#list organization.getCorporateGroupIdPrefixes() as corporateGid>
                            <tr class="corporateGroupId">
                                <td>${corporateGid}</td>
                            </tr>
                        </#list>
                    </tbody>
                </table>
            </div>
        </div>
	 </body>

    <!-- Make the table sortable -->
    <script src="/public/jquery-1.9.1/jquery.js"></script>
    <script src="/public/twitter-bootstrap-2.3.2/js/bootstrap.min.js"></script>
    <script src="/public/jquery-tablesorter-1.10.2/jquery.tablesorter.min.js"></script>
    <script type="text/javascript">
        $(function(){
            $('.sortable').tablesorter();
        });
    </script>
</html>