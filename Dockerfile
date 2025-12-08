# Start from a base Jupyter image
FROM jupyter/datascience-notebook:latest

# Copy your requirements file into the container
COPY requirements.txt ./requirements.txt

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set the working directory
WORKDIR /home/jovyan/work
