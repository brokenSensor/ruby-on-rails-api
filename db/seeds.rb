projects = Project.create([{title: "Семья"}, {title: "Работа"}, {title: "Прочее"}])

Todo.create(project: projects[0], text: "Купить молоко", isCompleted: false)
Todo.create(project: projects[0], text: "Заменить масло в двигателе до 23 апреля", isCompleted: false)
Todo.create(project: projects[0], text: "Отправить письмо бабушке", isCompleted: true)
Todo.create(project: projects[0], text: "Заплатить за квартиру", isCompleted: false)
Todo.create(project: projects[0], text: "Забрать обувь из ремонта", isCompleted: false)

Todo.create(project: projects[1], text: "Позвонить заказчику", isCompleted: true)
Todo.create(project: projects[1], text: "Отправить документы", isCompleted: true)
Todo.create(project: projects[1], text: "Заполнить отчет", isCompleted: false)

Todo.create(project: projects[2], text: "Позвонить другу", isCompleted: false)
Todo.create(project: projects[2], text: "Подготовиться к поездке", isCompleted: false)
