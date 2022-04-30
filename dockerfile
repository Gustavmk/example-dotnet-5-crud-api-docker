FROM mcr.microsoft.com/dotnet/aspnet:5.0-focal AS base
ENV ASPNETCORE_URLS=http://*:80
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/sdk:5.0-focal  AS build
COPY . ./src
WORKDIR /src
RUN dotnet restore WebApi.csproj
RUN dotnet build -o /app/build

FROM build AS publish
RUN dotnet publish -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish /app
CMD ["dotnet", "WebApi.dll"]