﻿Процедура ПередЗаписью(Отказ)
	ФИО = Наименование;
	Массив = РазложитьСтрокуНаПодстроки(ФИО, " "); 
	ЭтотОбъект.Фамилия = Массив[0];
	ЭтотОбъект.Имя = Массив[1];
	ЭтотОбъект.Отчество = Массив[2];
	ЭтотОбъект.Дата = ТекущаяДата();
КонецПроцедуры

Функция РазложитьСтрокуНаПодстроки(ВходящаяСтрока, Разделитель)

	МассивСтрок = Новый Массив();
	ВходящаяСтрока = СтрЗаменить(ВходящаяСтрока, Разделитель, Символы.ПС);

	Для ИндексСтроки = 1 По СтрЧислоСтрок(ВходящаяСтрока) Цикл
		Подстрока = СтрПолучитьСтроку(ВходящаяСтрока, ИндексСтроки);
		МассивСтрок.Добавить(Подстрока);
	КонецЦикла;

	Возврат МассивСтрок;

КонецФункции 

Процедура ПриЗаписи(Отказ)
	ЗаписатьВРегистрСведений();
КонецПроцедуры

Процедура ЗаписатьВРегистрСведений()
	МенеджерЗаписи = РегистрыСведений.ФИОФизическихЛиц.СоздатьМенеджерЗаписи();
	МенеджерЗаписи.ФизическоеЛицо = ЭтотОбъект.Ссылка;
	МенеджерЗаписи.Фамилия = ЭтотОбъект.Фамилия;
	МенеджерЗаписи.Имя = ЭтотОбъект.Имя;
	МенеджерЗаписи.Отчество = ЭтотОбъект.Отчество;
	МенеджерЗаписи.Период = ЭтотОбъект.Дата;

	МенеджерЗаписи.Записать();
КонецПроцедуры