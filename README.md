CTP后台服务程序
=========


操盘大哥v2.0的ctp后台

安装
===

Linux
-----

* 安装依赖：sudo dnf install cmake hiredis-devel
* 安装[redis++](https://github.com/sewenew/redis-plus-plus)
* 如果使用/usr/local目录存放.so文件，需要将/usr/local/lib, /usr/local/lib64/ 加入 etc/ld.so.conf

  同时将api目录中的so文件复制到/usr/lib64/, 执行sudo ldconfig刷新一下
* 进去源码目录，执行标准cmake安装:

  mkdir build && cd build && cmake .. 

  cmake --build . --target backend-ctp --config release

* 编译后的执行程序 backend-ctp 位于/usr/local/bin 目录下
* 参考config-example.ini，在"~/.config/backend-ctp/"目录下新建config.ini，
  填入服务器的ip和mac地址、修改相关配置项。
  
* 注意：
  - 本项目编译需要至少g++12以上，本人测试环境：ubuntu20自带g++9.4是无法编译的，因此要安装一个g++13，并指定cmake -DCMAKE_CXX_COMPILER=/usr/bin/g++-13。编译脚本已经写在biuld.sh中
  - cmake版本也要更新，至少3.5以上
  - CMakeLists.txt已经修改，依赖包地址改成绝对地址（本人测试find_library api下的包找不到，折腾一下懒得搞了，cmake没怎用过）

Windows
-------
* 源码已包含编译好的hiredis和redis++静态库，不需要额外安装。
* 使用vs stdio或clion直接编译即可，
* 程序运行需要将ctp的3个dll放在执行文件相同目录下
* 参考config-example.ini，在执行文件目录下新建config.ini， 填入服务器的ip和mac地址、修改相关配置项。
