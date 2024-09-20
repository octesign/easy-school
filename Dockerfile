#Pick base image using python-3 alpine
FROM python:3.10-alpine

#Create and set a working directory inside the container
WORKDIR /usr/src/app

#copy dependencies to working
COPY requirements.txt .

#Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

#Copy other source codes and files into the pwd
COPY . /usr/src/app/

#Run migrations to database
RUN python3 manage.py makemigrations
RUN python3 manage.py migrate

#Expose port
EXPOSE 8080

#specifying entry point
ENTRYPOINT [ "python3" ]
#str
CMD ["manage.py", "runserver", "0.0.0.0:8080"]