# Test-Driven Development with FastAPI and Docker

![Continuous Integration and Delivery](https://github.com/testdrivenio/fastapi-tdd-docker/workflows/Continuous%20Integration%20and%20Delivery/badge.svg?branch=main)

https://testdriven.io/courses/tdd-fastapi/


## Pipeline de CI/CD (`main.yml`)

Este workflow de GitHub Actions se ejecuta automáticamente en cada `push` al repositorio. Implementa un pipeline de **Integración y Entrega Continua** dividido en tres jobs que se ejecutan en secuencia: `build` → `test` → `deploy`.

---

### Variables globales

Antes de correr cualquier job, el workflow define la variable `IMAGE` con la ruta de la imagen Docker en GitHub Container Registry (GHCR), construida a partir del nombre del repositorio en minúsculas: 