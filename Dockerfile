FROM dataquestio/python3-starter

USER root
ENV HOME=/root
WORKDIR /root
RUN /opt/ds/bin/pip install --upgrade pip
RUN /opt/ds/bin/pip install --upgrade numpy
RUN /opt/ds/bin/pip install --upgrade jupyter scipy pandas matplotlib scikit-learn
RUN /opt/ds/bin/pip install git+https://github.com/pymc-devs/pymc3
RUN /opt/ds/bin/pip install PyWavelets
RUN apt-get install -y texlive texlive-latex-extra pandoc

WORKDIR /home/ds/notebooks

ENV HOME=/home/ds
ENV SHELL=/bin/bash
ENV USER=ds

CMD ["/opt/ds/bin/jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
