﻿
Процедура УстановкаПараметровСеанса(ТребуемыеПараметры)
	ТекП = ПользователиИнформационнойБазы.ТекущийПользователь();
	ПараметрыСеанса.ТекущийПользователь = Справочники.Пользователи.НайтиПоНаименованию(ТекП.Имя);
КонецПроцедуры
