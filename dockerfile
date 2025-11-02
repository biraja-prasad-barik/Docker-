# use an official Python runtime as a parent image 
FROM python:3.8-slim

# set the working directory in the container 
WORKDIR /app

# copy the current directory contains into the container at/app
COPY . /app

#install any need packages specified in requirement.txt
RUN pip install no cache dir r requirements.txt

#make port 5000 available in the world outside this container 
EXPOSE 5000

#Define envoirment variable
ENV FLASK_APP=app.py

# Run the flask app 
CMD ["flask", "run", "--host=0.0.0.0"]
