FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy code
COPY . .

# prevent Python from writing pyc files to disc (equivalent to python -B option):
ENV PYTHONDONTWRITEBYTECODE=1
# prevent Python from buffering stdout and stderr (equivalent to python -u option):
ENV PYTHONUNBUFFERED=1
