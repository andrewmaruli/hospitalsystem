# Hospital Management System
The Hospital Management System is a web-based software designed to streamline the management of hospital operations such as administration, medical treatment, medicine reception, and payment. The system is built to optimize the delivery of hospital treatments by automating patient registration and transmitting relevant information to the various departments in the hospital. 
## System Requirements
- PHP 8.1
- MySQL
- Composer
- Laravel 4 or Higher
## Installation
1. Download or Clone the source code to the htdocs (windows) or /var/www/ htdocs
2. In the root folder. /htdocs/hospitalsystem run: **composer update && composer install**
3. Create new database in MySQL
4. Modify the .env to configure the connection to the database
5. Generate the new key for the application by running: **php artisan key:generate**
6. Run the database migration by running: **php artisan migrate**
7. Insert some started account data to the database. Get the file in the repo: _filename- account.sql_
8. Start the application: **php artisan serve**

## Account
### Username
admin
receptionis
physician
pharmacy
finance

### Password
Asd,car21

