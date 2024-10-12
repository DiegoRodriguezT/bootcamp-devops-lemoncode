### 1. Crea mediante comandos de bash la siguiente jerarquía de ficheros y directorios

```bash
foo/
├─ dummy/
│  ├─ file1.txt
│  ├─ file2.txt
├─ empty/
```

Donde `file1.txt` debe contener el siguiente texto:

```bash
Me encanta la bash!!
```

Y `file2.txt` debe permanecer vacío.

---
#### Solución

```bash
mkdir -p foo/{dummy,empty}

touch ./foo/dummy/file{1,2}.txt

echo "Me encanta la bash\!\! " > ./foo/dummy/file1.txt

```
