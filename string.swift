/*
* @String扩展
* @Date:2014/06/17
*/
import Cocoa

extension String{
    //分割字符
    func split(s:String)->String[]{
        if s.isEmpty{
            var x=String[]()
            for y in self{
                x.append(String(y))
            }
            return x
        }
        return self.componentsSeparatedByString(s)
    }
    //去掉左右空格
    func trim()->String{
        return self.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
    }
    //是否包含字符串
    func has(s:String)->Bool{
        if self.rangeOfString(s) {
            return true
        }else{
            return false
        }
    }
    //是否包含前缀
    func hasBegin(s:String)->Bool{
        if self.hasPrefix(s) {
            return true
        }else{
            return false
        }
    }
    //是否包含后缀
    func hasEnd(s:String)->Bool{
        if self.hasSuffix(s) {
            return true
        }else{
            return false
        }
    }
    //统计长度
    func length()->Int{
        return countElements(self)
    }
    //统计长度(别名)
    func size()->Int{
        return countElements(self)
    }
    //截取字符串
    func substr(range:Int...)->String{
        if range[0]==0{
            return self.substringToIndex(range[1])
        }else{
            return self.substringFromIndex(range[0])
        }
    }
    //重复字符串
    func repeat(times: Int) -> String{
        var result = ""
        for i in 0..times {
            result += self
        }
        return result
    }
    //反转
    func reverse()-> String{
        var s=self.split("").reverse()
        var x=""
        for y in s{
            x+=y
        }
        return x
    }
}

var test="yckit.com "
    test.split(".")
    test.trim()
    test.has("yckit")
    test.hasBegin("yckit")
    test.hasEnd("com")
    test.length()
    test.size()

var r="卧槽"
    r.repeat(3)

var test2="DMKU.NET"
    test2.substr(0,1)
    test2.substr(1,2)
    test2.reverse()


