IF "%EMSDK%" == "" SET EMSDK=C:\Sources\emsdk

CALL %EMSDK%\emsdk activate 3.1.23
dotnet publish -c Release WorkerExample\WorkerExample.csproj