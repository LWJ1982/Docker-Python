# Using latest base image from DockerHub
FROM python:latest

#Creating working directory inisde container
WORKDIR /app

#Copy source cde into working directory inside container
COPY . /app

#Copy source ccode into working directory inside container
RUN pip install -r requirements.txt

#Expose container port
EXPOSE 8080

#Start flask app
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]