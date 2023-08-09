﻿&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	Если ЗначениеЗаполнено(Объект.Ссылка) Тогда
		Объект.Дата = ТекущаяДатаСеанса();
		Объект.ДействуетС = НачалоМесяца(Объект.Дата);
	КонецЕсли;
	
	Для Каждого СтрокаТЧ из Объект.Настройки цикл
		СтрокаТЧ.КомандаНастроить = "Настроить условия";
	КонецЦикла;
	
КонецПроцедуры

&НаКлиенте
Процедура ДействуетСПриИзменении(Элемент)
	Объект.ДействуетС = НачалоМесяца(Объект.ДействуетС);
КонецПроцедуры
