diff_on_save.sh - можно запускать с расширением например Run on Save
пример конфига -

```JSON
 "emeraldwalk.runonsave": {
    "commands": [
      {
        "match": ".*",
        "cmd": "sh ~/Documents/diff_on_save.sh ${relativeFile}"
      }
    ]
  },
```

uploader.sh запустить фоном для отслеживания изменений и загрузки их на сервер
