# Web Servers - Week 1

## Client-Server Model
- Servers handle requests → return responses.
- No server needed for static apps on local machine.

## Server Types
- Web server → Handles HTTP requests (Apache, Nginx).
- Application server → Runs business logic (Tomcat, Gunicorn).
- Database server → Manages data storage.
- Email server, backup server → Specialized tasks.

## Apache HTTP Server
- Installed via `httpd`.
- Default port → 80.
- Web files → `/var/www/`.
- Virtual hosting → `/etc/hosts` and `httpd.conf`.

## Apache Tomcat
- Installed Tomcat, started via `startup.sh`.
- Configured `server.xml`.
- Deployed apps to `webapps` directory.

## Flask with Gunicorn
- Ran Flask app using Gunicorn → `gunicorn main:app -w 2`.

## Node.js with PM2
- Ran Node.js app using PM2 → `pm2 start app.js -i 4`.

## IP & Ports
- Loopback IP → `127.0.0.1`.
- Apps configured to run on specific IP/port via app config.
