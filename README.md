## MySql: Backup Shell
 
> 🐘 `MySql(Backup)`  Creating a MySql backup script for use in cron jobs involves writing a shell script that uses mysqldump to backup the database and then configuring a cron job to run this script at specified intervals  


![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Bash](https://img.shields.io/badge/GNU%20Bash-4EAA25?style=for-the-badge&logo=GNU%20Bash&logoColor=white)
![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-20232A?logo=mysql&logoColor=white&style=for-the-badge)


![mysql backup Shell|100|50](logo.png) 
---

##### ✔️ Configuration Database Variable

``` bash

DB_NAME="wp_cart"
DB_USER="root"
DB_HOST="localhost"
DB_PORT="3306"
DB_PASS="password"
BACKUP_DIR="/var/www/html/backup"
```

---

##### ✔️ How it Work

``` bash

chmod +x backup.sh
./backup.sh

```


##### ✔️ CRON JOBS in LINUX

``` bash

crontab -e

0 0 * * *  /fullPath/backup.sh   > /dev/null 2>&1 

```

##### ✔️  restore   Mysql database

``` bash
- # Create the Database (if it doesn't exist)
  mysql -u userName -p dbName < /path/to/your/backup.sql
```



#### 🎉 Contributing
- ⚙ Send us a PR, github issue, or email at app_eg@mail.com

