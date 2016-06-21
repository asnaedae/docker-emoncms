# docker-emoncms

Emoncms is a powerful open-source web-app for processing, logging and visualising energy, temperature and other environmental data.

Run with:

```
docker run -t -i --rm=true --net="host" \
      -v "/etc/mysql":"/tmp/mysql" \
	  -v "/var/lib/mysql":"/tmp/mysql" \
	  -v "/var/lib/phpfiwa":"/tmp/phpfiwa" \
	  -v "/var/lib/phpfina":"/tmp/phpfina" \
	  -v "/var/lib/phptimeseries":"/tmp/phptimeseries" \
	  -v "/var/www/html":"/tmp/html" \
	  -v "/etc/localtime":"/etc/localtime":ro \
      snoopy86/emoncms
```
Change tmp to your preferred location on the host.

DONATE - https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=GSRTR79H7Q47J