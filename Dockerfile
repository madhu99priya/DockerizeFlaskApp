# Use a lighter image with Python 3.8
FROM python:3.8-slim

# Set working directory
WORKDIR /app

# Copy dependency file first to leverage Docker layer caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app
COPY . .

# Set environment variables (optional)
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_PORT=8080

# Expose the port for the app
EXPOSE 8080

# Run the app
CMD ["python", "app.py"]
