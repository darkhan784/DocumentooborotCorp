﻿Процедура ПередЗаписью(Отказ)
	Если не ПустаяСтрока(Наименование) Тогда
		ТекП = ПользователиИнформационнойБазы.НайтиПоИмени(Наименование);
		Если ТекП = Неопределено Тогда
		
			НовыйПользователь = ПользователиИнформационнойБазы.СоздатьПользователя();
			НовыйПользователь.Имя = Наименование;
			НовыйПользователь.ПолноеИмя = Наименование;
			НовыйПользователь.Роли.Добавить(Метаданные.Роли[Роль]);
			НовыйПользователь.Записать();
		
		КонецЕсли;
	КонецЕсли;
КонецПроцедуры
