FROM python:3.9

COPY app.py .

RUN pip install flask

CMD ["python", "app.py"]
