# Work With SSL/TLS Certificates

## 🔐 Purpose of SSL/TLS
- **Authentication**: Ensures you're communicating with the intended server.
- **Encryption**: Secures data via public/private key cryptography.

## 🛠 Tools Used: OpenSSL

### Generate a CSR:
```bash
openssl req -newkey rsa:2048 -keyout key.pem -out req.pem

### Generate a Self-Signed Certificate:
```bash
openssl req -x509 -newkey rsa:4096 -days 365 -keyout myprivate.key -out mycertificate.crt

### View Certificate Details:
```bash
openssl x509 -in mycertificate.crt -text

### 📁 Files:
.pem: Contains keys or certs

.crt: Public certificate

.key: Private key

---