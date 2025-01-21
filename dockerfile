# Use a Python base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application files into the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 for the Flask application
EXPOSE 5000

# Define the ENTRYPOINT to run the Flask app
ENTRYPOINT ["python", "app.py"]

# Define the CMD to set default arguments (e.g., Flask app runs on port 5000)
CMD ["--host=0.0.0.0", "--port=5000"]