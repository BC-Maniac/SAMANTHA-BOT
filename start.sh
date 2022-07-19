if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/BC-Maniac/SAMANTHA-BOT.git /SAMANTHA-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SAMANTHA-BOT
fi
cd /SAMANTHA-BOT
pip3 install -U -r requirements.txt
echo "STARTING SAMANTHA-BOT...."
python3 main.py
