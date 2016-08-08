# sed -i -e "s/$1/$2/g" serverless.yaml
GOOS=linux GOARCH=amd64 go build -o functions/hello/main functions/hello/main.go
if [ $? -eq 0 ]
   then
       echo "Built go binaries!"
       # find . | grep -v .go | xargs zip "$2".zip
       sls deploy
fi
