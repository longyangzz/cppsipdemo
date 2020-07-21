1. 使用vs2015 建立静态库项目，x64版本。输出***.lib库

2. 拷贝该文件到系统的python目录的libs目录下，本人使用的C:\OSGeo4W64\apps\Python37\libs；

3. 根据书写好的 .sip文件和 configure.py文件。 运行py文件，生成

   Makefile文件和 sip编译后对应的.h和 cpp文件

4. 打开vs 命令行窗口，选择对应的x64位 nmake所在的路径，执行nmake。 注意每次删除文件重新执行nmake

5. 执行nmake install 即可将生成的pyd文件拷贝的python的库目录下，

6. 在python中通过import测试