# Usa Python 3.8 (versión compatible con Rasa)
FROM python:3.8-slim

# Define el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el contenido de tu proyecto al contenedor
COPY . /app

# Instala las dependencias
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Define el comando para iniciar el servicio
CMD ["rasa", "run", "--enable-api", "--cors", "*"]