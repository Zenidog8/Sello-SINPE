# Crear una llave gpg
```bash
gpg --gen-key
```
# Crear un fingerprint de la llave (Reemplazar el correo por el de la llave)
```bash
gpg --fingerprint zenidog@zenidog.com
```
# Exportar la llave publica a un archivo (Reemplazar el correo por el de la llave)
```bash
gpg --export --armor zenidog@zenidog.com > pubkey.asc
```
# Listar información de las llaves
```bash
gpg --list-keys
```
# Publica la llave en el servidor del mit (Reemplazar ID por el de la llave)
```bash
gpg --keyserver hkp://pgp.mit.edu --send-key ID
```
