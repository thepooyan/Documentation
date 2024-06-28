# General
```bash
gpg --gen-key
gpg --list-keys
gpg --list-secret-keys
```

# Sign
```bash
gpg --clearsign message.txt
gpg --verify message.txt.asc

gpg --detach-sign message.txt
gpg --verify message.txt.sig message.txt
```

# Encode
```bash
gpg --import recipient_public_key.asc

gpg --output message.txt.gpg --encrypt --recipient recipient@example.com message.txt

gpg --output decrypted_message.txt --decrypt message.txt.gpg

```

# Symmetric
```bash
gpg --symmetric --cipher-algo AES256 message.txt
gpg --output decrypted_message.txt --decrypt message.txt.gpg
```