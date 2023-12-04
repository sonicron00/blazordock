FROM mcr.microsoft.com/dotnet/sdk:8.0


WORKDIR /app
COPY ./app /app

ENV ASPNETCORE_URLS=http://+:80
ENV ASPNETCORE_URLS=https://+:80
ENV DOTNET_USE_POLLING_FILE_WATCHER=1
EXPOSE 80

CMD ["bash", "-c", "dotnet restore && dotnet watch run --no-launch-profile"]