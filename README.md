# SIMANUT
Sistem Manajemen Nutrisi

#INSTALL KE SERVER LOKAL
1. Extract file terlebih dahulu, Copy dan paste semua file Laravel SIMANUT ke htdocs xampp
2. buka folder xampp/apache/conf/extra/httpd-vhosts.conf dengan notepad
3. copy dan paste code berikut ke baris paling bawah, kemudian save :
   
<VirtualHost *:80>
    ServerAdmin webmaster@SIMANUT.test
    DocumentRoot "C:/xampp/htdocs/SIMANUT/public"
    ServerName SIMANUT.test
    ErrorLog "logs/dummy-host2.example.com-error.log"
    CustomLog "logs/dummy-host2.example.com-access.log" common
</VirtualHost>

Keterangan:
DocumentRoot isikan path letak laravelmu
ServerName adalah nama domain website mu

4. Langkah berikutnya buka C->Windows->System32->drivers->etc
5. kemudian buka file hosts dengan mode Run us administrator notepad
6. Tambahkan baris paling bawah kemudian save:
	127.0.0.1	SIMANUT.test
7. Lalu jalankan SIMANUT.test ke browser

PERINGATAN:
Install XAMPP versi 8.2.12 atau diatasnya
import DB nya terlebih dahulu
