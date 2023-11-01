@echo off
rem 请打包本批处理后测试

rem waitall:参数会导致32位单文件在64位系统中运行时，批处理中对注册表、文件的操作存在重定向问题。即使用waitall:x64:也存在重定向问题，其它参数和x64:组合无问题。
rem https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=0&rsv_idx=1&tn=baidu&wd=%E6%89%B9%E5%A4%84%E7%90%86%E5%9C%A864%E4%BD%8D%E7%B3%BB%E7%BB%9F%E4%B8%AD%E9%87%8D%E5%AE%9A%E5%90%91&rsv_pq=e895d77a0007c7c3&rsv_t=2f03JFQhfzPyaDzWGgmEHwhloxawgYHIywBkcSUCVOezAQnQ8vTLNOvPx9Y&rqlang=cn&rsv_enter=1&rsv_sug3=35&rsv_sug1=21&rsv_sug7=101
rem https://blog.csdn.net/chenlycly/article/details/53119127
rem https://blog.csdn.net/xringm/article/details/50971750

rem 注意，以下pause不能按方向键，否则失败，一闪而过。


del /a /f /q "%systemroot%\system32\a.txt"
start /min "" EXPLORER.EXE /n,/select,"%systemroot%\system32\a.txt"
pause
echo aaa > "%systemroot%\system32\a.txt"
dir "%systemroot%\system32\a.txt"
start /min "" EXPLORER.EXE /n,/select,"%systemroot%\system32\a.txt"
pause
del /a /f /q "%systemroot%\system32\a.txt"
