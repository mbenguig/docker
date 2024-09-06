rm -rf env
python3 -m venv env
source env/bin/activate

python3 -m pip install --upgrade pip

# Install project dependencies
python3 -m pip install -r requirements.txt

