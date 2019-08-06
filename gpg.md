# Crear una llave gpg
```bash
gpg --gen-key
```
# Crear un fingerprint de la llave (Ingresar el correo de la llave)
```bash
gpg --fingerprint zenidog@zenidog.com
```
# Exportar la llave a un archivo para recuperar en caso de pérdida
```bash
gpg --export --armor zenidog@zenidog.com > pubkey.asc
```
# Publica la llave en el servidor del mit
```bash
gpg --keyserver hkp://pgp.mit.edu --send-key ID
```
# Listar información de las llaves
```bash
gpg --list-keys
```
