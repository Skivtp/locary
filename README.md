
# 📦 Locary

[![Astro](https://img.shields.io/badge/Astro-Static%20Site%20Generator-BC52EE?logo=astro&logoColor=white)](https://astro.build)
[![Node.js](https://img.shields.io/badge/Node.js-22-green?logo=node.js&logoColor=white)](https://nodejs.org)
[![Docker](https://img.shields.io/badge/Docker-Ready-blue?logo=docker&logoColor=white)](https://www.docker.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

**Locary** — это обёртка в Docker для проекта [Fuwari](https://github.com/yCENzh/Fuwari-yCENzh),  
который является статическим сайтом на [Astro](https://astro.build).  
Я лишь завернул его в контейнер для удобного запуска и деплоя через Portainer.

---

## 🚀 Возможности

- ⚡️ Основан на **Astro** — современный статический сайт‑генератор  
- 📝 Поддержка Markdown/MDX для постов и статей  
- 🐳 Готовый **Dockerfile** и `docker-compose.yml` для запуска  
- 🔄 Live‑reload в режиме разработки (через volume‑монтирование)  
- 📦 Простая интеграция с Portainer для деплоя  

---

```bash
locary/
├── src/
│   ├── content/       # Посты и статьи (Markdown/MDX)
│   ├── pages/         # Страницы сайта
│   └── components/    # Компоненты Astro
├── public/            # Статические файлы
├── docker-compose.yml # Конфигурация для Docker/Portainer
├── Dockerfile         # Сборка контейнера
├── package.json
└── README.md

```
🛠 Запуск локально

1. Установка зависимостей
```bash
pnpm install
```
2. Запуск dev‑сервера
```bash
pnpm run dev
```
Сайт будет доступен по адресу: 👉 https://localhost:4321/

🐳 Запуск в Docker
1. Сборка и запуск
```bash
docker-compose up -d --build
```
2. Остановка
```bash
docker-compose down
```
📖 Добавление постов
Создай новый файл в src/content/blog/, например:
```bash
src/content/blog/my-post.md
```
Заполни frontmatter и текст:
```bash
---
title: "Мой первый пост"
pubDate: "2025-10-15"
description: "Описание поста"
author: "Александр"
tags: ["astro", "blog"]
---

Здесь будет содержимое поста.
```
Сохрани — Astro автоматически подхватит изменения (в dev‑режиме).

 Деплой через Portainer

Перейди в Stacks → Add Stack
Укажи Git‑репозиторий: https://github.com/Skivtp/locary.git
В поле Compose path укажи docker-compose.yml
Нажми Deploy the stack

🙏 Благодарности

Оригинальный проект: https://github.com/yCENzh/Fuwari-yCENzh
Автор: https://github.com/yCENzh
Я лишь подготовил Docker‑окружение для удобного запуска.
