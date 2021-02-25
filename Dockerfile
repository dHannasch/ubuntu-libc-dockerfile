FROM ubuntu:devel

# Installing common packages such as wget, curl and git will incidentally upgrade libc.
# This Dockerfile just upgrades libc to avoid the distraction of the specific package wget/curl/git.
# It makes no difference whether you upgrade libc6 or libc-bin. Either will upgrade the other.
RUN apt-get update && apt-get install --assume-yes --no-install-recommends libc-bin
