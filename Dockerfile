# Base image
FROM Python:3.8-alpine

# Setting the working directory inside the container
WORKDIR /app

# copy requirements files to working directory inside the container
COPY requirements.txt /app/requirements.txt

# install python dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY . /app

# expose port
EXPOSE 8000

# Command to run the application
CMD [ "Python" "main.py" ]
