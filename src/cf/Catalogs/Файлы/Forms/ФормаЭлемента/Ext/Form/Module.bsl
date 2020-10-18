﻿
&НаКлиенте
Процедура ЗагрузитьФайл(Команда)
	Оповещение  =  Новый ОписаниеОповещения("ОбработатьВыборФайла",ЭтотОбъект);
	НачатьПомещениеФайла(Оповещение,,,Истина,УникальныйИдентификатор);
КонецПроцедуры

&НаКлиенте
Процедура ОбработатьВыборФайла(Результат,Адрес,ВыбранноеИмяФайла,ДополнительныеПараметры) Экспорт
	Если Не Результат Тогда
 		Возврат; 
	КонецЕсли;
	ФайлНаФорме = Адрес;
	ФайлСИменем = Новый Файл(ВыбранноеИмяФайла);
	Объект.ИмяФайла = ФайлСИменем.Имя;
КонецПроцедуры 

&НаСервере
Процедура ПередЗаписьюНаСервере(Отказ, ТекущийОбъект, ПараметрыЗаписи)
	Если ЭтоАдресВременногоХранилища(ФайлНаФорме) Тогда
		ТекущийОбъект.Файл = Новый ХранилищеЗначения(ПолучитьИзВременногоХранилища(ФайлНаФорме));
		ТекущийОбъект.Автор = ОбщийМодульСистема.ОпределитьТекущегоПользователя();	
	КонецЕсли; 
КонецПроцедуры

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	ФайлНаФорме = ПолучитьНавигационнуюСсылку(Объект.Ссылка, "Файл"); 
КонецПроцедуры