FROM centos:6

RUN yum install -y aspell-devel \
    autoconf \
    automake \
    bzip2-devel \
    freetype-devel \
    gcc \
    gcc-c++ \
    gmp-devel \
    httpd-devel \
    libXpm-devel \
    libcurl-devel \
    libicu-devel \
    libjpeg-devel \
    libmcrypt-devel \
    libpng-devel \
    libtidy-devel \
    libtool \
    libvpx-devel \
    libxml2-devel \
    libxslt-devel \
    libyaml-devel \
    openssl-devel \
    pcre-devel \
    readline-devel \
    rpm-build \
    t1lib-devel \
    tar \
    vim \
    which \
    net-tools \
    curl \
    zlib-devel && \
    yum clean all

COPY etc /etc
COPY entrypoint.sh /
CMD ["bash", "/entrypoint.sh"]
