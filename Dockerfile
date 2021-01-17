FROM python:3.9-buster
RUN pip install poetry virtualenv
COPY entrypoint_pyinstaller.sh .
ENTRYPOINT ["entrypoint_pyinstaller.sh"]
