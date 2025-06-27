# Create and Manage Containers

Docker simplifies application deployment by packaging everything into containers.

## 🔹 Docker Image vs Container

- **Image**: A read-only template (like an Nginx image).
- **Container**: A running instance of that image.

## 🔹 Pull and Run an Nginx Container

```bash
docker pull nginx
docker run --detach --publish 8080:80 --name mywebserver nginx
```

- `8080:80` → Maps host port 8080 to container port 80.
- Use `curl localhost:8080` to test.

## 🔹 List and Manage Containers

```bash
docker ps          # Running containers
docker ps --all    # All containers
docker stop mywebserver
docker rm mywebserver
```

## 🔹 Build a Custom Image

```Dockerfile
FROM nginx
COPY index.html /usr/share/nginx/html/index.html
```

```bash
docker build -t mynginx:1.0 .
```

## 🔹 Restart Policies

```bash
docker run --restart always -d -p 8080:80 --name mywebserver nginx
```