# Use the official Python image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /

# Copy the MkDocs configuration and all the project files to the container
COPY . .

# Install MkDocs and required plugins
RUN pip install mkdocs mkdocs-material mkdocs-awesome-pages-plugin

# Expose the port MkDocs will run on
EXPOSE 8000

# Run MkDocs when the container starts
CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000"]
