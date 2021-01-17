FROM python:3.9-buster
RUN pip install poetry virtualenv
ENTRYPOINT ["entrypoint_pyinstaller.sh"]
