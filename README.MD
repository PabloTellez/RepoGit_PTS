# Repositorio AWS CloudFormation

## Por Pablo Téllez Del Saz

deploy-stack2 => crea una pila con el tipo de instancia t2.small y la despliega con el fichero que le hayamos indicado, que seria main4.yml, y el nombre de la pila es WordPressServer.

tear-down-stack => elimina la pila con el nombre WordPressServer junto con sus recursos.

main5.yml => Es una plantilla de AWS CloudFormation, que crea una instancia de EC2, con un grupo de seguridad, y con una IP pública. Lo configuramos de manera que permite el tráfico entrante en los puertos 22,80,443.
