FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt
RUN pip install pytest

EXPOSE 5000

CMD ["python", "app.py"]
