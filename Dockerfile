# Use the official Python image as a parent image
FROM python:3.9

# Set the working directory within the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt requirements.txt

# Install the Python packages listed in requirements.txt
RUN pip install -r requirements.txt

# Copy the Python Flask application code into the container
COPY index.py index.py

# Expose the port your Flask app will run on
EXPOSE 8081

# Command to run the application
CMD ["python3", "index.py", "--host=0.0.0.0"]
