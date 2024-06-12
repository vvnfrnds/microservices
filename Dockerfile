FROM python:3.7-alpine
WORKDIR /app
COPY requirements.txt /app
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app
ENV PORT 5000
EXPOSE 5000
ENTRYPOINT ["python", "app.py"]
