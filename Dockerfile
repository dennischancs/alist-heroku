FROM xhofe/alist:v2
# FROM xhofe/alist:latest 失败，报index.html not find错误

LABEL MAINTAINER="i@nn.ci"

RUN chmod -R 777 /opt/alist/data
ADD alist.sh /alist.sh
RUN chmod +x /alist.sh

CMD /alist.sh
