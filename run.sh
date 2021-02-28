#create folders
mkdir data
mkdir data/bin
#run style transfer on video

# custome Code 

apt-get update -y
apt-get install sox libsox-fmt-mp3 virtualenv python3-dev wget git -y
apt-get dist-upgrade -y
mkdir venv
mkdir venv/deepspeech-train-venv
virtualenv -p python3 venv/deepspeech-train-venv/
source venv/deepspeech-train-venv/bin/activate

git clone --branch v0.9.3 https://github.com/mozilla/DeepSpeech
cd /paperspace/DeepSpeech
pip3 install --upgrade pip==20.2.2 wheel==0.34.2 setuptools==49.6.0
pip3 install --upgrade -e .
python setup.py install
