#!/bin/bash
 
clear
 
if [ -z "$1" ]
  then
    echo "Введите абсолютный путь к корневой папке InstantCMS 2.X"
    exit
fi
 
SITE_PATH=$1
 
echo "Устанавливаем корректные права доступа для сайта с корневой категорией $SITE_PATH"
 
find $SITE_PATH/ -type f -exec chmod 644 {} \;
find $SITE_PATH/ -type d -exec chmod 755 {} \;
 
# на время установки
chmod 777 $SITE_PATH/system/config;
 
find $SITE_PATH/cache -type d -exec chmod 777 {} \;
find $SITE_PATH/upload -type d -exec chmod 777 {} \;
find $SITE_PATH/templates/modern/css/ -name "*.css" -exec chmod 666 {} \;
find $SITE_PATH/templates/modern/controllers/ -name "*.css" -exec chmod 666 {} \;
