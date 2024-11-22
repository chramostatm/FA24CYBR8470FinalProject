FROM python:3.11

WORKDIR /CollectionShowcase

# copy requirements file
COPY requirements.txt /CollectionShowcase


RUN pip install -r requirements.txt


# copy project files into container app directory
COPY ./webservices /CollectionShowcase/

EXPOSE 8000
CMD ["sh", "./run.sh"]
