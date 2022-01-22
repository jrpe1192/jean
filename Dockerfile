FROM debian:buster-slim
RUN cd /tmp && \
apt update && \
apt full-upgrade -y && \
apt install wget libglib2.0-0 netbase -y && \
wget https://update.u.is/downloads/uam/linux/uam-latest_amd64.deb && \
dpkg -i /tmp/uam-latest_amd64.deb
CMD /opt/uam/uam --pk 3475EA281FBE4DC90E863E95F0A56E9106C30A8295E17B6B716CC12542354046 --no-ui
