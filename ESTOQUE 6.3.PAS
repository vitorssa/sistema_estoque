{ATENÇÃO: Esta rotina ainda está em desenvolvimento.
          O código gerado pode apresentar incorreções sintáticas. }
program ESTOQUE 6.3;
uses Crt;
// { Disciplina   : [Linguagem e Lógica de Programação]}
// { Professor   : Antonio Carlos Nicolodi}
// { Descrição   : Aqui você descreve o que o programa faz! (função)}
// { Autor(a)    : CAUAN CORREIA, JOÃO LIMA E VITOR ROSA}
// { Data atual  : 27/10/2023}
type
ESTOQUE = record
// {REGISTRO DOS PRODUTOS}
FORNECEDOR: string;
LOCAL: string;
NOME: string;
PRODUTO: string;
CODIGO: integer;
QUANTIDADE: integer;
FABRICACAO: real;
VAlOR: real;
// {RESGISTRO DOS FUNCIONARIOS}
CARGO: string;
FUNCIONARIO: string;
LOCALFUNCIONARIO: string;
CPF: integer;
FILHOS: integer;
RG: integer;
TELEFONE: integer;
SALARIO: real;
end;

Var
NOMEFUNCIONARIO, CARGO, SAIR, MENU, CADASTRO, PESQUISA2, CLIENTE, PRODUTOSAIDA, ;
SAIDACOMPRAR, N, NOME: string;
HORAS2, TOTALITENS, QUANTIDADESAIDA, PEDIDO, RESPOSTA, PESQUISA, TOTALVEZES, ;
TOTALVEZES2, TOTALVEZES3, TOTALVEZES4, ESC, I, J,MERCADORIA, TOTALMERCADORIA, ;
TOTALRECEBIMENTO, HORAS, PEDIDO2, PEDIDO3, PEDIDO4, PEDIDO5, FUNCIONARIO2: integer;
TOTAL, MENSAL, DIARIA, ANUAL, MENSAL30, ENTRADAANUAL, ENTRADAMENSAL, ;
ENTRADASEMANAL, ENTRADADIARIA, TOTALVENDA, RESULTADO,HORASEXTRA,HORAEXTRA2: ;
real;
RESULTADOSALARIO, SALARIOLIQUIDO, IR, IR2, IRDESCONTO, ;
agua,luz,salario,impostos,pallets,totaldesp,lucro1: real;
PRODUCAO: array[1..100] DE ESTOQUE;
COLABORADOR: array[1..15] DE ESTOQUE;
// {PROCEDIMENTO PARA VOLTAR AO MENU}
procedure VOLTARMENU();
begin
   writeln();
   writeln('VOLTAR PARA O MENU ANTERIOR? [S/N] ');
   readln(MENU);
   ClrScr;
end;

// {MENU PARA A PESQUISA DOS PRODUTOS}
procedure PESQUISA();
begin
   writeln('---------------------------');
   writeln('   ENTRADA DE MERCADORIA   ');
   writeln('---------------------------');
   writeln('1 PARA PESQUISAR POR CÓDIGO');
   writeln('2 PARA PESQUISAR POR NOME');
   readln(ESC);
end;

// {RECEBENDO O VALOR DA ENTRADA DA MERCADORIA}
procedure ENTRADAMERCADORIA();
begin
   writeln();
   writeln('QUAL É A QUANTIDADE DA MERCADORIA? ');
   readln(MERCADORIA);
   ENTRADAANUAL := MERCADORIA + ENTRADAANUAL;
   PRODUCAO.QUANTIDADE[I] := PRODUCAO.QUANTIDADE[I] + MERCADORIA;
   writeln('ATUALIZANDO...');
   writeln('PRODUTO ATUALIZADO.');
end;

procedure INSUMO();
begin
   writeln();
   writeln('REALIZE O CADASTRO DE OUTRO PRODUTO PARA FAZER O RECEBIMENTO.');
   writeln('OU PESQUISAR OUTRO INSUMO? [S/N] ');
   readln(CADASTRO);
   ClrScr;
end;

// {CALCULAR A HORA EXTRA}
procedure HORAEXTRA (A, B:real):real;
begin
   HORAEXTRA2 := HORAS2 - HORAS;
   RESULTADO := (A * HORAEXTRA2) + B;
   writeln('O SALÁRIO COM EXTRAS É: ', RESULTADO,'.');
end;

// {SALÁRIO LIQUIDO, IMPOSTO DE RENDA}
procedure LIQUIDO(A: real):real;
begin
   // {SALÁRIO COM DESCONTO}
   SALARIOLIQUIDO := COLABORADOR.SALARIO[I] - ((A/100) * COLABORADOR.SALARIO[I]);
   writeln('O SALARIO TEVE UM DESCONTO DE ', A,' %.');
   writeln('VALOR FINAL DE R$ ',SALARIOLIQUIDO);
end;

// {IMPOSTO DE RENDA}
procedure IR3(A:real):real;
begin
   // {VALOR FINAL DO SLÁRIO COM O DESCONTO}
   IR2 := COLABORADOR.SALARIO[I] - ((A/100) * COLABORADOR.SALARIO[I]);
   // {DESCONTO}
   IRDESCONTO := ((A/100) * COLABORADOR.SALARIO[I]);
   writeln();
   writeln('SALÁRIO NO VALOR DE R$ ',COLABORADOR.SALARIO[I]);
   writeln('DESCONTO DE R$ ', IRDESCONTO);
   writeln('SALÁRIO FINAL R$ ',IR2);
   writeln();
end;

begin
   // { Seção de Comandos, procedimento, funções, operadores, etc...}
   PEDIDO4 := 11;
   MENU := 'S';
   SAIR := 'N';
   // {PRODUTOS JÁ CADASTRADO NO SISTEMA NA SUA RESPECTIVA POSIÇÃO}
   for I := 1 to 1 do begin
      PRODUCAO.CODIGO[I] := 1;
      PRODUCAO.NOME[I] := 'NESCAU';
      PRODUCAO.VALOR[I] := 5,60;
      PRODUCAO.LOCAL[I] := 'RUA 1';
      PRODUCAO.QUANTIDADE[I] := 100;
      PRODUCAO.FORNECEDOR[I] := 'NESTLE';
      PRODUCAO.FABRICACAO[I] := 20231205;
   end;

   for I := 2 to 2 do begin
      PRODUCAO.CODIGO[I] := 2;
      PRODUCAO.NOME[I] := 'CAFÉ MELITA';
      PRODUCAO.VALOR[I] := 5,00;
      PRODUCAO.LOCAL[I] := 'RUA 2';
      PRODUCAO.QUANTIDADE[I] := 100;
      PRODUCAO.FORNECEDOR[I] := 'MELITA';
      PRODUCAO.FABRICACAO[I] := 20221011;
   end;

   for I := 3 to 3 do begin
      PRODUCAO.CODIGO[I] := 3;
      PRODUCAO.NOME[I] := 'BANANA';
      PRODUCAO.VALOR[I] := 1,98;
      PRODUCAO.LOCAL[I] := 'RUA 3';
      PRODUCAO.QUANTIDADE[I] := 100;
      PRODUCAO.FORNECEDOR[I] := 'FRUVELE';
      PRODUCAO.FABRICACAO[I] := 20221011;
   end;

   for I := 4 to 4 do begin
      PRODUCAO.CODIGO[I] := 4;
      PRODUCAO.NOME[I] := 'LEITE';
      PRODUCAO.VALOR[I] := 4,65;
      PRODUCAO.LOCAL[I] := 'RUA 4';
      PRODUCAO.QUANTIDADE[I] := 100;
      PRODUCAO.FORNECEDOR[I] := 'ITAMBÉ';
      PRODUCAO.FABRICACAO[I] := 20221011;
   end;

   for I := 5 to 5 do begin
      PRODUCAO.CODIGO[I] := 5;
      PRODUCAO.NOME[I] := 'GILLETE MAC 3';
      PRODUCAO.VALOR[I] := 1,65;
      PRODUCAO.LOCAL[I] := 'RUA 5';
      PRODUCAO.QUANTIDADE[I] := 100;
      PRODUCAO.FORNECEDOR[I] := 'GILETTE';
      PRODUCAO.FABRICACAO[I] := 20221011;
   end;

   for I := 6 to 6 do begin
      PRODUCAO.CODIGO[I] := 6;
      PRODUCAO.NOME[I] := 'DESODORANTE DOVE';
      PRODUCAO.VALOR[I] := 7,00;
      PRODUCAO.LOCAL[I] := 'RUA 6';
      PRODUCAO.QUANTIDADE[I] := 100;
      PRODUCAO.FORNECEDOR[I] := 'DOVE';
      PRODUCAO.FABRICACAO[I] := 20221011;
   end;

   for I := 7 to 7 do begin
      PRODUCAO.CODIGO[I] := 7;
      PRODUCAO.NOME[I] := 'SABONETE SENADOR';
      PRODUCAO.VALOR[I] := 5,00;
      PRODUCAO.LOCAL[I] := 'RUA 7';
      PRODUCAO.QUANTIDADE[I] := 100;
      PRODUCAO.FORNECEDOR[I] := 'SENADOR';
      PRODUCAO.FABRICACAO[I] := 20221011;
   end;

   for I := 8 to 8 do begin
      PRODUCAO.CODIGO[I] := 8;
      PRODUCAO.NOME[I] := 'MAÇÃ';
      PRODUCAO.VALOR[I] := 1,39;
      PRODUCAO.LOCAL[I] := 'RUA 8';
      PRODUCAO.QUANTIDADE[I] := 100;
      PRODUCAO.FORNECEDOR[I] := 'FRUVELE';
      PRODUCAO.FABRICACAO[I] := 20221011;
   end;

   for I := 9 to 9 do begin
      PRODUCAO.CODIGO[I] := 9;
      PRODUCAO.NOME[I] := 'MANTEIGA VIGOR';
      PRODUCAO.VALOR[I] := 6,39;
      PRODUCAO.LOCAL[I] := 'RUA 9';
      PRODUCAO.QUANTIDADE[I] := 100;
      PRODUCAO.FORNECEDOR[I] := 'VIGOR';
      PRODUCAO.FABRICACAO[I] := 20221011;
   end;

   for I := 10 to 10 do begin
      PRODUCAO.CODIGO[I] := 10;
      PRODUCAO.NOME[I] := 'OLEO DE COZINHA ';
      PRODUCAO.VALOR[I] := 4,27;
      PRODUCAO.LOCAL[I] := 'RUA 10';
      PRODUCAO.QUANTIDADE[I] := 100;
      PRODUCAO.FORNECEDOR[I] := 'LIZA';
      PRODUCAO.FABRICACAO[I] := 20221011;
   end;

   // {LAÇO PARA CONTROLAR TODO O PROGRAMA}
   while SAIR = 'N' do begin
      // {LAÇO PARA CONTROLAR O MENU}
      MENU := 'S';
      while MENU = 'S' do begin

         writeln('--------------------------------');
         writeln('              MENU              ');
         writeln('--------------------------------');
         writeln('[1] TOTAL DA CAPACIDADE'          );
         writeln('[2] ENTRADA DE MERCADORIA');
         writeln('[3] CADASTRAR OS PRODUTOS');
         writeln('[4] VENDA');
         writeln('[5] DESPESAS');
         writeln('[6] CADASTRAR OS FUNCIONÁRIOS');
         writeln('[7] SALÁRIO');
         writeln('[8] HORA EXTRA');
         writeln('[9] SALÁRIO LÍQUIDO');
         writeln('[10] SALÁRIO IRPF');
         writeln('[11] SAIR DO MENU');
         writeln('--------------------------------');
         writeln('O QUE DESEJA FAZER? ');
         readln(RESPOSTA);

         if RESPOSTA = 1 then begin
            writeln('---------------------------------------------');
            writeln('CAPACIDADE DA PRODUÇÃO DIARIA, MENSAL E ANUAL');
            writeln('---------------------------------------------');

            // {CALCULAR A CAPACIDADE TOTAL}
            MENSAL30 := 10000;
            MENSAL := MENSAL30 + MENSAL30 + MENSAL30 + 3333;
            DIARIA := MENSAL / 30 - 0.1;
            MENSAL := MENSAL;
            ANUAL := (MENSAL * 12);
            writeln('A CAPACIDADE DA PRODUÇÃO A 30% MENSAL É DE: ',MENSAL30);
            writeln('A CAPACIDADE TOTAL DA PRODUÇÃO DIARIA É DE: ',DIARIA);
            writeln('A CAPACIDADE TOTAL DA PRODUÇÃO MENSAL É DE: ',MENSAL);
            writeln('A CAPACIDADE TOTAL DA PRODUÇÃO ANUAL É DE: ',ANUAL);
            writeln();
            VOLTARMENU();
         end;

         // {ENTRADA DE MERCADORIAS E CADASTRAR ALGUM PRODUTO}
         if RESPOSTA = 2 then begin
            CADASTRO := 'S';
            while CADASTRO = 'S' do begin
               PESQUISA();
               if ESC = 1 then begin
                  writeln('QUAL CÓDIGO DO PRODUTO QUE DESEJA PESQUISAR? ');
                  readln(PESQUISA);
                  for I := 1 to 100 do begin
                     if PESQUISA = PRODUCAO.CODIGO[I] then begin
                        writeln('PRODUTO ',PRODUCAO.NOME[I]);
                        writeln('VALOR R$ ',PRODUCAO.VALOR[I]);
                        writeln('LOCAL ',PRODUCAO.LOCAL[I]);
                        writeln('FORNECEDOR ',PRODUCAO.FORNECEDOR[I]);
                        writeln('FABRICAÇÃO ',PRODUCAO.FABRICACAO[I]);
                        writeln('QUANTIDADE ', PRODUCAO.QUANTIDADE[I]);
                        ENTRADAMERCADORIA();
                     end;
                  end;
                  INSUMO();
               end;

               if ESC = 2 then begin
                  writeln('QUAL NOME DO PRODUTO QUE DESEJA PESQUISAR? ');
                  readln(PESQUISA2);
                  for I := 1 to 100 do begin
                     if PESQUISA2 = PRODUCAO.NOME[I] then begin
                        writeln('CÓDIGO ',PRODUCAO.CODIGO[I]);
                        writeln('VALOR R$ ',PRODUCAO.VALOR[I]);
                        writeln('LOCAL ',PRODUCAO.LOCAL[I]);
                        writeln('FORNECEDOR ',PRODUCAO.FORNECEDOR[I]);
                        writeln('FABRICAÇÃO ',PRODUCAO.FABRICACAO[I]);
                        writeln('QUANTIDADE ', PRODUCAO.QUANTIDADE[I]);
                        ENTRADAMERCADORIA();
                     end;
                  end;
                  INSUMO();
               end;
            end;
         end;

         if RESPOSTA  = 3 then begin
            // {CADASTRAR OS PRODUTOS QUE NÃO ESTÁ PRESENTE NO ESTOQUE}
            writeln('----------------------');
            writeln('       CADASTRO       ');
            writeln('----------------------');
            writeln('QUANTOS ITENS PARA SER CADASTRADOS? ');
            readln(PEDIDO2);
            // {TROCA DE VALORES PARA O CADASTRO DOS PRODUTOS NA POSIÇÃO CERTA}
            PEDIDO3 := 10 + PEDIDO2;
            for I := 11 to PEDIDO3 do begin
               writeln('NOME DO PRODUTO: ');
               readln(PRODUCAO.NOME[I]);
               writeln('VALOR DO PRODUTO: ');
               readln(PRODUCAO.VALOR[I]);
               writeln('CÓDIGO DO PRODUTO: ');
               readln(PRODUCAO.CODIGO[I]);
               writeln('LOCAL DO PRODUTO: ');
               readln(PRODUCAO.LOCAL[I]);
               writeln('QUANTIDADE DO PRODUTO: ');
               readln(PRODUCAO.QUANTIDADE[I]);
               // {TOTAL DE INSUMOS, VALOR ATUAL COM A ENTRADA}
               ENTRADAANUAL := ENTRADAANUAL + PRODUCAO.QUANTIDADE[I];
               writeln('FORNECEDOR DO PRODUTO: ');
               readln(PRODUCAO.FORNECEDOR[I]);
               writeln('FABRICAÇÃO DO PRODUTO: ');
               readln(PRODUCAO.FABRICACAO[I]);
            end;

            writeln('------------------------------');
            writeln('DADOS DA ENTRADA DE MERCADORIA');
            writeln('------------------------------');

            ENTRADAMENSAL := ENTRADAANUAL / 12;
            ENTRADASEMANAL := ENTRADAMENSAL / 4;
            writeln(ENTRADAANUAL:5, ' MERCADORIAS.');
            writeln(ENTRADAMENSAL:5, ' MERCADORIAS POR MÊS.');
            writeln(ENTRADASEMANAL:5, ' MERCADORIAS POR SEMAMA.');
            writeln();
            VOLTARMENU();
         end;

         if RESPOSTA =  4 then begin
            SAIDACOMPRAR := 'S';
            TOTALVEZES := 1;
            TOTALVEZES2 := 2;
            TOTALVEZES := TOTALVEZES4;
            while SAIDACOMPRAR = 'S' do begin
               if TOTALVEZES2 > TOTALVEZES then begin
                  writeln('CÓDIGO DO PEDIDO: ');
                  readln(PEDIDO);
                  for I := 1 to 100 do begin
                     if PEDIDO = PRODUCAO.CODIGO[I] then begin
                        writeln('NOME DO PRODUTO: ');
                        readln(PRODUCAO.NOME[I]);
                        writeln('NOME DO CLIENTE: ');
                        readln(CLIENTE);
                        writeln('QUANTIDADE: ');
                        readln(QUANTIDADESAIDA);
                        if QUANTIDADESAIDA > PRODUCAO.QUANTIDADE[I] then begin
                           writeln('INFELIZMENTE NÃO PODEREMOS ATENDER A SÁIDA.');
                           writeln('ESTOQUE EM FALTA.');
                        end else begin
                           PRODUCAO.QUANTIDADE[I] := PRODUCAO.QUANTIDADE[I] - QUANTIDADESAIDA;
                           TOTALITENS := TOTALITENS + 1;
                           // {TROCA DE VALORES PARA A O LIMITE DE COMPRA NO DIA}
                           TOTALVEZES3 := TOTALVEZES3 + 1;
                           TOTALVEZES4 := TOTALVEZES3;
                           TOTALVENDA := QUANTIDADESAIDA * PRODUCAO.VALOR[I];
                           writeln('PEDIDO ATENDIDO.');
                           writeln('VALOR TOTAL DE R$ ',TOTALVENDA);
                        end;
                        writeln('');
                        writeln('TOTAL DE ITENS: ',TOTALITENS);
                     end;
                  end;
                  writeln('QUER CONTINUAR A COMPRAR? ');
                  readln(SAIDACOMPRAR);
               end else begin
                  writeln('LIMITE ALCANÇADO DO DIA.');
               end;
            end;
            VOLTARMENU();
         end;

         if RESPOSTA =  5 then begin
            // {CONTROLE DE DESPESAS DA EMPRESA}
            writeln ('=================================');
            writeln('          MENU DE DESPESAS        ');
            writeln('===================================');
            writeln();
            writeln('QUAL O VALOR GASTO COM ÁGUA?');
            readln(agua);
            writeln();

            writeln('QUAL O VALOR GASTO COM ENERGIA?');
            readln(luz);
            writeln();

            writeln('QUAL O VALOR TOTAL GASTO COM OS SALÁRIOS DOS FUNCIONÁRIOS?');
            readln(salario);
            writeln();

            impostos := agua+luz+salario;
            writeln('QUANTO DE IMPOSTO ESTÁ SENDO PAGO NO TOTAL?');
            writeln(impostos);

            pallets:= 1000;
            totaldesp:= impostos/pallets;

            writeln('=====================================');
            writeln('O CUSTO DE CADA PALLET EQUIVALE A:');
            writeln(totaldesp);
            writeln('=======================================');
            lucro1 := totaldesp / 2;

            writeln('------------------------------------------------');
            writeln('O TOTAL DE LUCRO COM CADA PALLET É:', lucro1);
            writeln('------------------------------------------------');
            writeln();
            VOLTARMENU();
         end;

         if RESPOSTA = 6 then begin
            // {CADASTRAR OS FUNCIONÁRIOS}
            writeln('----------------------');
            writeln('       CADASTRO       ');
            writeln('----------------------');
            writeln('QUANTOS FUNCIONÁRIOS PARA SER CADASTRADOS? ');
            readln(FUNCIONARIO2);
            for I := 1 to FUNCIONARIO2 do begin
               writeln('NOME DO FUNCIONÁRIO: ');
               readln(COLABORADOR.FUNCIONARIO[I]);
               writeln('CARGO: ');
               readln(COLABORADOR.CARGO[I]);
               // {CALCULANDO O VALOR DO SALÁRIO DO FUNCIONÁRIO EM QUESTÃO}
               if COLABORADOR.CARGO[I] = 'OPERADOR' then begin
                  COLABORADOR.SALARIO[I] := 200 * 15;
               end;
               if COLABORADOR.CARGO[I] = 'SUPERVISOR' then begin
                  COLABORADOR.SALARIO[I] := 200 * 40;
               end;
               if COLABORADOR.CARGO[I] = 'GERENTE' then begin
                  COLABORADOR.SALARIO[I] := 200 * 60;
               end;
               if COLABORADOR.CARGO[I] = 'DIRETOR' then begin
                  COLABORADOR.SALARIO[I] := 200 * 80;
               end;
               writeln('CPF: ');
               readln(COLABORADOR.CPF[I]);
               writeln('RG: ');
               readln(COLABORADOR.RG[I]);
               writeln('ENDEREÇO: ');
               readln(COLABORADOR.LOCALFUNCIONARIO[I]);
               writeln('TELEFONE: ');
               readln(COLABORADOR.TELEFONE[I]);
               writeln('QUANTIDADE DE FILHOS: ');
               readln(COLABORADOR.FILHOS[I]);
               writeln();
            end;
            VOLTARMENU();
         end;

         // {MOSTRAR O SALÁRIO}
         if RESPOSTA = 7 then begin
            for I := 1 to FUNCIONARIO2 do begin
               writeln('O SALÁRIO BRUTO DE ', COLABORADOR.FUNCIONARIO[I], ' R$ ', ;
               COLABORADOR.SALARIO[I]);
               writeln();
            end;
            VOLTARMENU();
         end;

         // {CALCULAR A HORA EXTRA}
         if RESPOSTA = 8 then begin
            HORAS := 200;
            writeln('QUANTAS HORAS FORAM TRABALHADAS NO MÊS?');
            readln(HORAS2);
            if HORAS2 > HORAS then begin
               writeln('DIGITE O CARGO');
               readln (CARGO);
               if CARGO = 'OPERADOR' then begin
                  // {CHAMADA DO PROCEDIMENTO COM PARÂMETRO}
                  HORAEXTRA(30, 3000);
               end;
               if CARGO = 'SUPERVISOR' then begin
                  HORAEXTRA(80, 8000);
               end;
               if (CARGO = 'DIRETOR') or (CARGO = 'GERENTE') then begin
                  writeln();
                  writeln(CARGO, ' NÃO RECEBE HORA EXTRA.');
               end;

               // {ORDENAR POR NOME}
               for I :=  1 to FUNCIONARIO2 do begin
                  for J :=  I + 1 to FUNCIONARIO2 do begin
                     if (COLABORADOR.FUNCIONARIO[I] > COLABORADOR.FUNCIONARIO[J]) then begin
                        N := COLABORADOR.FUNCIONARIO[I];
                        COLABORADOR.FUNCIONARIO[I] := COLABORADOR.FUNCIONARIO[J];
                        COLABORADOR.FUNCIONARIO[J] := N;
                     end;
                  end;
               end;

               // {LISTAR TODOS OS FUNCIONÁRIOS(TODOS OS FUNCIONÁRIOS PAGAM O IR)}
               writeln('----------------------');
               writeln('LISTA DOS FUNCIONÁRIOS');
               writeln('----------------------');
               for I := 1 to FUNCIONARIO2 do begin
                  writeln(COLABORADOR.FUNCIONARIO[I]);
                  writeln('OBRIGATÓRIO O PAGAMENTO DO IMPOSTO DE RENDA.');
                  writeln();
               end;
               VOLTARMENU();
            end;
         end;

         // {SALÁRIO LIQUIDO(COM UM PROCEDIMENTO)}
         if RESPOSTA = 9 then begin
            writeln('SALÁRIO LIQUÍDO.');
            for I := 1 to FUNCIONARIO2 do begin
               if COLABORADOR.SALARIO[I] < 2501 then begin
                  LIQUIDO(8);
               end;
               if (COLABORADOR.SALARIO[I] > 2499) and (COLABORADOR.SALARIO[I] < 4001) then begin
                  LIQUIDO(10);
               end;
               if (COLABORADOR.SALARIO[I] > 3999) and (COLABORADOR.SALARIO[I] < 5501) then begin
                  LIQUIDO(12);
               end;
               if COLABORADOR.SALARIO[I] > 5500 then begin
                  LIQUIDO(15);
               end;
            end;
            VOLTARMENU();
         end;

         // {IMPOSTO DE RENDA(PORCENTAGEM)}
         if RESPOSTA = 10 then begin
            writeln('IMPOSTO DE RENDA.');
            for I := 1 to FUNCIONARIO2 do begin
               if COLABORADOR.SALARIO[I] < 1903 then begin
                  writeln('ISENTO');
               end;
               if (COLABORADOR.SALARIO[I] > 1903) and (COLABORADOR.SALARIO[I] < 2826) then begin
                  IR3(7.5);
               end;
               if (COLABORADOR.SALARIO[I] > 2826) and (COLABORADOR.SALARIO[I] < 3751) then begin
                  IR3(15);
               end;
               if COLABORADOR.SALARIO[I] > 3751 then begin
                  IR3(22);
               end;
            end;
            VOLTARMENU();
         end;

         if RESPOSTA = 11 then begin
            VOLTARMENU();
         end;
      end;
      writeln('ENCERRAR O PROGRAMA? [S/N]');
      readln(SAIR);
   end;

   ClrScr;
   writeln('          CRÉDITOS          ');
   writeln();
   writeln(' CAUAN CORREIA [PROGRAMADOR]');
   writeln();
   writeln(' JOÃO LIMA [PROGRAMADOR]');
   writeln();
   writeln(' VITOR ROSA [PROGRAMADOR]');
end.