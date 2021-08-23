program pr06ej11;

var	i, m, n : integer;

function es_primo(n : integer) : boolean;
var	i, m : integer;
begin
	if	n mod 2 = 0
	then
		if	n = 2
		then	es_primo := true
		else	es_primo := false
	else
	begin
		i := 3;
		m := trunc(sqrt(n));
		while	(n mod i > 0) and (i <= m) do
			i := i + 2;
		if	(i > m) and (n > 2)
		then	es_primo := true
		else	es_primo := false
	end
end;

begin

(*Entrada de datos*)
write('Ingrese dos números naturales (m y n): ');
readln(m, n);

(*Procesamiento y salida de datos*)
if	m > n
then	write('Error: m debe ser mayor a n')
else
begin
	writeln('Los primos gemelos entre ', m:1, ' y ', n:1, ' son: ');
	for	i := m to n-2 do
		if	es_primo(i) and es_primo(i+2)
		then	writeln(i:1, ' y ', (i+2):1)
end

end.
