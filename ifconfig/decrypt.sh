ntge decrypt -p "$DEV_HOME_DIR/NDevMgr/ifconfig/$1.ntge.txt" -i `hostname` > /tmp/1f92310a-beb4-4e9e-a29d-3c51a595be21.txt
cat /tmp/1f92310a-beb4-4e9e-a29d-3c51a595be21.txt

node -e "var updatedAt = fs.readFileSync('/tmp/1f92310a-beb4-4e9e-a29d-3c51a595be21.txt').toString().trim().split('\\n')[0]; \
    console.log('Updated ' + Math.floor( (Date.now()-(new Date(updatedAt)))/1000/60 ) + ' min ago');"

rm /tmp/1f92310a-beb4-4e9e-a29d-3c51a595be21.txt
