# Use Python 3.10 as the base image
FROM python:3.10-alpine3.13

# Set the working directory in the container
# WORKDIR /app

# Copy all files from the current directory to the /app directory in the container
COPY requirements.txt requirements.txt

# Install dependencies from requirements.txt
RUN pip install -r requirements.txt

# Expose the port Flask will run on (default 5000)
# EXPOSE 5000


# Set the environment variable for Flask
# ENV FLASK_APP=app.py

# Command to run the Flask app
CMD ["flask", "run", "--host", "0.0.0.0"]
