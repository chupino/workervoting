git clone https://github.com/chupino/workervoting.git worker
cd worker

docker build -t worker .

if [ $? -eq 0 ]; then
    echo "bien"
else
    echo "mal"
    exit 1
fi

docker run -dp 8000:80 --name=worker-app worker