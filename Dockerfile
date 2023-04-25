FROM python:3

# Set the working directory to /app
WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN python manage.py migrate
EXPOSE 8001
CMD ["python","manage.py","runserver","0.0.0.0:8001"]
