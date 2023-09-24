# Docker Multi-Stage Builds
This project demonstrates the use of Docker Multi-Stage Builds to create an optimized Docker image for a Spring Boot multi-module application. Multi-Stage Builds allow us to divide the Docker build process into stages, resulting in a smaller and more efficient final image.

In this project, we have defined two build stages:

1. **Build Stage (build):** This stage is responsible for building the Spring Boot application and generating executable JAR files. It uses a base image with the necessary build tools and dependencies.

2. **Run Stage (run):** This stage starts with a lightweight base image containing only the JRE (Java Runtime Environment) and copies the built JAR files from the previous stage. It sets up the runtime environment and executes the application.

<br>

## Building and Running the Docker Image
To build and run the Docker image for this Spring Boot application, follow these steps:

1. Build the Docker image:
```bash
docker build -t spring-boot-multi-module-docker .
```


2. Run the Docker container:
```bash
docker run -p 8080:8080 spring-boot-multi-module-docker
```

The application will be accessible at `http://localhost:8080`.

<br>
