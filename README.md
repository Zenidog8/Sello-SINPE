# Sello-SINPE
Script para la firma de archivos con sello de tiempo sinpe

<hr>

<strong> Resumen del contenido: </strong>

```bash
gpg --sign --armor $1
openssl ts -query -data $1 -cert -no_nonce -out request.tsq
cat request.tsq | curl -s -S -H 'Content-Type: application/timestamp-query' --data-binary @- http://tsa.sinpe.fi.cr/tsaHttp/ -o $1.tsr
openssl sha1 -out $1.sha1 $1
```
