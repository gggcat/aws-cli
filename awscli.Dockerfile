FROM zzzcat/dispshell:python3

#
# AWS-CLI
#
COPY aws-cli-requirements.txt .
RUN pip install --upgrade pip setuptools wheel && \
    pip install -r aws-cli-requirements.txt && \
    echo "*** INSTALLED: aws-cli modules ***"

#
# Docker
# 
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends docker.io && \
    apt-get install -y --no-install-recommends docker-compose && \
    echo "*** INSTALLED: docker & docker tools ***"
