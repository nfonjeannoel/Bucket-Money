program BucketMoney;
uses crt;

var
  newdeposit, firstdeposit, basic, fun, learning, investment: real;
  b,f,i,l, howmuch: real;
  menuchoice, deductmoney: integer;
   procedure Initialize;
   begin
       writeln('welcome to Bucket Money, your simple money manager');
       writeln(' your money will be divided into 4 sections');
       writeln('1: basics');
       writeln('2: fun');
       writeln('3: investment');
       writeln('4: learning');
   end;

   Procedure depositMoney;
   begin
       writeln('how much do you wish to deposit');
       readln(firstdeposit);
   end;

   procedure distributeMoney(firstdeposit: real);
   begin
       b := 0.6*firstdeposit;
       f := 0.1*firstdeposit;
       i := 0.1*firstdeposit;
       l := 0.1*firstdeposit;
   end;
   procedure updatevalues;
   begin
        basic := b; fun := f; investment := i; learning := l;
   end;
   procedure displaybalance;
   begin
       writeln('your balance is left:');
       writeln('fun--------- :', fun:2:2 );
       writeln('basics------ :', basic:2:2);
       writeln('investment-- ', investment:2:2);
       writeln('learning---- :', learning:2:2);
   end;
   procedure displayoperations;
   begin
       writeln('Please choose an operation (type the number)');
       writeln('1- Deposit Money');
       writeln('2- Deduct Money');
       writeln('3-display balance');
       writeln('4-quite');
       readln(menuchoice);
   end;

   procedure Menuchoice1;
   begin
       writeln('Please enter deposit amount');
       readln(newdeposit);
   end;

   procedure redistributemoney;
   begin
       distributemoney(newdeposit);
       fun := fun + f;
       basic := basic + b;
       investment := investment + i;
       learning := learning + l;
       displaybalance;
   end;
   procedure beginmenu2;
   begin
       writeln('please where do you wish to deduct money');
       writeln('1---fun');
       writeln('2---investment');
       writeln('3---learning');
       writeln('4---basics');
       readln(deductmoney);
       writeln('how much do you wish to deduct');
       readln(howmuch);
   end;
   procedure deductmoney1;
   begin
     fun := fun - howmuch;
     displaybalance;
   end;
   procedure deductmoney2;
   begin
     investment := investment - howmuch;
     displaybalance;
   end;
   procedure deductmoney3;
   begin
     learning := learning - howmuch;
     displaybalance;
   end;
   procedure deductmoney4;
   begin
     basic := basic - howmuch;
     displaybalance;
   end;
begin
clrscr;
   Initialize;
   depositMoney;
   distributemoney(firstdeposit);
   updatevalues;
   displaybalance;

   repeat

   displayoperations;
   if menuchoice = 1 then
   begin
      menuchoice1;
      redistributemoney;
   end;

   if menuchoice = 2 then
   begin
     beginmenu2;
     if deductmoney = 1 then
     begin
        deductmoney1;
     end;
     if deductmoney = 2 then
     begin
        deductmoney2;
     end;
     if deductmoney = 3 then
     begin
        deductmoney3;
     end;
     if deductmoney = 4 then
     begin
         deductmoney4;
     end;
   end;
   if menuchoice = 3 then
    begin
       displaybalance;
    end;

  until menuchoice = 4;
readln;
end.