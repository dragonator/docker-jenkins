FROM jenkins/jenkins

USER root

# RUN wget https://packages.microsoft.com/config/ubuntu/20.10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
#     dpkg -i packages-microsoft-prod.deb && \
#     apt-get update && \
#     apt-get install -y apt-transport-https && \
#     apt-get install -y dotnet-sdk-5.0

USER jenkins

ENTRYPOINT []
CMD /sbin/tini -- /usr/local/bin/jenkins.sh --httpPort=$PORT
