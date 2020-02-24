FROM python:3.7-alpine

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./start /start
RUN sed -i 's/\r$//g' /start
RUN chmod +x /start

WORKDIR /app
