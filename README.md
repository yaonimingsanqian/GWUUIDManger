 GWUUIDManger 功能
=========================
获取设备唯一标识符,UUID。

注意事项
-------------------------
 1、GWUUIDManger 默认以包名为keychain.   
 2、应用卸载后再次安装能获得相同的uuid,除非用户重置手机.

为什用uuid
-----------------------
早期的ios版本我们可以获得mac地址作为unqiue identifier,但是后来苹果不再允许。接下来大家开始用广告标识符，但是用广告标识符实有一定风险的，虽然很低。苹果官方推荐用uuid。

安装
-----------------------
### 源码安装
直接将demo下载，集成源文件

### cocopods

在命令行中执行 pod search GWUUIDManger 
在Podfile中添加 
pod 'GWUUIDManager', '~> 0.0.1' 
