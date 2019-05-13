sed -i "s/OPSGENIE_API_KEY/${OPSGENIE_API_KEY}/g" /etc/opsgenie/marid/marid.conf

service marid start

while true
 do sleep 1000
done

