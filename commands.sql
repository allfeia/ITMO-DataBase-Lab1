Использованные команды в терминале:
\d имя_таблицы - вывод информации (полей) таблицы
\dt - вывод списка отношений таблиц

Команды для работа с бд:
SELECT * FROM имя_таблицы; //вывод всего содержимого таблицы по столбцам
ALTER TABLE имя_таблицы RENAME COLUMN имя_поля TO новое_имя_поля; //изменение имени поля
//изменениеи имени таблицы
UPDATE имя_таблицы SET имя_поля = REPLACE(имя_поля, 'содержимое', 'новое_содержимое'); //замена содержимого поля