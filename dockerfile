FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
WORKDIR /src

COPY ["SoluDesk.csproj", "./"]
RUN dotnet restore "SoluDesk.csproj"

COPY . .
RUN dotnet build "SoluDesk.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "SoluDesk.csproj" -c Release -o /app/publish /p:UseAppHost=false

# Runtime stage
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS final
WORKDIR /app

ENV ASPNETCORE_URLS=http://+:80
EXPOSE 80

COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "SoluDesk.dll"]