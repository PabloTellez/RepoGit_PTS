#Pablo Téllez Del Saz

# 1) Antes de nada, actualizamos los paquetes y repositorios, para ello:
    "sudo apt update && sudo apt upgrade"


# 2) Instalamos el servidor Apache, mariadb y PHP para amazon linux 2023, para ello:
    "sudo yum install httpd/mariadb105-server/php-fpm php-mysqli php-json php php-devel"  o 
    "sudo dnf install -y httpd wget php-fpm php-mysqli php-json php php-devel"


# 3) Arrancamos el servicio Apache:
    "sudo systemctl start httpd"


# 4) Usamos el comando systemctl para que se inicie en cada arranque 
    "sudo systemctl enable httpd"


# 5) Podemos verificar el estado de apache con el siguente comando:
    "sudo systemctl is-enabled httpd"


# 6) Agregamos el usuario al grupo de apache, comprobamos que esta en el grupo, cambiamos la propiedad y contenido al grupo apache, 
    y permisos en /var/www y subdirectorios
    "sudo usermod -a -G apache ec2-user"
    "groups"
    "sudo chown -R ec2-user:apache /var/www"
    "sudo chmod 2775 /var/www && find /var/www -type d -exec sudo chmod 2775 {} \;"
    "find /var/www -type f -exec sudo chmod 0664 {} \;"


# 7) Creamos el fichero php dentro de los directorios /var/www/html
    "echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php"
    "nano phpinfo.php"


# 8) Comprobamos que el servicio o servidor Apache y PHP esta funcionando correctamente

http://ec2-18-208-193-198.compute-1.amazonaws.com/phpinfo.php
