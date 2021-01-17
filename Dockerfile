FROM python:3.9-buster
RUN pip install poetry virtualenv
COPY entrypoint_pyinstaller.sh .
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["entrypoint_pyinstaller.sh"]
