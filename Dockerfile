# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any dependencies in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Run a script when the container starts
CMD ["python", "src/a_b_testing_code.py"]