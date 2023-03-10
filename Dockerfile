FROM luffy01/taku:hero

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN apt -qq update --fix-missing && \
    apt -qq install -y \
    mediainfo

COPY . .
RUN pip3 install --no-cache-dir -r requirements.txt


CMD ["bash", "start.sh"]
