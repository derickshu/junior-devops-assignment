# Redis WebSocket Chat Application

A simple chat application using WebSockets with Redis for message broadcasting and storage. This project uses Docker Compose to set up both the application server and Redis.

## Prerequisites

- Docker and Docker Compose installed

## Getting Started

1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/redis-websocket-chat.git
   cd redis-websocket-chat


    ```bash
    docker pull redis
    docker pull golang
    docker-compose up --build
    sudo docker-compose down 


* New Changes
Created .env File:

Added .env file for storing environment variables such as PORT and REDIS_URL.
Ensures Redis and web server configuration can be easily modified without changing the code.
Redis Connection Retry:

Updated the Redis connection in main.go to include retry logic, handling cases where Redis may not be ready when the web service starts.
Docker Compose and Dockerfile Changes:

Docker Compose:
Added a health check for the Redis service to ensure Redis is ready before the application attempts to connect.
Mounted the .env file as a volume in docker-compose.yml.
Dockerfile:
Set up the Go environment for building the web service.