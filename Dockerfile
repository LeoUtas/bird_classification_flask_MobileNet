# Use a slim version of Python
FROM python:3.11-slim


# Set the working directory in the Docker image
WORKDIR /app


# Install tensorflow cpu
RUN pip install tensorflow==2.13.0


COPY requirements.txt .
# Install Python dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt


# Copy the rest of application's source code
COPY . .


CMD ["python", "app.py"]