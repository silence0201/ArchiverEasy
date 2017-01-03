# ArchiverEasy
更简单的使用`NSKeyedUnarchiver`和`NSKeyedArchiver`

##使用

### import
将`ArchiverEasy`文件夹拉入目录
手工导入
	
	#import "NSKeyedArchiver+Key.h"
	#import "NSKeyedUnarchiver+Key.h"
	
pod安装
	
	pod 'ArchiverEasy', '~> 1.0'
	

### Archiving
	 
	 // 默认存入沙盒Document/DefaultArchive文件夹中
    [NSKeyedArchiver archiveRootObject:array forKey:@"kk"] ;
    
    // 自定义文件夹路径
    NSString *path = [NSHomeDirectory() stringByAppendingPathComponent:@"custom"] ;
    [NSKeyedArchiver archiveRootObject:array forKey:@"kk" WithFolderPath:path] ;

### Unarchiving
	
	 // 从默认目录读取
    NSArray *a1 = [NSKeyedUnarchiver unarchiveObjectForKey:@"kk"] ;
    
    // 从指定目的读取
    NSArray *a2 = [NSKeyedUnarchiver unarchiveObjectForKey:@"kk" WithPath:path] ;
    
## ArchiverEasy

ArchiverEasy is available under the MIT license. See the LICENSE file for more info.
