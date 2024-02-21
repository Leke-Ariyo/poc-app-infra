FROM  --platform=linux/amd64 python:3.9-slim as build

# Install prometheus_client library
RUN pip install prometheus_client

# Copy the Python script into the container
COPY mock_exporter.py /mock_exporter.py

# Expose the port the app runs on
EXPOSE 8000

# Command to run the script
CMD ["python", "/mock_exporter.py"]
