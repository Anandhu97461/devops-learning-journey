# Create, Modify, Delete Local User Accounts

## 🔹 Create a User

```bash
sudo adduser john
```

## 🔹 Set Password

```bash
sudo passwd john
```

## 🔹 Delete User

```bash
sudo deluser john
sudo deluser --remove-home john
```

## 🔹 Modify User

```bash
sudo usermod -l jane john  # rename
sudo usermod --home /new/home --move-home john
sudo usermod -s /bin/zsh john  # change shell
sudo usermod --expiredate 2028-12-10 john  # set account expiry
```

## 🔹 Password Expiration

```bash
sudo chage -d 0 john         # expire immediately
sudo chage --maxdays 30 john
```