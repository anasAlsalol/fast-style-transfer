#!/bin/bash

APT_PACKAGES="apt-utils ffmpeg libav-tools x264 x265"
apt-install() {
	export DEBIAN_FRONTEND=noninteractive
	apt-get update -q
	apt-get install -q -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" $APT_PACKAGES
	return $?
}

#install ffmpeg to container
add-apt-repository -y ppa:jonathonf/ffmpeg-3 2>&1
apt-install || exit 1

#create folders
mkdir data
mkdir data/bin
#run style transfer on video

# custome Code 

apt-get update -y
apt-get install sox libsox-fmt-mp3 virtualenv python3-dev wget git -y
apt-get dist-upgrade -y
virtualenv -p python3 $HOME/tmp/deepspeech-train-venv/
. $HOME/tmp/deepspeech-train-venv/bin/activate

git clone --branch v0.9.3 https://github.com/mozilla/DeepSpeech
cd DeepSpeech
pip3 install --upgrade pip==20.2.2 wheel==0.34.2 setuptools==49.6.0
pip3 install --upgrade -e .
python setup.py install