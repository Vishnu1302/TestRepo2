#Depending on the operating system of the host machines(s) that will build or run the containers, the image specified in the FROM statement may need to be changed.
#For more information, please see https://aka.ms/containercompat

FROM microsoft/dotnet:2.1-aspnetcore-runtime-nanoserver-1709 AS base
WORKDIR /app
#EXPOSE 80
#EXPOSE 443
#
#FROM microsoft/dotnet:2.2-sdk-nanoserver-1709 AS build
#WORKDIR /src
#COPY ["Docker/Docker.csproj", "Docker/"]
#RUN dotnet restore "Docker/Docker.csproj"
#COPY . .
#WORKDIR "/src/Docker"
#RUN dotnet build "Docker.csproj" -c Release -o /app
#
#FROM build AS publish
#RUN dotnet publish "Docker.csproj" -c Release -o /app
#
#FROM base AS final
#WORKDIR /app
#COPY --from=publish /app .
COPY publish .
ENTRYPOINT ["dotnet", "dotnet-angular-oidc.dll"]