if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Emilyoftg/Loki2.git /Loki2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Loki2
fi
cd /Loki2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
