# Use phusion/baseimage as base image. To make your builds reproducible, make
# sure you lock down to a specific version, not to `latest`!
# See https://github.com/phusion/baseimage-docker/blob/master/Changelog.md for
# a list of version numbers.
FROM phusion/baseimage:0.9.17

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]
RUN apt-get update && apt-get dist-upgrade -y && curl -sL https://deb.nodesource.com/setup_0.12 | bash - && apt-get install -y nodejs && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

