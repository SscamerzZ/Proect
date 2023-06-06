program BubbleSort;

type
  Person = record // структура для хранения имени и фамилии 
    firstName: string;
    lastName: string;
  end;

var
  arr: array[1..10] of Person; // массив для сортировки
  i, j: integer; // переменные для цикла 
  temp: Person; // временная переменная для перестановки структур 
  lastName1, lastName2: string; // переменные для сравнения фамилий 

begin
  // ввод имен и фамилий
  for i := 1 to 4 do begin
    writeln('Введите имя и фамилию', ' ',i, ':');
    readln(arr[i].firstName);
    readln(arr[i].lastName);
  end;

  // сортировка пузырьком
  for i := 1 to 10 do
    for j := i+1 to 10 do begin
      lastName1 := arr[i].lastName;
      lastName2 := arr[j].lastName;
      if lastName1 > lastName2 then begin
        temp := arr[i];
        arr[i] := arr[j];
        arr[j] := temp;
      end;
    end;

  // вывод отсортированного массива
  writeln('Отсортированный массив: ');
  for i := 1 to 10 do
    writeln(arr[i].firstName, ' ', arr[i].lastName);
  writeln;
end.