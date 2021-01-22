import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Copyright 2015 the Dart project authors. All rights reserved.
// Use of this source code is governed by a BSD-style license
// that can be found in the LICENSE file.

class KCClass {
  void sayHello() {
    print('Hello Dart');
  }
}

// main入口函数
void main() {
  // 面向对象
  KCClass cls = new KCClass();
  cls.sayHello();
  // 变量声明初始化测试
  varibleFunc();
  // 关于num 类型测试
  numFunc();
  // 关于string 类型测试
  stringFunc();
  // 关于bool 类型测试
  boolFunc();
  // Lists 类型测试
  listsFunc();
  // Sets 类型测试
  setsFunc();
  // Maps 类型测试
  mapsFunc();
  // 函数测试
  funcFunc3(bold: true);
  // 可选参数 默认值测试
  funcFunc4();
  // 位置参数
  funcFunc5("KC","和谐学习,不急不躁");
  funcFunc5("KC","和谐学习,不急不躁","等风来不如追风去");
  // 函数做参数 - 函数式思想
  funcFunc7();
  // 匿名函数
  funcFunc8();
  // 控制流语法
  ControlFunc();
  // 类的相关语法
  classFunc();
  // 方法相关测试
  methodFunc();
  // 重载操作符
  vectorFunc();
  // 隐式接口
  imposterFunc();
  // 枚举测试
  enumFunc();
}

// 变量
void varibleFunc() {
  var name = 'cooci';
  dynamic nickName = 'KC';
  Object person = '酷C';

  // 显示声明将被推断类型, 可以使用String显示声明字符串类型
  String company = 'LG';
  print('i am: $name,$nickName,$person ,$company');

  // 默认值
  int age;
  assert(age == null);
  print(age); //打印结果为null，证明数字类型初始化值是null

  //  Final and const
  final student = 'JZ';
  final String studentName = '家振';
  print('student = ,${[student, studentName]}');
  // 被 final 或 const 修饰的变量无法再去修改其值。
  // student = 'chen'; // a final variable, can only be set once
  const teacher = 'Kody';
  // 这样写，编译器提示：Constant variables can't be assigned a value
  // teacher = 'Cat';

  // flnal 或者 const 不能和 var 同时使用
  // Members can't be declared to be both 'const' and 'var'
  // const var String teacherName = 'CC';
  // final var String teacherName = 'hank';
  // 常量如果是类级别的，请使用 static const
  // static const String lector = 'sky';
}

// 关于num 类型测试
void numFunc() {
  int a = 1;
  print(a);

  double b = 1.12;
  print(b);

// String -> int
  int one = int.parse('1');
// 输出3
  print(one + 2);

// String -> double
  var onePointOne = double.parse('1.1');
// 输出3.1
  print(onePointOne + 2);

// int -> String
  String oneAsString = 1.toString();
// The argument type 'int' can't be assigned to the parameter type 'String'
//print(oneAsString + 2);
// 输出 1 + 2
  print('$oneAsString + 2');
// 输出 1 2
  print('$oneAsString 2');

// double -> String 注意括号中要有小数点位数，否则报错
  String piAsString = 3.14159.toStringAsFixed(2);
// 截取两位小数, 输出3.14
  print(piAsString);

  String aString = 1.12618.toStringAsFixed(2);
// 检查是否四舍五入，输出1.13，发现会做四舍五入
  print(aString);
}

// 关于string 类型测试
void stringFunc() {
  // `Dart字符串` 是由UTF-16编码单元组成的序列。可以使用`单引号`或`双引号`创建字符串:
  var s1 = '和谐学习,不急不躁';
  var s2 = "等风来不如追风去,总有那么一个人在风景正好的季节来到你的身边,并且懂得你全部的好!!!";
  var s3 = '我是Cooci';
  var s4 = 'cooci';

  assert('$s3' == '我是' + 'Cooci');
  assert('${s4.toUpperCase()}' == 'COOCI');

  // 可以使用相邻的字符串字直接连接在一起 或者 `+操作符` 来连接字符串:
  var s5 = 'LG_' 'Cooci_' "和谐学习不急不躁";
  assert(s5 == 'LG_Cooci_和谐学习不急不躁');

  var s6 = 'LG_' + 'Cooci';
  assert(s6 == 'LG_Cooci');

  // 另一种创建多行字符串的方法是:`使用带有单引号` 或 `双引号的三引号:`
  var s7 = '''
  单引号创建多行字符串 
  注意要各行哦''';
  var s8 = """双引号创建多行字符串  
  注意要各行哦""";
  print(s7);
  print(s8);

  // 单引号或者双引号里面嵌套使用引号。
  // 用 或{} 来计算字符串中变量的值，需要注意的是如果是表达式需要${表达式}

  // 单引号嵌套双引号
  String s9 = '$s1 a "LG" ${s3}';
  // 输出 和谐学习,不急不躁 a "LG" 我是Cooci
  print(s9);
  // 双引号嵌套单引号
  String s10 = "${s4.toUpperCase()} abc 'LG' $s4.toUpperCase()";
  // 输出 COOCI abc 'aaa' cooci.toUpperCase(),
  // 可以看出 '$s4.toUpperCase()' 没有加'{}'，导致输出结果是'cooci.toUpperCase()'
  print(s10);
}

// 关于bool 类型测试
void boolFunc() {
  // Check for an empty string.
  var fullName = '';
  assert(fullName.isEmpty);

// Check for zero.
  var hitPoints = 0;
  assert(hitPoints <= 0);

// Check for null.
  var unicorn;
  assert(unicorn == null);

// Check for NaN.
  var iMeantToDoThis = 0 / 0;
  assert(iMeantToDoThis.isNaN);
}

// Lists 类型测试
void listsFunc(){
  // Dart推断list的类型为list <int>
  // 如果尝试将非整数对象添加到此列表中，分析器或运行时将引发错误
  var list = [1, 2, 3];
  // 要创建一个编译时常量的列表，在列表字面量之前添加const:
  var constantList = const [1, 2, 3];
  // constantList[1] = 1; // 报错

  // spread operator (...)  的用法
  var list1 = [1, 2, 3];
  var list2 = [0, ...list1];
  print(list2);  // [0, 1, 2, 3]
  // 注意插入空的情况 那么就需要 `(...?)`
  var list3 ;
  var list4 = [0, ...?list3];
  print(list4);  // [0]

  // list 增删改查
  var list5 = [1, 2, 3];
  list5.add(4); print(list5);       // [1, 2, 3, 4]
  // 删除元素
  list5.remove(4); print(list5);    // [1, 2, 3]
  list5.removeAt(0); print(list5);  // [2, 3]
  // 修改元素
  list5[1] = 100; print(list5);     // [2, 100]
  // 查询
  print(list5.indexOf(2));          // 0
  print(list5.elementAt(1));        // 100
  print(list5.contains(666));       // false

  // 在List的定义过程中可以同for和if语法连用，十分灵活的感觉。

  const s1 = true;
  const s2 = false;
  List list6 = ["cooci","hank"];

  List list7 = [
    '1',
    if(s1) 'hank',
    if(s2) 'cc',
    for (var i in list6) 'list7-$i'
  ];
  print(list7);   // [1, hank, list7-cooci, list7-hank]

  list7.forEach((element) {print('list7-element');});
}

// Sets 类型测试
void setsFunc(){
  var names = <String>{};   // 或者 Set<String> names = {};
  // ⚠️ var names = {};     // 创建的是一个 map, 不是 set.
  names.add('teachers');
  print(names);            // {teachers}
  var persons = {'hank', 'cooci', 'kody', 'cc', 'cat'};
  names.addAll(persons);
  print('$names,${names.length}'); // {teachers, hank, cooci, kody, cc, cat}, 6
}

// Maps 类型测试
void mapsFunc(){
  var person = {
    // Key:    Value
    'age': 18,
    'name': 'cooci',
    'hobby': '女',
    'height': 1.85
  };
  print(person); // {age: 18, name: cooci, hobby: 女, height: 1.85}
  print('${person.keys},${person.values}'); // (age, name, hobby, height),(18, cooci, 女, 1.85)

  // Map的赋值，中括号中是Key，这里可不是数组
  person['age'] = '20';
  //Map中的键值对是唯一的
  //同Set不同，第二次输入的Key如果存在，Value会覆盖之前的数据
  person['name'] = 'hank';
  // map里面的value可以相同
  person['hobby'] = 'cooci';
  // map里面value可以为空字符串
  person['hobby'] = '';
  // map里面的value可以为null
  person['height'] = null;
  print(person);    // {age: 20, name: hank, hobby: , height: null}

  // map 遍历
  person.forEach((key, value) => print('key=$key, value=$value'));
  /**
      flutter: key=age, value=20
      flutter: key=name, value=hank
      flutter: key=hobby, value=
      flutter: key=height, value=null
   * */
}

// 函数 类型测试
// void 代表返回值类型
// funcFunc 代表函数名称
// () 参数
void funcFunc(){}
// 还可以省略 : 没有声明类型也是可以的
funcFunc1(){}
// 对于仅含有一个表达式的方法，你可以使用一种简写的语法：
funcFunc2() => print("=> 表达式;语法是{ return 表达式 }的简写");

/// 将 bold 和 hidden 作为你声明的参数的值
funcFunc3({bool bold, bool hidden}) {
  print('$bold,$hidden');  // true,null
}

/// 将 bold 和 hidden 作为你声明的参数的值 默认值分别是 false 和 true
funcFunc4({bool bold = false, bool hidden = true}) {
  print('$bold,$hidden');   // false,true
}

// 可选的位置参数，用[]它们标记为可选的位置参数：
String funcFunc5(String person , String word, [String device]) {
  var result = "$person say : $word"; // KC say : 和谐学习,不急不躁
  if (device != null){
    result = "$person say : $device"; // KC say : 等风来不如追风去
  }
  print(result);
  return result;
}

// 函数式编程思想
funcFunc6(int num) => print(num);

funcFunc7(){
  var list = [1,2,3,4];
  list.forEach(funcFunc6);
  /**
      flutter: 1
      flutter: 2
      flutter: 3
      flutter: 4
   */
}
// 匿名函数
funcFunc8(){
  var list = ['KC', 'Hank', 'kody'];
  list.forEach((item) {
    print('${list.indexOf(item)}: $item');
  });
}

// 控制流语句
void ControlFunc(){
  // if - else
  var result = "KC";
  if(result == "Cooci"){
    print("和谐学习,不急不躁");
  }else if (result == "Hank"){
    print("终生学习,人人为师");
  }else{
    print("等风来,不如追风去");
  }

  // For
  var message = new StringBuffer("Dart is fun");
  for(var i =0 ;i<5;i++){
    message.write("!");
  }
  print(message);  // Dart is fun!!!!!

  // Dart的for循环中的闭包能获取循环变量的值，
  var callbacks = [];
  for(var i=0;i<2;i++){
    callbacks.add(() => print(i));
  }
  callbacks.forEach((c) =>c());  // 0 // 1

  // while 和 do-while
  var isDone = true;
  while(!isDone){
    print(message);
  }

  do{
    print(message);
  }while(!isDone);

  // break 和 continue
  // 使用break来结束循环：
  while(true){
    if(isDone)break;
    print(message);
  }

  // 使用continue来跳过本次循环，进入下次循环：
  var list = [1,2,3,4,5];
  for(int i=0;i<list.length;i++){
    var num = list[i];
    if(num <3){
      continue;
    }
    print(message);
  }

  // switch 和 case
  // 作为规定，每一个不为空的case分句都以break语句结尾.其他正确的结尾方式也可以使用continue,throw或者return语句来实现。
  // 当没有任何case分句的条件符合时，使用default分句来执行代码：
  var command = 'KC';
  switch (command){
    case 'KC':
      print("Cooci");
      break;
    case 'KD':
      print("Kody");
      break;
    case 'CC':
      print("CC");
      break;
    default:
      print("hank");
  }

  // Assert
  // 如果一个布尔条件值为false，使用assert语句来中断正常执行的代码。
  var text = "KC";
  //确保这个变量不为空值.
  assert(text != null);

}

// 异常语句
void excFunc(){
  try {
    print("KCFlutter");
  } on Exception catch (e) {
    // 任意一个异常
    print('来了异常: $e');
  } catch (e) {
    // 非具体类型
    print('非具体类型: $e');
  }
}

// 泛型
void genericsFunc(){
  var names = List<String>();
  names.addAll(['Hank', 'Cooci', 'CC']);
  // names.add(100); // 这里就会报错,因为通过泛型就确定了list 的内容的类型
}

// 泛型可以让你能共享多个类型的一个接口和实现方式，
// 它在调试模式以及静态分析的错误预警中仍然很有优势
abstract class KCObjectCache{
  Object getByKey(String key);
  setByKey(String key,Object value);
}
// 你发现你想要一个字符串专用的接口，所以你创建了另外一个接口：
abstract class KCStringCache{
  String getByKey(String key);
  setByKey(String key,String value);
}
// 接下来，你决定你想要一个这种接口的数字专用的接口...你想到了这个方法.
// 泛型类型可以减少你创建这些接口的困难。取而代之的是，你只需要创建一个带有一个类型参数的接口即可：
// 泛型接下来就牛逼了
abstract class Cache<T>{
  // 在这个代码中，T是一个替代类型，即占位符，你可以将他视为后续被开发者定义的类型。
  T getByKey(String key);
  setByKey(String key,T value);
}

// 类相关测试
class LGPerson {
  int age;
  String name;
  String hobby;
  double height;
}

// 类相关测试
class LGStudent {
  int age;
  String name;
  String hobby;
  double height;

  // LGStudent(int age, String name, String hobby){
  //   // height 没有构造赋值
  //   this.age   = age;
  //   this.name  = name;
  //   this.hobby = hobby;
  // }
  // this关键字指向了当前类的实例, 上面的代码可以简化为：
  LGStudent(this.age,this.name,this.hobby);
  // 重定向构造函数
  LGStudent.rediconstructor(int age, String name, String hobby) : this(age,
      "哭C", hobby);

  // 命名构造函数
  LGStudent.fromMap(Map stuMap){
    age = stuMap['age'];
    name = stuMap['name'];
    hobby = stuMap['hobby'];
    height = stuMap['height'];
  }
  // 初始化列表
  LGStudent.fromMaplist(Map stuMap):
        age = stuMap['age'],
        name = stuMap['name'],
        hobby = stuMap['hobby'],
        height = stuMap['height']{
    // age = 18, name = 酷C, hobby = 大师底层, height = 180.0
    print("age = $age, name = $name, hobby = $hobby, height = $height");
  }
}

// 静态构造函数
class LGTeacher{
  final num age;
  final String name;
  const LGTeacher(this.age, this.name);
  static final LGTeacher teacher = LGTeacher(300,"不急不躁");
}

// 工厂构造函数
class LGCar{
  String name;
  // 普通构造函数
  LGCar.func(this.name);

  static final Map<String, LGCar> _cache = <String, LGCar>{};

  factory LGCar(String name){
    if (_cache.containsKey(name)){
      return _cache[name];
    }else{
      final car = LGCar.func(name);
      _cache[name] = car;
      return car;
    }
  }
}

// 类相关测试
void classFunc(){
  // 实例变量创建测试
  var person1 = LGPerson();
  person1.age = 18;
  person1.name = "Cooci";
  person1.height = 182.0;
  person1.hobby  = "iOS";
  print(person1.runtimeType); // LGPerson

  var person2 = LGPerson();
  person2.hobby = "Flutter";  // Use the setter method for hobby.
  print(person2.hobby);       // Use the getter method for hobby.
  print("age = ${person2.age}, name = ${person2.name}"); //age = null, name = null

  // 构造函数
  var student1 = LGStudent(18, "KC", "构造函数");
  print("age = ${student1.age}, name = ${student1.name}"); // age = 18, name = KC

  var stuMap   = {'age': 18,'name': '酷C','hobby': "大师底层",'height': 180.0,};
  var student2 = LGStudent.fromMap(stuMap);
  print("age = ${student2.age}, name = ${student2.name}"); // age = 18, name = 酷C

  var student3 = LGStudent.fromMaplist(stuMap);

  var student4 = LGStudent.rediconstructor(20, "KC", '185.');
  print("age = ${student4.age}, name = ${student4.name}, hobby = ${student4
      .hobby}"); // age = 20, name = 哭C, hobby = 185.

  // 静态构造函数
  var teacher1 = LGTeacher(100, "和谐学习");
  // teacher1.age = 200; // Error: The setter 'age' isn't defined for the class 'LGTeacher'静态无法修改
  teacher1 = LGTeacher(200, "和谐学习");
  print("age = ${teacher1.age}, name = ${teacher1.name}"); //age = 200, name = 和谐学习

  var teacher2 = LGTeacher.teacher;
  // teacher2 = LGTeacher(200, "和谐学习"); // age = 200, name = 和谐学习
  print("age = ${teacher2.age}, name = ${teacher2.name}"); //age = 300, name = 不急不躁

  // 工厂构造函数
  var car = new LGCar("法拉利");
  print("name = ${car.name}"); // name = 法拉利

}

class LGRectangle {
  num left;
  num top;
  num width;
  num height;

  LGRectangle(this.left, this.top, this.width, this.height);

  // 定义两个计算属性: right and bottom.
  num get right             => left + width;
  set right(num value)      => left = value - width;
  num get bottom            => top + height;
  set bottom(num value)     => top = value - height;
}

// 方法测试
void methodFunc(){
  var rectangle = LGRectangle(10, 20, 100, 300);
  print('right = ${rectangle.right}, bottom = ${rectangle.bottom}');// right = 110, bottom = 320

}

// 抽象方法
abstract class LGDoer {
  // ...定义实例变量和方法...
  void doSomething(); // 定义一个抽象方法。
}

class LGEffectiveDoer extends LGDoer {
  void doSomething() {
    // ...提供一个实现，所以这里的方法不是抽象的...
    print("hello word");
  }
}

// 重载操作符
class Vector {
  final int x;
  final int y;
  const Vector(this.x, this.y);

  /// Overrides + (a + b).
  Vector operator +(Vector v) {
    return new Vector(x + v.x, y + v.y);
  }

  /// Overrides - (a - b).
  Vector operator -(Vector v) {
    return new Vector(x - v.x, y - v.y);
  }
}

void vectorFunc() {
  final v = new Vector(2, 3);
  final w = new Vector(2, 2);
  // v == (2, 3)
  assert(v.x == 2 && v.y == 3);
  // v + w == (4, 5)
  assert((v + w).x == 4 && (v + w).y == 5);
  // v - w == (0, 1)
  assert((v - w).x == 0 && (v - w).y == 1);
}

// 隐式接口
// 一个 KCPerson ，包含 greet() 的隐式接口。
class KCPerson {
  // 在这个接口中，只有库中可见。
  final _name;
  // 不在接口中，因为这是个构造函数。
  KCPerson(this._name);
  // 在这个接口中。
  String greet(who) => 'Hello, $who. I am $_name.';
}

//  KCPerson 接口的一个实现。
class KCImposter implements KCPerson {
  // 我们不得不定义它，但不用它。
  final _name = "";
  String greet(who) => 'Hi $who. Do you know who I am?';
}

greetBob(KCPerson person) => person.greet('bob');

imposterFunc() {
  print(greetBob(new KCPerson('KC')));
  print(greetBob(new KCImposter()));
}

// 枚举测试
enum LGColor{
  blue,
  green,
  orange
}

// 在枚举中每个值都有一个 index getter 方法，它返回一个在枚举声明中从 0 开始的位置。例如，第一个值索引值为 0 ，第二个值索引值为 1 。
void enumFunc(){
  assert(LGColor.blue.index   == 0);
  assert(LGColor.green.index  == 1);
  assert(LGColor.orange.index == 2);

  List<LGColor> colors = LGColor.values;
  print(colors); // [LGColor.blue, LGColor.green, LGColor.orange]

  LGColor color1 = LGColor.blue;
  switch(color1) {
    case LGColor.blue:
      print("blue");
      break;
    case LGColor.green:
      print("green");
      break;
    default:
      print("orange");
  }
}




