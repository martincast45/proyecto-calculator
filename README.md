# proyecto-calculator
proyecto para platzi - calculadora 

Calculadora creada con python con un front-end   
esto es un proyecto simple el cual se crea una calculadora en python, para luego ser desplegada en kubernetes 

Comenzando 🚀
Estas instrucciones te permitirán obtener una copia del proyecto en funcionamiento en tu máquina local para propósitos de estudio.


Pre-requisitos 📋
Asegúrate de tener Flask instalado. Puedes instalarlo usando el siguiente comando si aún no lo tienes:
la aplicacion fue generada en linux: 
en la terminal verificamos si tenemos linux instalado: 

$ python3 --version

A continuación, instale pip3 y otras herramientas de Python como se muestra a continuacion

$ sudo apt install build-essential python3-pip libffi-dev python3-dev python3-setuptools libssl-dev

necesitaremos docker, Recomiendo instalar el docker-desktop ya que trae docker y kubernetes.
para instalar docker-desktop verificar en los repositiorios de docker
como recomendacion extra: 
si no posees entornos en la nube aws, azure etc, instalar minikube (el proceso de instalacion se enncuentra en los repos de kubernetes)
luego de tener instalado, docker, kubernetes y python.

Instalación 🔧

clonar todo el repositiorio y procedemos con los comandos. 

creamos la imagen en docker:
$ docker build -t calculadora-app .

ejecutamos el contenedor de docker 
docker run -p 5000:3000 calculadora-app

Esto construirá la imagen y ejecutará el contenedor. Puedes acceder a la calculadora a través de tu navegador en http://127.0.0.1:5000/.

Ten en cuenta que estos son solo pasos básicos para crear y ejecutar un contenedor Docker. Para un entorno de producción real, es posible que quieras considerar aspectos como seguridad, manejo de secretos, configuración de red,
orquestación de contenedores, entre otros.

Dockerize la Aplicación:
Sigue los pasos que te mencioné anteriormente para crear una imagen Docker de tu aplicación.

Configurar un Registro de Contenedores:
Sube la imagen Docker a un registro de contenedores accesible desde tu clúster Kubernetes. Puedes usar servicios como Docker Hub, Google Container Registry, AWS ECR, o cualquier otro que prefieras.

Configurar Archivos de Manifiesto Kubernetes:
Crea los archivos de manifiesto de Kubernetes para desplegar tu aplicación. Puedes tener dos archivos: uno para el servicio y otro para la implementación (deployment). 

Despliegue 📦
recuerda que para deployar la aplicacion debes tener minikube para entorno local o CLI en la nube 

$ kubectl apply -f deployment.yaml
$ kubectl apply -f service.yaml


Acceder a la Aplicación:
Dependiendo de tu configuración, la aplicación estará accesible a través de la dirección IP asignada por el Load Balancer o mediante el NodePort que hayas configurado en el servicio.

Una serie de ejemplos paso a paso que te dice lo que debes ejecutar para tener un entorno de desarrollo ejecutandose

Dí cómo será ese paso

Da un ejemplo
Y repite

hasta finalizar
Finaliza con un ejemplo de cómo obtener datos del sistema o como usarlos para una pequeña demo

Ejecutando las pruebas ⚙️
Explica como ejecutar las pruebas automatizadas para este sistema

Analice las pruebas end-to-end 🔩
Explica que verifican estas pruebas y por qué

Da un ejemplo
Y las pruebas de estilo de codificación ⌨️
Explica que verifican estas pruebas y por qué

Da un ejemplo



Construido con 🛠️
visual studio code 
python3
docker-compose
kubernetes 
ubuntu.20.0



Wiki 📖
[Puedes encontrar mucho más de cómo utilizar este proyecto en nuestra Wiki](https://es.linux-console.net/?p=75#gsc.tab=0) 
https://www.adictosaltrabajo.com/2016/04/25/primeros-pasos-con-kubernetes/
https://minikube.sigs.k8s.io/docs/start/
https://minikube.sigs.k8s.io/docs/tutorials/multi_node/ 
https://www.docker.com/products/docker-desktop/

Autores ✒️
MARTIN CASTELLANOS - PROYECTO PUBLICO DE ESTUDIO Y PRACTICA


Licencia 📄
Este proyecto está bajo la Licencia (MARTIN CASTELLANOS) - mira el archivo LICENSE.md para detalles


