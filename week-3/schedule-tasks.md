# Schedule Tasks with cron, at, anacron

## 🕓 Cron:
```bash
crontab -e
# m h dom mon dow command
0 6 * * * /home/user/backup.sh

## ⏳ One-Time with at:
```bash
at now + 2 minutes
at> echo "Hello" >> /tmp/test
Ctrl + D

## 🔁 Delayed Repetitive Tasks with anacron:
Edit /etc/anacrontab

```bash
1   daily   backup-job   /home/user/backup.sh

---