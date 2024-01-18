# Use the official Python image
FROM python:3.9.18-slim-bookworm

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app/

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose the port that FastAPI will run on
# EXPOSE 8000

# Command to run your application
CMD uvicorn main:app --port=8000 --host=0.0.0.0
