# get started

- Ref: <https://jasonwatmore.com/post/2021/09/28/net-5-crud-api-example-and-tutorial#running-angular>
- Ref: <https://code.visualstudio.com/docs/containers/quickstart-aspnet-core>

dotnet new globaljson --sdk-version=5.0.404

## Check the version on globaljson file

dotnet --version

dotnet new webapp -o myWebApp --no-https

```Bash
dotnet add package Microsoft.EntityFrameworkCore.SqlServer --version 5.0.16
dotnet add package Microsoft.EntityFrameworkCore.Design --version 5.0.16
dotnet add package Swashbuckle.AspNetCore --version 6.3.0
dotnet add package System.Data.SqlClient --version 4.8.3
```

## Create database. Need to change the appsettings.json if running on docker machine

docker run --rm --network dotnet-5-crud-api_app -v ${PWD}:/mnt/work mcr.microsoft.com/dotnet/sdk:5.0-focal "/mnt/work/migration.sh"

## Kill the API



docker-compose up -d --build 
docker-compose up -d --build webapi

export CONNECTION_STRING='Data Source=tcp:mssql,1433; Initial Catalog=dotnet-5-crud-api; User Id=sa; Password=@Passw0rd;'

export CONNECTION_STRING='Data Source=tcp:mssql2,1433; Initial Catalog=dotnet-5-crud-api; User Id=sa; Password=@Passw0rd;'

docker stop dotnet-5-crud-api_webapi_1 && docker rm dotnet-5-crud-api_webapi_1 ; docker-compose up -d webapi

docker exec -it dotnet-5-crud-api_webapi_1 bash

docker exec -t sql1 cat /var/opt/mssql/log/errorlog | grep connection



docker exec -ti dotnet-5-crud-api_busybox_1 /bin/bash


# frontend 
- Ref: <https://github.com/cornflourblue/angular-11-crud-example/blob/master/src/app/_helpers/fake-backend.ts>
-Ref: <https://github.com/cornflourblue/angular-11-crud-example/blob/master/src/app/_services/user.service.ts>


when occurs this error just restart winnat service.
ERROR: for dotnet-5-crud-api_mssql_1  Cannot start service mssql: Ports are not available: listen tcp 0.0.0.0:1433: bind: An attempt was made to access a socket in a way forbidden by its access permissions.
net stop winnat
net start winnat