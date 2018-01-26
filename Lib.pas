unit Lib;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  bk = ^TBookList;
  TBook = record
    Author, NameOfBook: string[255];
    Year: Integer;
  end;
  TBookList = record
    Element: TBook;
    next: bk;
  end;
  sav = file of TBook;
  Myindex = 0..1;

var
  first, second, q: Bk;
  F: sav;

procedure showdata (const first: Bk; var strg: TStringGrid);
procedure Addrecord (var first: bk; const Author, Name: string; const Year: integer);
procedure Deletelist (var q: bk);
procedure DeleteBook(const first: bk; const ARow: integer);
procedure sortlist(const first: bk; const i: Myindex);
procedure SearchBook(const first: bk; const Text: string; const i: Myindex);
function CheckBook(const first: bk; const Author, Name: string; const Year: integer): Boolean;

implementation

uses Records;

procedure showdata(const first: Bk; var strg: TStringGrid);
var
  q: bk;
  i: Integer;
begin
  for i := 1 to strg.RowCount-1 do
    strg.Rows[i].Clear;
  strg.RowCount := 1;
  q := first;
  i := 1;
  while q^.next <> nil do
  begin
    q := q^.next;
    with strg do
    begin
      RowCount := RowCount + 1;
      Cells[0,i] := q^.Element.Author;
      Cells[1,i] := q^.Element.NameOfBook;
      Cells[2,i] := IntToStr(q^.Element.Year);
    end;
    Inc(i);
  end;
end;

procedure Addrecord (var first: bk; const Author, Name: string; const Year: integer);
var
  q: bk;
begin
  New(q);
  if first^.next <> nil then
    q^.next := first^.next
  else
    q^.next := nil;
  first^.next := q;
  q^.Element.Author := Author;
  q^.Element.NameOfBook := Name;
  q^.Element.Year := Year;
end;

procedure Deletelist (var q: bk);
var
  temp: bk;
begin
  while q^.next <> nil do
  begin
    temp := q;
    q := q^.next;
    dispose(temp);
  end;
  dispose(q);
end;

procedure DeleteBook(const first: bk; const ARow: integer);
var
  q, temp: bk;
  el: TBook;
begin
  el.Author := FRecord.StringGrid1.cells[0,ARow];
  el.NameOfBook := FRecord.StringGrid1.cells[1,ARow];
  el.Year := StrToInt(FRecord.StringGrid1.cells[2,ARow]);
  q := first;
  while (el.Author <> q^.next^.Element.Author) and (el.NameOfBook <> q^.next^.Element.NameOfBook) and (el.Year <> q^.next^.Element.Year) do
    q := q^.next;
  temp := q^.next;
  if q^.next^.next <> nil then
  begin
    q^.next := q^.next^.next;
  end
  else
  begin
    q^.next := nil;
  end;
  Dispose(temp);
end;

procedure sortlist(const first: bk; const i: Myindex);
var
  q, w, second: bk;
begin
  New(second);
  second^.next := nil;
  q := first;
  while q^.next <> nil do
  begin
    q := q^.next;
    w := second;
    while w^.next <> nil do
    begin
      if i = 0 then
        if q^.Element.Author > w^.next^.Element.Author then
          w := w^.next
        else
          break
      else
        if q^.Element.NameOfBook > w^.next^.Element.NameOfBook then
          w := w^.next
        else
          Break;
    end;
    Addrecord(w, q^.Element.Author, q^.Element.NameOfBook, q^.Element.Year);
  end;
  showdata(second, FRecord.StringGrid1);
  Deletelist(second);
end;

procedure SearchBook(const first: bk; const Text: string; const i: Myindex);
var
  q, w, second: bk;
begin
  q := first;
  New(second);
  w := second;
  w^.next := nil;
  while q^.next <> nil do
  begin
    q := q^.next;
    if i = 0 then
      if Pos(AnsiLowerCase(Text), AnsiLowerCase(q^.Element.Author)) <> 0 then
      begin
        New(w^.next);
        w := w^.next;
        w^.Element := q^.Element;
        w^.next := nil;
      end;
    if i = 1 then
      if Pos(AnsiLowerCase(Text), AnsiLowerCase(q^.Element.NameOfBook)) <> 0 then
      begin
        New(w^.next);
        w := w^.next;
        w^.Element := q^.Element;
        w^.next := nil;
      end;
  end;
  showdata(second, FRecord.StringGrid1);
  Deletelist(second);
end;

function CheckBook(const first: bk; const Author, Name: string; const Year: integer): Boolean;
var
  t: bk;
begin
  Result := False;
  t := first;
  while t^.next <> nil do
  begin
    t := t^.next;
    if (Author = t^.Element.Author) and (Name = t^.Element.NameOfBook) and (Year = t^.Element.Year) then
      Result := True;
  end;
end;

end.
