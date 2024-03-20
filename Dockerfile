# Use an official Jupyter Docker image as the base image
FROM jupyter/base-notebook:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the Jupyter Notebook file into the container
COPY notebook.ipynb /app/notebook.ipynb

# Expose port 8888 to allow external connections
EXPOSE 8888

# Start the Jupyter Notebook server when the container is run
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
