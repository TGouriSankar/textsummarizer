#Text Summarizer
A Text Summarizer application using a pre-trained model, deployed with Gradio. This project includes a Docker setup for easy deployment, and the application is also available on Hugging Face Spaces for testing.
Features
    • Summarizes input text using a pre-trained model.
    • Interactive UI built with Gradio.
    • Dockerized for easy deployment.
Getting Started
Prerequisites
    • Docker installed on your machine.
    • An account on Docker Hub (optional, for pulling the Docker image).

Installation
    1. Clone the repository:
      git clone https://github.com/yourusername/textsummarizer.git
      cd textsummarizer
    2.Build the Docker image:
      docker build -t textsummarizer .
    3.Run the Docker container:
      docker run -p 7860:7860 textsummarizer
      
Using the Application

Once the Docker container is running, open your browser and navigate to http://localhost:7860. You will see the Gradio interface where you can input text and get the summarized output.
Docker Hub

The Docker image for this application is available on Docker Hub. You can pull and run the image directly:
    docker pull 10301998/textsummarizer:latest
    docker run -p 7860:7860 10301998/textsummarizer:latest

Hugging Face Space
The application is also deployed on Hugging Face Spaces. You can test it directly here.
Repository Structure
    • app.py: The main application script using Gradio.
    • Dockerfile: Docker configuration file.
    • requirements.txt: List of dependencies.
    • README.md: Project documentation.

Acknowledgments
    • Gradio for the interactive UI.
    • Hugging Face for providing the pre-trained models.
    • Docker for containerization.
Feel free to contribute to this project by submitting issues or pull requests. Happy summarizing!

