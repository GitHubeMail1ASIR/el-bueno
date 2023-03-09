FROM python:3
LABEL githubemail1asir "githubemail1asir@gmail.com"
WORKDIR /usr/src/app
RUN pip install --root-user-action=ignore --upgrade pip && pip install --root-user-action=ignore django mysqlclient && git clone https://github.com/GitHubeMail1ASIR/el-bueno.git /usr/src/app && mkdir static && apt clean && rm -rf /var/lib/apt/lists/*
#ADD conf.sh /usr/src/app/
RUN chmod +x /usr/src/app/conf.sh
ENTRYPOINT ["/usr/src/app/conf.sh"]
