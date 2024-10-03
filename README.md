# Инструкция по начальной настройке конфигурации

База находится по [адресу](https://disk.yandex.ru/d/pwuLHifSgZa5XA)

## В дипломной работе добавлены пользователи с соответствующими правами доступа:

1.	Администратор -  администратор с полными правами в базе;
2.	Менеджер - сотрудник, отвечающий за планирование работ для клиентов;
3.	Специалист - сотрудник, исполняющий работы для клиентов с последующем внесения работ в базу;
4.	БухгалтерИТФирмы - сотрудник, отвечающий за взаиморасчеты с клиентами;
5.	Кадровик-расчетчик - сотрудник, отвечающий за начисления зарплат, премий и учет отпусков;

### В дипломной работе добавлены объекты:

1. Подсистема ''ВКМ_ДобавленныеОбъекты'', в которой находятся все добавленные объекты.
2. Подсистема ''ВКМ_ОбслуживаниеКлиентов'':
    
    - Документ ''Обслуживание клиента'',
    - Регистр сведений ''Условия оплаты сотрудников''
    - Отчет ''Анализ выставленных актов''
    - Отчет ''Выработка специалистов''
    - Обработка ''Массовое создание актов''
    - Константа ''Токен управления телеграм ботом''
    - Константа ''Идентификатор группы для оповещения''
        
    также введена дополнительная подсистема ''ВКМ_Телеграм'', в которой присутствует:
      - Справочник ''Управление телеграм боту''

3. Подсистема  ''ВКМ_Зарплата'':
	
    Планы видов расчета: 
	   
      - ''Основные начисления''
      - ''Дополнительные начисления''
      - ''Удержания''
	
    Введена дополнительная подсистема ''ВКМ_Отпуска'', в которой присутствуют:
	    
      - Документ ''График отпусков''
      - Справочник ''Графики работы''
	
    также введена дополнительная подсистема ''ВКМ_Вознаграждения'', в которой присутствуют:
      
      - Документ ''Начисление зарплаты''
      - Документ ''Начисление фиксированных премий''
      - Документ ''Выплата зарплаты''
      - Регистр сведений ''Условия оплаты сотрудников''
    
    остальные объекты находятся в подсистеме ''ВКМ_ДобавленныеОбъекты''
      
      - Отчет ''Расход запланированных отпусков''
      - Отчет ''Расчеты с сотрудниками''
      - Обработка ''Заполнение графика''

### Заполнение констант:

Все первоначальные настройки - действия необходимо выполнять пользователем с правами Администратор.

  - установить значение константы ''Номенклатура абонентская плата'', константа находится в Функции  для технического специалиста. 
  - установить значение константы ''Номенклатура работы специалиста'', константа находится в Функции  для технического специалиста.
  - установить значение константы ''Токен управления телеграм ботом'', константа находится в подсистеме ''Добавленные объекты'' – ''Сервис''.
  - установить значение константы ''Идентификатор группы для оповещения'', константа находится в подсистеме ''Добавленные объекты'' – ''Сервис''.

### Заполнение данными:

Перед началом работы убедитесь, что все справочники и сопутствующие регистры корректно заполнены:

   - Графики работы;
   - Договоры контрагентов;
   - Контрагенты;
   - Номенклатура;
   - Организации;
   - Пользователи;
   - Условия оплаты сотрудников;

Корректно заполненные данные являются основой для правильного функционирования базы. 

### Краткое описание функционала пользователей:

Менеджер заполняет заявку  от клиента  в документе ''Обслуживание клиента''. На вкладке ''Основная'' менеджер заполняет поля, при этом использует справочники Контрагенты, Договоры контрагентов, Пользователи далее заполняет строки ''Дата проведения работ'', ''Время начала работ'', ''Время окончания работ'' и в конце этой закладке заполняет строки ''Описание проблемы'' и ''Комментарий''. После проведения документа ''Обслуживание клиента'' информация о заявке передается Специалистам в Телеграм.

Специалист получает заявку из Телеграм, выполняет ее и вносит данные о проделанной работе в документе ''Обслуживание клиента'' на вкладке ''Работы'' заполняет  табличную часть с полями ''Описание работ'',  ''Фактически потрачено часов'' и ''Часы к оплате клиенту''. 

Бухгалтер фирмы в начале месяца с помощью обработки ''Массовое создание актов'' формирует акты по всем абонентским договорам.

Кадровик - расчетчик вводит информацию и анализирует отпуска документом ГрафикОтпусков, а также производит начисление зарплаты документами НачислениеЗарплаты и НачислениеФиксированнойПремии, производит выплату зарплаты документом ВыплатаЗарплаты.
