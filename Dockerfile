FROM fusuf/whatsasena:latest

RUN git clone https://github.com/albin121200/dino /root/dino

WORKDIR /root/dino/

ENV TZ=Europe/Istanbul

RUN npm install supervisor -g

RUN yarn install --no-audit

CMD ["node", "bot.js"]
