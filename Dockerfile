FROM python:3

# set a directoy for the app
WORKDIR /user/src/app

# copy all the files in host working dir to the container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r flask-app/requirements.txt

# define the port number the container should expose
EXPOSE 5000

# run the command
CMD ["python", "flask-app/app.py"]