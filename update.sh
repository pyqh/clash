cd subconverter
./subconverter -g
sed -i 's/Proxy/proxies/' proxy.yaml
curl -X PUT -H "Authorization: Bearer key" 127.0.0.1:9090/configs -d "{}"
