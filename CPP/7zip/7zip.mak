OBJS = \
  $O\StdAfx.obj \
  $(CURRENT_OBJS) \
  $(COMMON_OBJS) \
  $(WIN_OBJS) \
  $(WIN_CTRL_OBJS) \
  $(7ZIP_COMMON_OBJS) \
  $(AR_OBJS) \
  $(AR_COMMON_OBJS) \
  $(UI_COMMON_OBJS) \
  $(AGENT_OBJS) \
  $(CONSOLE_OBJS) \
  $(EXPLORER_OBJS) \
  $(FM_OBJS) \
  $(GUI_OBJS) \
  $(7Z_OBJS) \
  $(COM_OBJS) \
  $(UDF_OBJS) \
  $(COMPRESS_OBJS) \
  $(CRYPTO_OBJS) \
  $(C_OBJS) \
  $(ASM_OBJS) \
  $O\resource.res \

!include "../../../Build.mak"

# MAK_SINGLE_FILE = 1

!IFDEF MAK_SINGLE_FILE

!IFDEF CURRENT_OBJS
$(CURRENT_OBJS): ./$(*B).cpp
	$(COMPL)
!ENDIF


!IFDEF COMMON_OBJS
$(COMMON_OBJS): ../../../Common/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF WIN_OBJS
$(WIN_OBJS): ../../../Windows/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF WIN_CTRL_OBJS
$(WIN_CTRL_OBJS): ../../../Windows/Control/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF 7ZIP_COMMON_OBJS
$(7ZIP_COMMON_OBJS): ../../Common/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF AR_OBJS
$(AR_OBJS): ../../Archive/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF AR_COMMON_OBJS
$(AR_COMMON_OBJS): ../../Archive/Common/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF 7Z_OBJS
$(7Z_OBJS): ../../Archive/7z/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF COM_OBJS
$(COM_OBJS): ../../Archive/Com/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF COMPRESS_OBJS
$(COMPRESS_OBJS): ../../Compress/$(*B).cpp
	$(COMPL_O2)
!ENDIF

!IFDEF CRYPTO_OBJS
$(CRYPTO_OBJS): ../../Crypto/$(*B).cpp
	$(COMPL_O2)
!ENDIF

!IFDEF UI_COMMON_OBJS
$(UI_COMMON_OBJS): ../../UI/Common/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF AGENT_OBJS
$(AGENT_OBJS): ../../UI/Agent/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF CONSOLE_OBJS
$(CONSOLE_OBJS): ../../UI/Console/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF EXPLORER_OBJS
$(EXPLORER_OBJS): ../../UI/Explorer/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF FM_OBJS
$(FM_OBJS): ../../UI/FileManager/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF GUI_OBJS
$(GUI_OBJS): ../../UI/GUI/$(*B).cpp
	$(COMPL)
!ENDIF

!IFDEF C_OBJS
$(C_OBJS): ../../../../C/$(*B).c
	$(COMPL_O2)
!ENDIF


!ELSE

{.}.cpp{$O}.obj::
	$(COMPLB)
{../../../Common}.cpp{$O}.obj::
	$(COMPLB)
{../../../Windows}.cpp{$O}.obj::
	$(COMPLB)
{../../../Windows/Control}.cpp{$O}.obj::
	$(COMPLB)
{../../Common}.cpp{$O}.obj::
	$(COMPLB)

{../../UI/Common}.cpp{$O}.obj::
	$(COMPLB)
{../../UI/Agent}.cpp{$O}.obj::
	$(COMPLB)
{../../UI/Console}.cpp{$O}.obj::
	$(COMPLB)
{../../UI/Explorer}.cpp{$O}.obj::
	$(COMPLB)
{../../UI/FileManager}.cpp{$O}.obj::
	$(COMPLB)
{../../UI/GUI}.cpp{$O}.obj::
	$(COMPLB)


{../../Archive}.cpp{$O}.obj::
	$(COMPLB)
{../../Archive/Common}.cpp{$O}.obj::
	$(COMPLB)

{../../Archive/7z}.cpp{$O}.obj::
	$(COMPLB)
{../../Archive/Com}.cpp{$O}.obj::
	$(COMPLB)

{../../Compress}.cpp{$O}.obj::
	$(COMPLB_O2)
{../../Crypto}.cpp{$O}.obj::
	$(COMPLB_O2)
{../../../../C}.c{$O}.obj::
	$(CCOMPLB)

!ENDIF

!include "Asm.mak"
