unit uCrpt;

interface
uses
  SysUtils, Variants, Classes;

type
  TConsisteInscricaoEstadual  = function (const Insc, UF: String): Integer; stdcall;
  TVersaoDLL                  = function : Integer; stdcall;


  function Criptografa(Action, Src: String): String;

implementation

function Criptografa(Action, Src: String): String;
Label Fim;
var KeyLen : Integer;
  KeyPos : Integer;
  OffSet : Integer;
  Dest, Key : String;
  SrcPos : Integer;
  SrcAsc : Integer;
  TmpSrcAsc : Integer;
  Range : Integer;
begin
  try
    if (Src = '') Then begin
      Result:= '';
      Goto Fim;
    end;
    Key := 'XL6JAOAUUQLC7EJHYCKJQPLXJKDF3WMCL0AOMM4AKOWKCEJAS4IEKUYQCW67NMYVWGTVRTDGYVEFEXCW24SKLK3LAK9KHJUI2VWIEX344DJS4VZ23KL2FL9RTIKJ';
    //'YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A4VZYW9KHJUI2347EJHJKDF3424SKL K3LAKDJSL9RTIKJ';
    Dest := '';
    KeyLen := Length(Key);
    KeyPos := 0;
    SrcPos := 0;
    SrcAsc := 0;
    Range := 256;
    if (Action = UpperCase('C')) then
    begin
      Randomize;
      OffSet := Random(Range);
      Dest := Format('%1.2x',[OffSet]);
      for SrcPos := 1 to Length(Src) do
      begin
        SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
        if KeyPos < KeyLen then begin KeyPos := KeyPos + 1 end else begin KeyPos := 1 end;
        SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
        Dest := Dest + Format('%1.2x',[SrcAsc]);
        OffSet := SrcAsc;
      end;
    end
    Else if (Action = UpperCase('D')) then
    begin
      OffSet := StrToIntDef('$'+ copy(Src,1,2),-1);
      SrcPos := 3;
    repeat
      SrcAsc := StrToIntDef('$'+ copy(Src,SrcPos,2),-1);
      if (KeyPos < KeyLen) Then begin KeyPos := KeyPos + 1 end else begin KeyPos := 1 end;
      TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      if TmpSrcAsc <= OffSet then  begin TmpSrcAsc := 255 + TmpSrcAsc - OffSet end
      else begin TmpSrcAsc := TmpSrcAsc - OffSet end;
      Dest := Dest + Chr(TmpSrcAsc);
      OffSet := SrcAsc;
      SrcPos := SrcPos + 2;
    until (SrcPos >= Length(Src));
    end;
    Result:= Dest;
    Fim:
  except
  end;
end;
end.
