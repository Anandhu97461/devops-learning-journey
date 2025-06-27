# 🚦 Implement Reverse Proxies and Load Balancers (Nginx)

## 🔁 Reverse Proxy Config

```nginx
server {
  listen 80;
  location / {
    proxy_pass http://1.1.1.1;
    include proxy_params;
  }
}
```

## ⚖ Load Balancer Config

```nginx
upstream mywebservers {
  least_conn;
  server 1.2.3.4;
  server 5.6.7.8;
}

server {
  listen 80;
  location / {
    proxy_pass http://mywebservers;
  }
}
```

## ✅ Enable & Reload

```bash
sudo ln -s /etc/nginx/sites-available/lb.conf /etc/nginx/sites-enabled/
sudo nginx -t
sudo systemctl reload nginx
```

---
