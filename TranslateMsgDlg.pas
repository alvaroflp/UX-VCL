unit Model.TranslateMsgDlg;

interface

implementation

uses 
  Windows, 
  Consts;

// Associa um novo valor à string de recurso
procedure HookResourceString(ResStringRec: pResStringRec; NewStr: pChar);
var
  OldProtect: DWORD;
begin
  VirtualProtect(ResStringRec, SizeOf(ResStringRec^), PAGE_EXECUTE_READWRITE,
    @OldProtect);
  ResStringRec^.Identifier := Integer(NewStr);
  VirtualProtect(ResStringRec, SizeOf(ResStringRec^), OldProtect, @OldProtect);
end;

initialization

HookResourceString(@SCannotOpenClipboard,
  'Não é possível acessar a área de transferência');
HookResourceString(@SMsgDlgWarning, 'Atenção');
HookResourceString(@SMsgDlgError, 'Erro');
HookResourceString(@SMsgDlgInformation, 'Informação');
HookResourceString(@SMsgDlgConfirm, 'Confirmação');
HookResourceString(@SMsgDlgYes, 'Sim');
HookResourceString(@SMsgDlgNo, 'Não');
HookResourceString(@SMsgDlgOK, 'Ok');
HookResourceString(@SMsgDlgCancel, 'Cancelar');
HookResourceString(@SMsgDlgHelp, 'Ajuda');
HookResourceString(@SMsgDlgHelpNone, 'Nenhuma instrução');
HookResourceString(@SMsgDlgHelpHelp, 'Instruções');
HookResourceString(@SMsgDlgAbort, 'Abortar');
HookResourceString(@SMsgDlgRetry, 'Tentar novamente');
HookResourceString(@SMsgDlgIgnore, 'Ignorar');
HookResourceString(@SMsgDlgAll, 'Todos');
HookResourceString(@SMsgDlgNoToAll, 'Não para todos');
HookResourceString(@SMsgDlgYesToAll, 'Sim para todos');
// mais strings unit Vcl.Consts

end.
