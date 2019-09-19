echo "### Running Post Observation Script"

for var in "$@"
do
    echo "$var" >> /datadrive/shelltest.txt
done

meteorfile="/datadrive/data_*.s"
 
if [ -f $meteorfile ]
then
        mv /datadrive/data_*.s /datadrive/meteor/
        echo `date +%F" "%T`" Meteor file exists" >> /datadrive/freqset.txt
        /usr/bin/python /datadrive/process_meteor.py '"'$1'"' &
fi
