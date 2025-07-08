# Use the official Python image from the Docker Hub
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code into the container
COPY . .

# Set environment variables (optional)
# ENV BOT_TOKEN=your_bot_token_here
# ENV API_ID=your_api_id_here
# ENV API_HASH=your_api_hash_here
# ENV TELEGRAPH_TOKEN=your_telegraph_token_here  # Optional

# Command to run your bot
CMD ["python", "main.py"]
