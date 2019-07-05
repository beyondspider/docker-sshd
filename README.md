# docker sshd

## build
```bash
docker build -t beyondspider/sshd:latest .
```

## start
```bash
docker run -u root -d --env ROOT_PASS=root -p 10022:22 --name sshd beyondspider/sshd:latest
docker run -u root -d -p 10022:22 --name sshd beyondspider/sshd:latest
```

## ssh
```bash
ssh root@127.0.0.1 -p 10022
```

## push
```bash
docker push beyondspider/sshd:latest
```
