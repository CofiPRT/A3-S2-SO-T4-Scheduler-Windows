CC = cl
L = link
CFLAGS = /nologo /W3

build:
	cl $(CFLAGS) /Foso_scheduler.obj /c so_scheduler.c
	cl $(CFLAGS) /Foscheduler.obj /c scheduler.c
	cl $(CFLAGS) /Fothread.obj /c thread.c
	$(L) /nologo /dll /out:libscheduler.dll /implib:libscheduler.lib so_scheduler.obj scheduler.obj thread.obj

clean:
	del /Q /F *.obj *.lib *.dll *.exe  *.exp