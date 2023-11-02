FROM codercom/code-server

RUN sudo apt update && \
  sudo apt install -y lsb-release apt-transport-https ca-certificates software-properties-common wget -y && \
  sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg && \
  sudo sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list' && \
  sudo apt update && \
  sudo apt install -y php8.2-cli php8.2-ctype php8.2-curl php8.2-dom php8.2-fileinfo php8.2-mbstring php8.2-pdo php8.2-tokenizer php8.2-xml

RUN curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
