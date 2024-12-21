# Usar Python 3.8 como base
FROM python:3.8-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar todos los archivos del proyecto al contenedor
COPY . /app

# Instalar dependencias
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Comando de inicio
CMD ["rasa", "run", "--enable-api", "--cors", "*"]