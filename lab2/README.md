# Лабораторная работа номер 2 <br>
Сразу хочу отметить, есть небольшая не точность на скриншотах в плане выделенной памяти (в начале работы, потом все нормально). <br>
**В рамках этой лабораторной работы я выделял:** <br>
| Тип диска  | Количество | Объем | Комментарий |
|:----------:|:---------:|:-----:|:------------|
| ssd | 2 | 8G | Задание 1 - 2, нужны для начала|
| ssd | 2 | 10G | В 3 задание заменяем 8G на 10G|
| hdd | 2 | 16G |Нужны для 3 задания, там будут храниться логи </head>|

**Новые для меня команды с которыми я столкнулся в ходе выполнения работы**: <br>
Я считаю, что будет правильным указать и объяснить сразу все команды здесь, нежели их описывать ниже.
| Команда | Пояснение (кратко)|
| :-----:|:-------|
| pvs | отображение физических томов |
| vgs | отображение volume group, информация об этих группах|
| lvs | вывод информации о logical volume |
| cat /proc/mdstat |  информация о текущем raid |
| grub-install "Куда"| установка grub |
dd if=/dev/XXX of=/dev/YYY| копирование одного раздела на другой x --> y 
lsblk | информация о дисках
sfdisk -d /dev/XXXX  sfdisk /dev/YYY | скопировать таблицу разделов с одного диска на другой
mdadm --manage /dev/md0 --add /dev/YYY | создать raid массив (сейчас это md0)


**Данная работа состоит из 3х частей:** <br>
1. настройка работоспособной системы с использованием lvm, raid <br>
2. эмуляция отказа одного из дисков <br>
3. замена дисков на лету, с добавлением новых дисков и переносом разделов.<br>
## Задание 1
Здесь мы устанавливаем и настраиваем операционную систему(debian 10.3.0).Занимаемся настройкой LVM, RAID. <br><br>
![1](https://raw.githubusercontent.com/Antieasy/labs/master/lab2/img/1.PNG "Начало разметки дисков") <br>

В каждом диске создали таблицу разделов и выделили место для /boot в размере 512Mb<br>

![2](https://raw.githubusercontent.com/Antieasy/labs/master/lab2/img/2.PNG "Выделили место под /boot") <br>

ну и выделили остальную память под raid (На каждом диске конечно же). <br>

![3](https://raw.githubusercontent.com/Antieasy/labs/master/lab2/img/3.PNG "создали raid раздел") <br>

Наистроили raid раздел <br>

![4](https://raw.githubusercontent.com/Antieasy/labs/master/lab2/img/4.PNG "setting of raid") <br>

Создали несколько томов и завершили настройку LVM.<bt>

![5](https://raw.githubusercontent.com/Antieasy/labs/master/lab2/img/5.PNG "LVM") <br>

Для каждого тома сделали соответсвующие им точки монтирования. <br>

![6](https://raw.githubusercontent.com/Antieasy/labs/master/lab2/img/7.PNG "mountoint") <br>

Ну и все, на этом впринципе закончился процесс установки ОС, конечно после "разметки дисков" ОС предложила установить GRUB, что было и сделанно. Установили на sda (ssd#1). <br>

Сделали копирование /boot с **/dev/sda1** на **/dev/sdb1** <br>
Потом по заданию нужно было установить grub на другой диск (sdb), но у меня выдовало ошибку, поэтому я нашел такую команду ``export PATH=$PATH:/sbin``<br>
После этого у меня все заработало. grub-install /dev/sdb - установил grub на sdb.<br>
lsblk <br>
![7](https://raw.githubusercontent.com/Antieasy/labs/master/lab2/img/8.PNG "info") <br>
## Задание 2 <br>
Нам требуется восстановить работу диска, который вышел из строя.  <br>
![8](https://raw.githubusercontent.com/Antieasy/labs/master/lab2/img/10.PNG "lsbk") <br>

Как мы видим у нас всего лишь один диск, вместо двух. <br>
А вот что показывает cat /proc/mdstat после перезагрузки. <br>
![9](https://raw.githubusercontent.com/Antieasy/labs/master/lab2/img/12.PNG "raid info")<br>

Создаем в нашей виртуальной машине новый диск и называем его, как сказано в задании, ssd3 <br>

![10](https://raw.githubusercontent.com/Antieasy/labs/master/lab2/img/13.PNG "VM") <br>

С помощью команды ``fdisk -l`` убедились, что диск был успешно добавлен. <br>

![11](https://raw.githubusercontent.com/Antieasy/labs/master/lab2/img/14.PNG "fdisk") <br>

Cкопировали таблицу разделов со старого диска на новый с помощью ``sfdisk -d /dev/sda | sfdisk /dev/sdb`` <br>
и добавили raid в sdb2 c помощью команды ``mdadm --manage /dev/md0 --add /dev/sdb2`` <br>

![12](https://raw.githubusercontent.com/Antieasy/labs/master/lab2/img/15.PNG "copy table") <br>
Скопировали /boot, установили grup и выполнили перезагрузку виртуальной машины. <br>
В итоге все было успешно восстановлено. <br>
![13](https://raw.githubusercontent.com/Antieasy/labs/master/lab2/img/17.PNG "finish task 2") <br>

## Задание 3
~~Ну чтож, щас будет боль, слезы и тому подобное, потому что на это у меня ушло много времени, как и наверное у того, кто это создавал.~~ <br>
**В этом задание у нас опять ломается диск, мы его заменяем на новый объемом 10 гб. Затем диск с размером 8 гб (старый) меняем на 10 гб. Благодаря LVM и RAID мы смогли восстановить данные, когда у нас сломался диск, а также включить диски в volume group. Потом добавили 2 hhd на которых мы расположили логи.** <br> 
Ну чтож, все по порядку. Вот скриншот того, что отключился диск. <br>

![14](https://raw.githubusercontent.com/Antieasy/labs/master/lab2/img/18_3%20%D1%87%D0%B0%D1%81%D1%82%D1%8C%20%D0%9D%D0%B0%D1%87%D0%B0%D0%BB%D0%BE.PNG "begin") <br>
Потом по аналогии второго задания мы подключили ssd#4, скопировали таблицу разделов, скопировали /boot и перемонтировали его. И конечно, обязательно, установили grub. Без него бы мы не смогли запустить ОС, ведь он является загрузчиком операционной системы. <br>

![15](https://raw.githubusercontent.com/Antieasy/labs/master/lab2/img/20_c%D0%BC%D0%BE%D0%BD%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BB%D0%B8%20boot%20%D0%BD%D0%B0%20%D0%BD%D0%BE%D0%B2%D1%8B%D0%B9%20%D0%B4%D0%B8%D1%81%D0%BA.PNG "пасхалочка =)") <br>

``mdadm --create --verbose /dev/md63 --force --level=1 --raid-devices=1 /dev/sdb2`` - создали новый raid массив с включением туда только одного ssd. <br>

![16](https://raw.githubusercontent.com/Antieasy/labs/master/lab2/img/21_md63.PNG "set a raid") <br>

Далее нам нужно настроить LVM. Для этого мы создали новый физический том включив в него ранее созданый RAID <br>

![17](https://raw.githubusercontent.com/Antieasy/labs/master/lab2/img/22_pvcreate%20md63.PNG "setting LVM") <br>

Но это еще не все. Нужно увеличить размер VG, делаем это командой ``vgextend system /dev/md63`` <br>
Потом с помощью ``pvmove -i 10 -n /dev/system/*** /dev/md0 /dev/md63`` переместили данные со старого диска на новый. <br>
Вот что получилось <br>
Затем, изменим VG удалив от туда raid старого диска ``vgreduce system /dev/md0`` <br>

![18](https://raw.githubusercontent.com/Antieasy/labs/master/lab2/img/24_%20removed%20system.PNG "lsblk") <br>

Удалили ssd3, создали ssd5 (10Gb), добавили 2 hdd(16Gb). <br>
Опять скопировали таблицу разделов на новый ssd, скопировали /boot, установили grub. <br>
Затем, как показано на скриншоте ниже, мы не используем свободное пространство наших новых дисков. Изменяем размер второго раздела (ssd5) c помощью ``fdisk /dev/xxx``<br>

![19](https://raw.githubusercontent.com/Antieasy/labs/master/lab2/img/25_%20fdisk.PNG "lsblk and fsdick") <br>

Вот что в итоге получилось - мы увеличили размер sdb2 <br>

![20](https://raw.githubusercontent.com/Antieasy/labs/master/lab2/img/26_%D1%83%D0%B2%D0%B5%D0%BB%D0%B8%D1%87%D0%B8%D0%BB%D0%B8%20%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%80%20%D1%80%D0%B0%D0%B7%D0%B4%D0%B5%D0%BB%D0%B0.PNG "up gb") <br>


