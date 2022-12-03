if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  https://github.com/zerobotz00/filmee
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /zerobotz00
fi
cd /zerobotz00
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
