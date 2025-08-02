FROM python:3.10

WORKDIR /app

COPY . .

RUN pip install fastapi uvicorn jinja2 aiofiles requests

EXPOSE 8000

CMD ["uvicorn", "edgenova:app", "--host", "0.0.0.0", "--port", "8000"]
