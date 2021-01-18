FROM python:3.9-buster
RUN pip install poetry virtualenv
COPY entrypoint_pyinstaller.sh /entrypoint_pyinstaller.sh
RUN chmod +x /entrypoint_pyinstaller.sh
ENTRYPOINT ["/entrypoint_pyinstaller.sh"]
