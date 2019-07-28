#!/bin/sh
PROJECT_ID=${PROJECT_ID:-}
TAG=${TAG:-latest}
APP_NAME=${APP_NAME:-restaurant-app-api}

start () {
    export ASPNETCORE_ENVIRONMENT=${ASPNETCORE_ENVIRONMENT:-Development}
    dotnet watch run
}

rebuild () {
    dotnet clean
    dotnet build
}