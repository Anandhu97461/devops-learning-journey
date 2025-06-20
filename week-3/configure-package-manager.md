# Configure Repositories of Package Manager

## 🗂 APT Repos:
- File: `/etc/apt/sources.list`
- Add PPA:
```bash
sudo add-apt-repository ppa:nginx/stable
sudo apt update
```

## 🗂 YUM Repos:
File: /etc/yum.repos.d/myrepo.repo

```ini
[myrepo]
name=My Custom Repo
baseurl=http://myrepo.com/packages/
enabled=1
gpgcheck=0
```

---