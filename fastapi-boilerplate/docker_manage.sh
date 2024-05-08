#!/bin/bash


usage() {
    echo "Usage: $0 {build|up|down|logs}"
    exit 1
}

if ! command -v docker-compose &> /dev/null; then
    echo "Docker Compose is not installed. Please install Docker and Docker Compose first."
    exit 1
fi


cd "$(dirname "$0")" || exit


case "$1" in
    build)
        echo "Building the Docker containers..."
        docker compose build
        ;;
    up)
        echo "Starting the Docker containers..."
        docker compose up -d
        ;;
    down)
        echo "Stopping and removing the Docker containers..."
        docker compose down
        ;;
    logs)
        echo "Fetching logs from the Docker containers..."
        docker compose logs -f app
        ;;
    *)
        usage
        ;;
esac
