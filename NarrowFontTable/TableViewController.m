//
//  TableViewController.m
//  NarrowFontTable
//
//  Created by Vladimir Obrizan on 30.03.13.
//  Copyright (c) 2013 Design and Test Lab. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

static NSArray *array = nil;

@implementation TableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	array = @
	[
	 @"Согласно решению Министерства торговли США от 8 марта 2013 года, российская компания «Т-Платформы» оказалась внесена в «Список организаций и лиц, действующих вопреки национальной безопасности и внешнеполитическим интересам США» (Supplement No. 4 to Part 744). В решении утверждается, что у американского Бюро промышленности и безопасности есть основания считать, что деятельность «Т-Платформ» связана с разработкой компьютерных систем для военных целей и с производством компьютеров для ядерных исследований (кто бы, блин, мог подумать).",
	 @"Предыстория: моя жена постоянно норовит как-нибудь мне напортачить: поставить будильник на 3 часа ночи, поменять мелодию звонка, снести настройки синхронизации, удалить свою смс и потом доказывать, что она этого не говорила. Шутки шутками, но в какой-то момент я решил: “Довольно!” — и поставил графический пароль на свой Андройд.",
	 @"Волжский автомобильный завод начал выпускать «десятку», череда трагических событий в Чечне лишь продолжалась, а всего несколько недель назад вышла новейшая операционная система от корпорации «Майкрософт» — Windows NT 4.0. Таким был понедельник 23 сентября 1996 года, и от других его отличал лишь запуск работы небольшого сервера на NetWare 3.12 где-то на просторах США.",
	 @"Что такое распределенные вычисления, думаю, на Хабре знают все. Если нет, то вот отличная статья, где все рассказывается подробнейшим образом, включая историю и описание различных проектов/платформ. В числе прочих, упоминается и платформа BOINC (Berkeley Open Infrastructure for Network Computing). Немножко копипаста: \" BOINC представляет собой готовую обвязку (типовые серверные компоненты + клиент) для проектов по сетевым вычислениям, которая значительно облегчает их запуск, хотя и не избавляет полностью от умственного труда, поскольку ряд серверных модулей необходимо готовить под конкретную задачу\". Так вот, если до сих пор вычисления проводились только на ПК, то теперь эта платформа доступна и для мобильных устройств на базе Android.",
	 @"Всё дело — в политике безопасности, аналогичной кроссдоменной. Обращение к страницам других табов или к фоновой странице расширения сознательно ограничено, потому что они считаются страницами других доменов, имеют запреты на прямой доступ к скриптовому окружению, аналогично чужим окнам и фреймам. Механизм сообщений «спасает» как при кроссдоменном доступе между фреймами, как и в доступе к страницам расширений (фоновая, настройки, попап, ...).",
	 @"Ни для кого не является секретом то, что в организациях установка приложений на клиентские компьютеры должна быть (или, если честно, то рекомендуется, чтобы была) автоматизированной. Естественно, комплексные продукты, например, такие как Microsoft System Center Configuration Manager, могут превосходно справляться с такой задачей, однако ведь всегда были, есть и будут организации, которые по той или иной причине не приобрели себе такой продукт. Поэтому приходится устанавливать программные продукты с помощью тех же штатных средств операционных систем Windows, и для выполнения такой задачи предпочтительными становятся функциональные возможности групповой политики.",
	 @"Сахалинская колония — экономическая стратегия, цель которой, выжить. Игроку дается типовое, либо случайно сгенерированое игровое поле, поделенное на ячейки. Каждая ячейка представляет собой определенный ресурс, либо чистое поле. В начале игры игроку дается здание администрации и 2 участка земли, на которых он может строить ресурсодобывающие строения. Все строения со временем разрушаются и требуют ремонта — за деньги вырученные от продажи ресурсов. Здание администрации является основным — невозможность его ремонта приводит к окончанию игры. ",
	 @"Пользователи Windows 7, недавно установившие новый Internet Explorer 10, могли обратить внимание на то, что текст в браузере Mozilla Firefox стал отрисовываться с артефактами. В ряде случаев также могли наблюдаться артефакты в изображениях и выпадающих меню.",
	 @"В этой статье я не буду развивать очередной холивар на тему, что круче. Скорее, будет проведен сравнительный обзор, опираясь на точку зрения самого Apache* и личного опыта нашей команды Build Factory. Обращаю внимание, что речь идет о большом Enterprise. Это означает, что в учет не берутся юзкейсы, когда вчера решили — сегодня уже должно быть сделано. Зато в учет берутся очень большие размеры проекта, распределенные по всему миру команды разработчиков и прочие прелести.",
	 @"Команда исследователей IBM в рамках программы Агентства по перспективным оборонным научно-исследовательским разработкам США (DAPRA) нашла способ передавать большие объемы данных с беспрецедентно низким уровнем энергопотребления. Они увеличили скорость передачи информации на 66%, сократив расходуемую энергию почти в два раза, при сравнении с предыдущим рекордом.",
	 @"Когда я был маленьким, родители подарили мне деревянную игру-лабиринт. Она мне очень нравилась. Не думаю, что меня когда-либо волновал сам лабиринт, но механизм наклона был интригующим и очень простым."
	 ];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (!cell)
	{
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
		cell.textLabel.frame = CGRectMake(4.0, 6.0, 316.0, 32.0);
		cell.textLabel.numberOfLines = 2;
		//cell.textLabel.font = [UIFont boldSystemFontOfSize:16.0];
		cell.textLabel.font = [UIFont fontWithName:@"PTSans-NarrowBold" size:16.0];
	}
	
	cell.textLabel.text = array[indexPath.row];
    
    return cell;
}

@end
