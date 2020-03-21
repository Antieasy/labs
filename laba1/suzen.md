1 задание 
Использовал ls and cat
ZGFpejZhaFJhZVNhZXhhaWJ1YWYK
2 zadanie
Сначала использовал команду ls and after cat *.txt
Понял, что мне нужно открыть все файлы для этго нужно использовать цикл...
for i in /home/suzen/*; do echo $i; cat $i; done;
дальше нашел код:
dGhlaWxpM2FoWm9odGFpM2VldzMK
3 задание
сначала использовал ls
и тк кроме листа нет никаких команд, прочитал по строчно нужный файл в данной директории
while read $LINE; do echo $LINE; done <./-diary.txt-;
Y284ZWlxdXVlMmllTDNpZXBoNWUK
14 zadanie
использовал ls и с помощью команды cd part1/ перешел в эту директорию и написал команду ls и нашел первую часть пароля к следующему заданию в названии директории.
d2FodmFoMW
Аналогично также нашел остальные части пароля и получилось(всего 3 части, cd .. - подняться на вверх):d2FodmFoMWFlV2FpYmVlaG9vMmIK
15 zadanie
cd ..
ls
TWVlMXdvaDJ6YWVoZWoyamllNm8K
16 zadanie
id - информация о user
ZXVsb29naG91MFBob2g4T2hkYWkK
17 zadanie 
тут скрытый файл, поэтому прописать просто ls ничего не произойдет, поэтому нужно сделать так 
ls -a и увидим скрытый файлик с паролем в названии.
bmVlNm1lMEhhaU11M2thaGVpNmEK
18 zadanie
используем команду man(manual) diary и получаем руководство по diary в flag пароль
Y2hpZWNoM2VpRzRJZWtlaXNlbGUK
19 zadanie
/home/suzen # mkdir Documents
/home/suzen # mkdir Documents/projects
/home/suzen # mkdir Documents/projects/lab19
/home/suzen # mkdir Documents/projects/lab19/using
/home/suzen # mkdir Documents/projects/lab19/using/simple
/home/suzen # mkdir Documents/projects/lab19/using/simple/bash
/home/suzen # mkdir Documents/projects/lab19/using/simple/bash/commands
/home/suzen # cd Documents/projects/lab19/using/simple/bash/commands
/home/suzen/Documents/projects/lab19/using/simple/bash/commands # ls -a
20 zadanie
cd .
rm -r john - удалил всю папку
mkdir john - создал папку с тем же названием :)))
YW1pZWhpaW0yb2h5NW9vRjZlaXcK
21 задание
1)rm *[0-9]*.txt 
2)rm *[a-z]*.png
3)rm test-*.log
ls 
aWU0b29XdWxlaXBodXBpZWZveW8K
22 zadanie
# i=1; while [ $i -lt 999 ];do touch $i.txt;let i++;done;
touch - создает файл, let i++ увеличивает счетчик на единицу. -lt == <;
aTc1Z3g3aVNvYk9CZmd6ZWF5TXh4WFBXNUJ3UG94aXBkMjYvekl0QWRWbz0K

dXI2dXNhaDNvaFQxaWV2MGNobzgK
23 zadanie
cd destination
for i in /home/suzen/destination/*; do mv $i $i.back.log;done;
cd ..
cd source/
mv * ../destinaton/
cd ..
ls
dmVlc2VpQzVBb2dlaXI1cmVlM2YK

24 zadanie
mkdir Music
cd Desktop
cp -r music/* ../Music
ls
YWVnaG9venVvejd2b292OHNvaEwK
25 zadanie
cat file
dGhlZThhcXVpZUNpTGFpdGhlZTkK
26 zadanie
less - позволяет читать текст (logi)
q - выход
G - конец файла
g - начало файла
/SECOND_FLAG_PART: - искать по под строке в файле
WWVpc2gxYWlndXVrZWl5ZWloaWUK

27 zadanie
tail -f diary
dGVlMUtleThhUXVvaDFnZTFiaWkK
28
Дневник кота Васьки



cat >diary <<end



