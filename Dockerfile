From python


COPY django-filesharing/requirements.txt requirements.txt 

RUN pip install --no-cache-dir -r requirements.txt

COPY django-filesharing/. code

WORKDIR /code

EXPOSE 8000

ENTRYPOINT ["python", "/code/manage.py"]

CMD ["runserver", "0.0.0.0:8000"]

