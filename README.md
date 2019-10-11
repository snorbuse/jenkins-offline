# Jenins offline

A dockerbuild for creating a Jenkins image for offline usage.
This is suitable if you are behind a company firewall and can't access the internet.
This image bundles the plugins so you don't have to download them.

Just add your plugins (and versions) to plugins.txt and off you go (well, you'll have to build your image first)

1. Build this image `docker build -t snorbuse/jenkins-offline:lts .`
1. Save this as a tar-file `docker save -o snorbuse.jenkins-offline.lts.tar snorbuse/jenkins-offline:lts`
1. Move the tar-file to your on prem environment
1. Load the tar-file into Docker `docker load -i snorbuse.jenkins-offline.lts.tar`
