﻿#language: ru

@tree

Функционал: Проверка создания документов в ВКМ_ОбслуживаниеКлиента.

Как тестировщик-автоматизатор я хочу
Записать feature файл для задания 1 дипломной работы, 
чтобы применить на практике полученные знания  

Контекст:
	Дано я подключаю профиль TestClient "Менеджер" 

Сценарий: Я создаю новый документ Обслуживание клиента
*Заполнение параметров
И я запоминаю строку "ИП Петров" в переменную "НовыйКонтрагент"
И я запоминаю строку "ООО КомпьютерИТЫ" в переменную "Организация"

	И В командном интерфейсе я выбираю 'Обслуживание клиентов' 'Обслуживание клиента'
	Тогда открылось окно 'Обслуживание клиента'
	*Создание и заполнение нового документа
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Обслуживание клиента (создание)'
		*Создание и заполнение поля Клиент
			И я нажимаю кнопку выбора у поля с именем "ВКМ_Клиент"
			Тогда открылось окно 'Контрагенты'
			И я нажимаю на кнопку с именем 'ФормаСоздать'
			Тогда открылось окно 'Контрагент (создание)'
			И в поле с именем 'Наименование' я ввожу текст '$НовыйКонтрагент$'
			И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
			И я жду закрытия окна 'Контрагент (создание) *' в течение 20 секунд
			Тогда открылось окно 'Контрагенты'
			И я нажимаю на кнопку с именем 'ФормаВыбрать'
		*Создание и заполнение поля Договор
			Тогда открылось окно 'Обслуживание клиента (создание) *'
			И я нажимаю кнопку выбора у поля с именем "ВКМ_Договор"
			Тогда открылось окно 'Договоры контрагентов'
			И я нажимаю на кнопку с именем 'ФормаСоздать'
			Тогда открылось окно 'Договор контрагента (создание)'
			И в поле с именем 'Наименование' я ввожу текст 'Договор для $НовыйКонтрагент$'
			И я нажимаю кнопку выбора у поля с именем "Владелец"
			Тогда открылось окно 'Контрагенты'
			И в таблице "Список" я перехожу к строке:
				| 'Код'       | 'Наименование'      |
				| '000000002' | '$НовыйКонтрагент$' |
			И я нажимаю на кнопку с именем 'ФормаВыбрать'
			Тогда открылось окно 'Договор контрагента (создание) *'
			*Создание и заполнение поля Организация
				И я нажимаю кнопку выбора у поля с именем "Организация"
				Тогда открылось окно 'Организации'
				И в таблице "Список" я перехожу к строке
							| 'Наименование'     |
							| 'ООО КомпьютерИТЫ' |
				И я нажимаю на кнопку с именем 'ФормаВыбрать'
			Тогда открылось окно 'Договор контрагента (создание) *'
			И из выпадающего списка с именем "ВидДоговора" я выбираю точное значение 'Абонентское обслуживание'
			И я нажимаю кнопку выбора у поля с именем "ВКМ_ДатаНачалаДействияДоговора"
			И в поле с именем 'ВКМ_ДатаНачалаДействияДоговора' я ввожу текст '01.01.2024'
			И я нажимаю кнопку выбора у поля с именем "ВКМ_ДатаОкончанияДействияДоговора"
			И в поле с именем 'ВКМ_ДатаОкончанияДействияДоговора' я ввожу текст '31.12.2024'
			И в поле с именем 'ВКМ_СтоимостьЧасаРабот' я ввожу текст '1 800,00'
			И в поле с именем 'ВКМ_СуммаЕжемесячнойАбоненсткойПлаты' я ввожу текст '6 500,00'
			И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
			И я жду закрытия окна 'Договор контрагента (создание) *' в течение 20 секунд
			Тогда открылось окно 'Договоры контрагентов'
			И я нажимаю на кнопку с именем 'ФормаВыбрать'
		*Заполнение поля Специалист
			Тогда открылось окно 'Обслуживание клиента (создание) *'
			И я нажимаю кнопку выбора у поля с именем "ВКМ_Специалист"
			Тогда открылось окно 'Выбор пользователя'
			И в таблице "ПользователиСписок" я перехожу к строке:
				| 'Полное имя'                  |
				| 'Борис Пуговкин (Специалист)' |
			И я нажимаю на кнопку с именем 'ВыбратьПользователя'
			Тогда открылось окно 'Обслуживание клиента (создание) *'
			И я нажимаю кнопку выбора у поля с именем "ВКМ_ДатаПроведенияРабот"
			И в поле с именем 'ВКМ_ДатаПроведенияРабот' я ввожу текст '29.08.2024'
			И в поле с именем 'ВКМ_ВремяНачалаРабот' я ввожу текст '15:00:00'
			И в поле с именем 'ВКМ_ВремяОкончанияРабот' я ввожу текст '17:00:00'
			И в поле с именем 'ВКМ_ОписаниеПроблемы' я ввожу текст 'Нужно отремонтировать'
			И я нажимаю на кнопку с именем 'ФормаЗаписать'
			Тогда открылось окно 'Обслуживание клиента * от *'
			И Я закрываю окно 'Обслуживание клиента * от *'
	
	

