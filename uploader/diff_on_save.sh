#!/bin/bash

relative_file_path="$1"

echo $relative_file_path > "PATH" # Путь до измененного файла для загрузки по sftp, uploader.sh поддерживает список путей

git diff $relative_file_path | md5 > "PATH" # Hash изменений для триггера
