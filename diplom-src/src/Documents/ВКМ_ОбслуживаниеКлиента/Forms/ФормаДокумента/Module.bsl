#Область ОбработчикиСобытийФормы

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	ПодключаемыеКоманды.ПриСозданииНаСервере(ЭтотОбъект);
КонецПроцедуры

&НаКлиенте
Процедура ПриОткрытии(Отказ)
	ПодключаемыеКомандыКлиент.НачатьОбновлениеКоманд(ЭтотОбъект);
КонецПроцедуры

&НаСервере
Процедура ПриЧтенииНаСервере(ТекущийОбъект)
	ПодключаемыеКомандыКлиентСервер.ОбновитьКоманды(ЭтотОбъект, Объект);
КонецПроцедуры

&НаКлиенте
Процедура ПослеЗаписи(ПараметрыЗаписи)
	
	ПодключаемыеКомандыКлиент.ПослеЗаписи(ЭтотОбъект, Объект, ПараметрыЗаписи); 
	
	Оповестить("Запись_ВКМ_ОбслуживаниеКлиента",, Объект.Ссылка);
	
КонецПроцедуры

&НаСервере
Процедура ПередЗаписьюНаСервере(Отказ, ТекущийОбъект, ПараметрыЗаписи)
	
	ДанныеДокумента = ОбщегоНазначения.ЗначенияРеквизитовОбъекта(ТекущийОбъект.Ссылка, "Дата, ВКМ_Специалист");
	ДокументИзменен = Не ТекущийОбъект.Проведен ИЛИ (ДанныеДокумента.Дата <> ТекущийОбъект.Дата) ИЛИ ДанныеДокумента.ВКМ_Специалист <> ТекущийОбъект.ВКМ_Специалист;
    Текст = "";
	
	Если Не ТекущийОбъект.Проведен Тогда  
		Текст = СтрШаблон("Создан новый документ %1", ТекущийОбъект.Ссылка);
	ИначеЕсли ДанныеДокумента.Дата <> ТекущийОбъект.Дата Тогда  
		Текст = Текст + Символы.ПС + СтрШаблон("Изменилась дата в документе %1 на %2", ТекущийОбъект.Ссылка, ТекущийОбъект.Дата);
	ИначеЕсли ДанныеДокумента.ВКМ_Специалист <> ТекущийОбъект.ВКМ_Специалист Тогда 
		Текст = Текст + Символы.ПС + СтрШаблон("Изменился специалист в документе %1 на %2", ТекущийОбъект.Ссылка, ТекущийОбъект.ВКМ_Специалист);
	КонецЕсли;
	
		
	Если ДокументИзменен Тогда 
		
		НовыйСпр = Справочники.ВКМ_УведомленияТелеграмБоту.СоздатьЭлемент();
		НовыйСпр.ВКМ_ТекстСообщения = Текст; 
		НовыйСпр.Записать();
		
	КонецЕсли;
	
	//ВКМ_Телеграм.ОповеститьСпециалистов(Текст);

КонецПроцедуры

#КонецОбласти


#Область СлужебныеПроцедурыИФункции
#Область ПодключаемыеКоманды

// СтандартныеПодсистемы.ПодключаемыеКоманды
&НаКлиенте
Процедура Подключаемый_ВыполнитьКоманду(Команда)
    ПодключаемыеКомандыКлиент.НачатьВыполнениеКоманды(ЭтотОбъект, Команда, Объект);
КонецПроцедуры

&НаКлиенте
Процедура Подключаемый_ПродолжитьВыполнениеКомандыНаСервере(ПараметрыВыполнения, ДополнительныеПараметры) Экспорт
    ВыполнитьКомандуНаСервере(ПараметрыВыполнения);
КонецПроцедуры

&НаСервере
Процедура ВыполнитьКомандуНаСервере(ПараметрыВыполнения)
    ПодключаемыеКоманды.ВыполнитьКоманду(ЭтотОбъект, ПараметрыВыполнения, Объект);
КонецПроцедуры

&НаКлиенте
Процедура Подключаемый_ОбновитьКоманды()
    ПодключаемыеКомандыКлиентСервер.ОбновитьКоманды(ЭтотОбъект, Объект);
КонецПроцедуры

&НаКлиенте
Процедура ВКМ_ОписаниеПроблемыНачалоВыбора(Элемент, ДанныеВыбора, СтандартнаяОбработка)
	ОбщегоНазначенияКлиент.ПоказатьФормуРедактированияКомментария(Объект.ВКМ_ОписаниеПроблемы, ЭтотОбъект, Объект.ВКМ_ОписаниеПроблемы, "Описание проблемы");
КонецПроцедуры

&НаКлиенте
Процедура ВКМ_КомментарийНачалоВыбора(Элемент, ДанныеВыбора, СтандартнаяОбработка)
	ОбщегоНазначенияКлиент.ПоказатьФормуРедактированияКомментария(Объект.ВКМ_Комментарий, ЭтотОбъект, Объект.ВКМ_Комментарий);
КонецПроцедуры

#КонецОбласти
#КонецОбласти