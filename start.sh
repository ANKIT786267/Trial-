if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ANKIT786267/Trial- /Trial-
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO"
  git clone $UPSTREAM_REPO /Trial-
fi

cd /Trial-

pip3 install -U -r requirements.txt

echo "Starting Bot...."
python3 bot.py
