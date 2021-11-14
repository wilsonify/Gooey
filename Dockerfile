FROM python:3.9.8-slim-buster
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y build-essential libgtk-3-dev
RUN pip install -r requirements.txt
RUN pip install -r GooeyExamples/requirements.txt
ENTRYPOINT ["python", "examples/widget_demo.py"]
