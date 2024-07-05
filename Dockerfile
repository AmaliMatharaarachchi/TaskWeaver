# Use an official Python runtime as a parent image
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Install the chainlit library
RUN pip install chainlit==1.1.202

# Copy the current directory contents into the container at /app
COPY . .

# Expose port 8000 for the application
EXPOSE 8000

# Define environment variable
ENV PYTHONUNBUFFERED=1

# List files in the working directory to ensure the necessary files are copied
RUN ls -la /app/TaskWeaver/playground/UI

# Command to run the application
CMD ["chainlit", "run", "/app/TaskWeaver/playground/UI/app.py"]