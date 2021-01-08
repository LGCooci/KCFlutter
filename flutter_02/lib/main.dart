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
}
