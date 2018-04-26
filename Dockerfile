FROM python:3.6.4-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt
RUN pip install slackclient

EXPOSE 5000
EXPOSE 6379
# Define environment variable
ENV NAME World

# Run Testing.py when the container launches
CMD ["python", "app.py"]
