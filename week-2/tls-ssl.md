# TLS & SSL - Week 2

## Encryption Basics

- Learned difference between plaintext and encrypted communication.
- Understood how TLS/SSL secures data during transmission.

## Symmetric vs Asymmetric Encryption

- **Symmetric**: One key used for both encrypting and decrypting.
- **Asymmetric**: Two keys (public + private).

## SSH Keys

- Generated using `ssh-keygen`.
- Placed public key in server's `~/.ssh/authorized_keys`.
- Connect via:
  ```bash
  ssh -i ~/.ssh/id_rsa user@server

## HTTPS & Certificates

- Server provides public key + certificate to browser.

- Certificate must be signed by Certificate Authority (CA).

- Explored .crt, .pem, .csr, .key formats.

Created CSR:
 ```bash
 openssl req -new -key my-bank.key -out my-bank.csr
