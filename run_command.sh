# G1 Low Cost
paperspace jobs create \
--container "paperspace/tensorflow:1.5.0-gpu" \
--machineType "K80" \
--command "bash run.sh" \
--workspace "https://github.com/anasAlsalol/fast-style-transfer.git" \
--isPreemptible true \
--project "DeepSpeech Model"