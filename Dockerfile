# Используем официальный Node.js образ
FROM node:22

# Устанавливаем pnpm глобально
RUN npm install -g pnpm

# Создаём рабочую директорию
WORKDIR /app

# Копируем package.json и pnpm-lock.yaml
COPY package.json pnpm-lock.yaml ./

# Устанавливаем зависимости
RUN pnpm install

# Копируем весь проект
COPY . .

# Открываем порт Astro (по умолчанию 4321)
EXPOSE 4321

# Запускаем Astro dev-сервер
CMD ["pnpm", "run", "dev", "--host"]
