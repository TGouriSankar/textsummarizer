# Use the official Python image from the Docker Hub
FROM python:3.10.14

# Set the working directory in the container
WORKDIR /TextSummarizer

# Copy the rest of the files
COPY . /TextSummarizer

# List files to verify the presence of requirements.txt
RUN ls -al /TextSummarizer

# Create a virtual environment and install dependencies
RUN python -m venv /TextSummarizer/TS && \
    /bin/bash -c "source /TextSummarizer/TS/bin/activate && \
    pip install --no-cache-dir gradio && \
    pip install --no-cache-dir torch && \
    pip install --no-cache-dir transformers"

# Make port 8030 available to the world outside this container
EXPOSE 8030

# Run app.py when the container launches
CMD ["/bin/bash", "-c", "source /TextSummarizer/TS/bin/activate && python /TextSummarizer/app.py"]

