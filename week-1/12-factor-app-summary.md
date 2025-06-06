# 12-Factor App Summary

## 1️⃣ Codebase
- One codebase per app → same code, different deploys (dev, staging, prod).

## 2️⃣ Dependencies
- Explicit dependencies declared in `requirements.txt`, `package.json`, etc.

## 3️⃣ Config
- Configuration (DB passwords, API keys) stored in env vars → not hardcoded.

## 4️⃣ Backing Services
- External services (DB, Redis, etc.) treated as pluggable resources via URLs.

## 5️⃣ Build, Release, Run
- Separate build → release → run stages → enables rollback & consistency.

## 6️⃣ Processes
- App should be stateless → use Redis/DB to store state.

## 7️⃣ Port Binding
- App serves HTTP on its own port → example: Flask app on port 5000.

## 8️⃣ Concurrency
- Scale app by running multiple stateless instances behind load balancer.

## 9️⃣ Disposability
- App starts fast and shuts down gracefully → responds to SIGTERM.

## 🔟 Dev/Prod Parity
- Keep dev and prod environments as similar as possible.

## 1️⃣1️⃣ Logs
- Apps stream logs to stdout → external tools handle log collection.

## 1️⃣2️⃣ Admin Processes
- One-off admin tasks (like DB migrations) run in the same app environment.
