﻿#language: ru

@tree

Функционал: Закрытия документов в ВКМ_ОбслуживаниеКлиента.

Как тестировщик-автоматизатор я хочу
Записать feature файл для задания 2 дипломной работы, 
чтобы применить на практике полученные знания   

Контекст:
	Дано я подключаю профиль TestClient "Специалист" 

Сценарий: Я закрываю документ Обслуживание клиента

И В командном интерфейсе я выбираю 'Обслуживание клиентов' 'Обслуживание клиента'
Тогда открылось окно 'Обслуживание клиента'
И в таблице "Список" я выбираю текущую строку
*Добавляю информацию в документ Обслуживание клиента и провожу
	Тогда открылось окно 'Обслуживание клиента * от *'
	И я перехожу к закладке с именем "СтраницаРаботы"
	И в таблице "ВКМ_ВыполненныеРаботы" я нажимаю на кнопку с именем 'ВКМ_ВыполненныеРаботыДобавить'
	И в таблице "ВКМ_ВыполненныеРаботы" в поле с именем 'ВКМ_ВыполненныеРаботыВКМ_ОписаниеРабот' я ввожу текст 'Оптимизация работы компьютера'
	И в таблице "ВКМ_ВыполненныеРаботы" я активизирую поле с именем "ВКМ_ВыполненныеРаботыВКМ_ФактическиПотраченоЧасов"
	И в таблице "ВКМ_ВыполненныеРаботы" в поле с именем 'ВКМ_ВыполненныеРаботыВКМ_ФактическиПотраченоЧасов' я ввожу текст '4,00'
	И в таблице "ВКМ_ВыполненныеРаботы" я активизирую поле с именем "ВКМ_ВыполненныеРаботыВКМ_ЧасыКОплатеКлиенту"
	И в таблице "ВКМ_ВыполненныеРаботы" в поле с именем 'ВКМ_ВыполненныеРаботыВКМ_ЧасыКОплатеКлиенту' я ввожу текст '4,00'
	И в таблице "ВКМ_ВыполненныеРаботы" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна 'Обслуживание клиента * от * *' в течение 20 секунд


