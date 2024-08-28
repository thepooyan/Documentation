---
date: "2024-08-28"
name: docker-compose
time: 13:50
---

# docker-compose

## docker-compose.yml:
```
services:
  front:
    build: ./frontend/
    ports:
      - "3210:3210"
    depends_on:
      - back

  back:
    build: ./back/
    ports:
      - "3001:3001"
```

## commands

```bash
docker compose up
docker compose down
```
