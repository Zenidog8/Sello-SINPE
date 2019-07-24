#Firmar un documento:
gpg --sign --armor $1

#SINPE:
openssl ts -query -data $1 -cert -no_nonce -out request.tsq
cat request.tsq | curl -s -S -H 'Content-Type: application/timestamp-query' --data-binary @- http://tsa.sinpe.fi.cr/tsaHttp/ -o $1.tsr

#SHA-1:
openssl sha1 -out $1.sha1 $1
