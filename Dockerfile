services:
  locary:
    build:
      context: .
      dockerfile: Dockerfile
    ports:
      - "4321:4321"
    restart: always
