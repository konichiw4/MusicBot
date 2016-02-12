FROM python:3.5-alpine


# install all required dependencies
RUN apk add --update-cache \
        git \
        ffmpeg opus-dev

# install the application
RUN mkdir -p /app
WORKDIR /app
COPY requirements.txt /app
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app


CMD ["python", "run.py"]
