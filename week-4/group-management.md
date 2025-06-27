# Create, Delete and Modify Local Groups

## 🔹 Group Creation and Membership

```bash
sudo groupadd developers
sudo gpasswd -a john developers
groups john
sudo gpasswd -d john developers
```

## 🔹 Primary Group

```bash
sudo usermod -g developers john
```

## 🔹 Rename and Delete Group

```bash
sudo groupmod -n programmers developers
sudo groupdel programmers  # only if not primary group of any user
```