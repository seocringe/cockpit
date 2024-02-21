# Начнем с базового образа quay.io/cockpit/tasks:latest
FROM quay.io/cockpit/tasks:latest

# Команда запуска из вашего предыдущего запроса
ENTRYPOINT ["/usr/local/bin/cockpit-tasks"]
CMD ["--verbose"]

# Создаем точку монтирования на базе данных, предоставленных ранее
VOLUME ["/cache/images"]

# Описание метаданных образа на основе JSON
LABEL io.buildah.version="1.23.1" \
      license="MIT" \
      maintainer="cockpit-devel@lists.fedorahosted.org" \
      name="fedora" \
      vendor="Fedora Project" \
      version="39"

# Если требуется открыть порты, используйте EXPOSE (о раскрытых портах информации не было)
