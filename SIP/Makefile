TARGET = TestMath.pyd
OFILES = sipTestMathcmodule.obj sipTestMathTestMath.obj
HFILES = sipAPITestMath.h 

CC = cl
CXX = cl
LINK = link
CPPFLAGS = -DNDEBUG -DUNICODE -DWIN32 -I. -IC:\OSGeo4W64\apps\Python37\include
CFLAGS = -nologo -Zm200 -Zc:wchar_t- -FS -Zc:strictStrings -O2 -MD -W3 -w44456 -w44457 -w44458
CXXFLAGS = -nologo -Zm200 -Zc:wchar_t- -FS -Zc:strictStrings -D_HAS_EXCEPTIONS=0 -O2 -MD -W3 -w34100 -w34189 -w44996 -w44456 -w44457 -w44458 -wd4577
LFLAGS = /NOLOGO /DYNAMICBASE /NXCOMPAT /DLL /MANIFEST /MANIFESTFILE:$(TARGET).manifest /SUBSYSTEM:WINDOWS /INCREMENTAL:NO
LIBS = /LIBPATH:C:\OSGeo4W64\apps\Python37\libs sipdemo.lib python37.lib
.SUFFIXES: .c .cpp .cc .cxx .C


{.}.cpp{}.obj::
	$(CXX) -c $(CXXFLAGS) $(CPPFLAGS) -Fo @<<
	$<
<<

{.}.cc{}.obj::
	$(CXX) -c $(CXXFLAGS) $(CPPFLAGS) -Fo @<<
	$<
<<

{.}.cxx{}.obj::
	$(CXX) -c $(CXXFLAGS) $(CPPFLAGS) -Fo @<<
	$<
<<

{.}.C{}.obj::
	$(CXX) -c $(CXXFLAGS) $(CPPFLAGS) -Fo @<<
	$<
<<

{.}.c{}.obj::
	$(CC) -c $(CFLAGS) $(CPPFLAGS) -Fo @<<
	$<
<<

all: $(TARGET)

$(OFILES): $(HFILES)

$(TARGET): $(OFILES)
	$(LINK) $(LFLAGS) /OUT:$(TARGET) @<<
	  $(OFILES) $(LIBS)
<<
	C:\\Program Files (x86)\\Windows Kits\\10\\bin\\10.0.18362.0\\x64\\mt -nologo -manifest $(TARGET).manifest -outputresource:$(TARGET);2

install: $(TARGET)
	@if not exist C:\OSGeo4W64\apps\Python37\Lib\site-packages mkdir C:\OSGeo4W64\apps\Python37\Lib\site-packages
	copy /y $(TARGET) C:\OSGeo4W64\apps\Python37\Lib\site-packages\$(TARGET)

clean:
	-del $(TARGET)
	-del sipTestMathcmodule.obj
	-del sipTestMathTestMath.obj
	-del $(TARGET).manifest
