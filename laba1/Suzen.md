**1 задание**<br>
Использовал ls and cat <br>
ZGFpejZhaFJhZVNhZXhhaWJ1YWYK<br>
**2 zadanie**<br>
Сначала использовал команду ls and after cat *.txt<br>
Понял, что мне нужно открыть все файлы для этго нужно использовать цикл...<br>
for i in /home/suzen/*; do echo $i; cat $i; done;<br>
дальше нашел код:<br>
dGhlaWxpM2FoWm9odGFpM2VldzMK<br>
**3 задание**<br>
сначала использовал ls<br>
и тк кроме листа нет никаких команд, прочитал по строчно нужный файл в данной директории<br>
while read $LINE; do echo $LINE; done <./-diary.txt-;<br>
Y284ZWlxdXVlMmllTDNpZXBoNWUK<br>
**14 zadanie**<br>
использовал ls и с помощью команды cd part1/ перешел в эту директорию и написал команду ls и нашел<br> первую часть пароля к следующему заданию в названии директории.<br>
d2FodmFoMW<br>
Аналогично также нашел остальные части пароля и получилось(всего 3 части, cd .. - подняться на<br> вверх):d2FodmFoMWFlV2FpYmVlaG9vMmIK<br>
**15 zadanie**<br>
cd ..<br>
ls<br>
TWVlMXdvaDJ6YWVoZWoyamllNm8K<br>
**16 zadanie**<br>
id - информация о user<br>
ZXVsb29naG91MFBob2g4T2hkYWkK<br>
**17 zadanie** <br>
тут скрытый файл, поэтому прописать просто ls ничего не произойдет, поэтому нужно сделать так <br>
ls -a и увидим скрытый файлик с паролем в названии.<br>
bmVlNm1lMEhhaU11M2thaGVpNmEK<br>
**18 zadanie**<br>
используем команду man(manual) diary и получаем руководство по diary в flag пароль<br>
Y2hpZWNoM2VpRzRJZWtlaXNlbGUK<br>
**19 zadanie**<br>
/home/suzen # mkdir -p Documents/projects/lab19/using/simple/bash/commands<br>
/home/suzen # cd Documents/projects/lab19/using/simple/bash/commands<br>
/home/suzen/Documents/projects/lab19/using/simple/bash/commands # ls -a<br>
**20 zadanie**<br>
cd .<br>
rm -r john - удалил всю папку<br>
mkdir john - создал папку с тем же названием :)))<br>
YW1pZWhpaW0yb2h5NW9vRjZlaXcK<br>
**21 задание**<br>
1)rm *[0-9]*.txt <br>
2)rm *[a-z]*.png<br>
3)rm test-*.log<br>
ls <br>
aWU0b29XdWxlaXBodXBpZWZveW8K<br>
**22 zadanie**<br>
# i=1; while [ $i -lt 999 ];do touch $i.txt;let i++;done;<br>
touch - создает файл, let i++ увеличивает счетчик на единицу. -lt == <;<br>
aTc1Z3g3aVNvYk9CZmd6ZWF5TXh4WFBXNUJ3UG94aXBkMjYvekl0QWRWbz0K<br>

dXI2dXNhaDNvaFQxaWV2MGNobzgK<br>
**23 zadanie**<br>
cd destination<br>
for i in /home/suzen/destination/*; do mv $i $i.back.log;done;<br>
cd ..<br>
cd source/<br>
mv * ../destinaton/<br>
cd ..<br>
ls<br>
dmVlc2VpQzVBb2dlaXI1cmVlM2YK<br>

**24 zadanie**<br>
mkdir Music<br>
cd Desktop<br>
cp -r music/* ../Music<br>
ls<br>
YWVnaG9venVvejd2b292OHNvaEwK<br>
**25 zadanie**<br>
cat file<br>
dGhlZThhcXVpZUNpTGFpdGhlZTkK<br>
**26 zadanie**<br>
less - позволяет читать текст (logi)<br>
q - выход<br>
G - конец файла<br>
g - начало файла<br>
/SECOND_FLAG_PART: - искать по под строке в файле<br>
WWVpc2gxYWlndXVrZWl5ZWloaWUK<br>

**27 zadanie**<br>
tail -f diary<br>
dGVlMUtleThhUXVvaDFnZTFiaWkK<br>
**28**<br>
Дневник кота Васьки<br>



cat >diary <<end<br>



