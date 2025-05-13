# 🐳 Configuración de Docker

Este es mi repositorio para archivos de configuración de Docker. Aquí encontrarás configuraciones para un proyecto simple de PHP con Apache. 🚀

---

## 📋 Prerrequisitos
- Tener Docker instalado en tu máquina.

---

## 🚀 Uso
1. Clona este repositorio en tu directorio de trabajo:
   ```bash
   git clone https://github.com/Piioni/Docker_config.git
   ```
   
2. Navega al directorio del proyecto:
   ```bash
   cd Docker_config
   ```

3. Construye y levanta los contenedores con Docker Compose:
   ```bash
   docker-compose up -d
   ```

4. Para ver los logs de los contenedores:
   ```bash
   docker-compose logs -f
   ```

5. Para detener los contenedores:
   ```bash
   docker-compose down
   ```

---

## 🌐 Notas
- ¡Y eso es todo! Ahora puedes comenzar a desarrollar tu aplicación PHP. El servidor web estará disponible en `http://localhost:8080`.


- Para acceder a la interfaz de phpMyAdmin, ve a `http://localhost:8081` en tu navegador.


- Se recomienda usar un archivo `.env` para almacenar las variables de entorno de tu aplicación. Puedes usar el archivo `.env` proporcionado en este repositorio como plantilla. El archivo `docker-compose.yml` las detectará automáticamente.


- La configuración actual establece el directorio raíz en `/var/www/html` dentro del contenedor, con el documento raíz en `/var/www/html/public`. Puedes cambiar esto en el archivo `docker-compose.yml` si es necesario.

---
