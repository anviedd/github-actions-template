cat line_count.log

COUNT=`cat line_count.log|grep -e "py"|wc -l|awk '{if ($1 > 0) {print $1} else {print 0}}'`
echo $COUNT

if [ $COUNT = "0" ]; then
    echo “Success Exit”
    exit 0
else
    echo “Failed Exit”
    exit 1
fi