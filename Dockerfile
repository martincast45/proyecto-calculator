FROM python:3.8-slim

# elegimos la carpeta donde vamos a trabajar 

WORKDIR /app

# Copiar los archivos necesarios al contenedor

COPY requirements.txt .
COPY calculadora.py .
COPY templates templates

#instalamos pip 
RUN pip install --no-cache-dir -r requirements.txt
#actualizamos los repos
RUN apt update && apt upgrade -y

#EXPONDREMOS EL PUERTO DONDE SE EJECUTARA LA APLICACION

EXPOSE 3000

CMD [ "python3", "calculadora.py"]

