#!/bin/bash

cd /mnt/work 

dotnet tool install -g dotnet-ef 
export PATH="$PATH:/root/.dotnet/tools" 

dotnet ef migrations add InitialCreate 

dotnet ef database update && rm -rf Migrations

