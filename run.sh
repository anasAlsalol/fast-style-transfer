#run style transfer on video
apt-get update -y
apt install python3-pip -y

# custome Code 

apt-get install sox libsox-fmt-mp3 virtualenv python3-dev wget git -y
apt-get dist-upgrade -y
mkdir venv
mkdir venv/deepspeech-train-venv
virtualenv -p python3.6 venv/deepspeech-train-venv/
. venv/deepspeech-train-venv/bin/activate
git clone --branch v0.9.3 https://github.com/mozilla/DeepSpeech
cd DeepSpeech
pip3 install --upgrade pip==20.2.2 wheel==0.34.2 setuptools==49.6.0
pip3 install --upgrade -e .
#pip3 install pathlib sox progressbar urllib3 
pip3 uninstall tensorflow -y
pip3 install 'tensorflow-gpu==1.15.4'
ls 
pip3 install deepspeech-gpu
python3 setup.py install