//
//
// class Dummy {
//
//   String? name;  // [?]: null 들어올 수 있음
//   int age;       // []: 반드시 값이 있어야 함
//   ChildDummy? childDummy;  // [?] null 들어올 수 있음
//
//   Dummy(
//       this.name,  // 반드시 값이 들어와야 함 해당 초기화만 존재 할 경우 Dummy("") 로 생성 가능
//       {           /* 해당 괄호 안에 있는 값은 Optional 이 가능하다. 단, 이름뒤에 값을 입력해야 함
//                      예를들어 아래에 있는 age 만 있는 경우, Dummy(age:30) 형태가 됨
//                   */
//          required this.age  // required 키워드가 없으면 Optional 가능 사용하는 방법은 위와 같음
//         ,ChildDummy? child  // child 는 [?] 키워드가 들어갔기 때문에 null 가능
//       }           /* 괄호[{]는 반드시 소괄호의 끝 영역에 있어야 함
//                      ex) Dummy(this.name, {this.age})   : O
//                      ex) Dummy({this.age}, this.name)   : X
//                   */
//       ) {   // 여기서 부터는 생성자에 로직을 넣는 경우
//     if(child == null) {
//       throw Exception("나는 Exception 인데오");
//     }
//     childDummy = child; // 생성자 로직
//   }
//
//   @override
//   String toString() {
//     return 'Dummy{name: $name, age: $age, childDummy: $childDummy}';
//   }
// }
//
// class ChildDummy {
//
//   var _name;
//   var _age;
//
//   void setName(String name) => _name = name;
//   void setAge(int age) => _age = age;
//
//   @override
//   String toString() {
//     return 'ChildDummy{_name: $_name, _age: $_age}';
//   }
// }
//
// class ConstAndFinal {
//
//   final a;
//   static const b = 1;
//   late int c;
//
//   ConstAndFinal(this.a);
//
//
//   void function(final a) {
//     const ab = 2; // ㅆㄱㄴ
//     c = a;
//   }
//
//   @override
//   String toString() {
//     return 'ConstAndFinal{a: $a, c: $c}';
//   }
// }
//
// class NamedConstructor {
//
//   String name;
//   int age;
//
//   NamedConstructor(this.name, this.age);
//   NamedConstructor.iAmIron1(this.name, this.age);
//   NamedConstructor.iAmIron2(this.name, this.age);
//   NamedConstructor.iAmIron3(this.name, this.age);
//
//   @override
//   bool operator ==(Object other) =>
//       other is int;
//
//   @override
//   int get hashCode => name.hashCode ^ age.hashCode;
// }
//
// void main() {
//   var dummy = Dummy("name", age:26, child: ChildDummy());
//   dummy.childDummy?.setName("martin");
//   dummy.childDummy?.setAge(26);
//
//   dynamic iAmIron = 1;
//   print('i am iron : $iAmIron');
//   iAmIron = 2;
//   print('i am iron : $iAmIron');
//
//   if (iAmIron is int) {
//     print('나는 퍼킹 아이언이다');
//   }
//
//   iAmIron = "man";
//   print('i am iron : $iAmIron');
//
//   final a = 1;
//   // a = 2;
//
//   const b = 1;
//   // b = 2;
//
//   print('============================================');
//   var constAndFinal = ConstAndFinal(1);
//   constAndFinal.function(3);
//   print('constAndFinal: $constAndFinal');
//
//   print('============================================');
//   var namedConstructor = NamedConstructor.iAmIron1("name", 10);
//   if(namedConstructor == a) {
//     print('i am int man');
//   }
//
//   print(dummy);
// }
