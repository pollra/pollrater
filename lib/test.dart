/*
class Dummy {

  String? name;           // [?] - nullable
  String age;             // [] - notNull
  ChildDummy? childDummy; // [?] - nullable

  Dummy(
      this.name,                // 반드시 값이 들어와야 함 해당 초기화만 존재 할 경우 Dummy("")로 생성 가능
      {
        */
/*
            해당 괄호 안에 있는 값은 Optional이 가능하다. 단, 이름 뒤에 값을 입력해야 함
            예를들어 아래에 있는 age만 있는 경우, Dummy(age:30) 형태가 됨
         *//*

        required this.age,      // required 키워드가 없으면 Optional 가능, 사용하는 방법은 위와 같음
        ChildDummy? childDummy  // child는 [?] 키워드가 들어갔기 때문에 null 가능
      }           // 괄호 {에는 반드시 소괄호의 끝 영역에 있어야함
                  // ex) Dummy({... }) <-
      ) {   // 여기서 부터는 생성자에 로직을 넣는 경우
    if(childDummy == null) {
      throw Exception("나는 Martin이라 하오");
    }
    this.childDummy = childDummy;
  }

  @override
  String toString() {
    return 'Dummy{name: $name, age: $age, childDummy: $childDummy}';
  }
}

class ChildDummy {

  var _name;
  var _age;

  void setName(String name) => _name = name;
  void setAge(int age) => _age = age;

  String getName() {
    return _name.toString();
  }
}

class ConstAndFinal {

  final a;
  static const b = 1;
  late int c;

  ConstAndFinal(this.a);

  ConstAndFinal.aaa(this.a, this.c);

  void function(final a) {
    const ab = 2;
    c = 3;
  }
}

class NamedConstructor {

  String name;
  int age;

  NamedConstructor.aaa(this.name, this.age);
}

void main() {
  var dummy = Dummy("martin", age: "1", childDummy: ChildDummy());
  dummy.childDummy?.setName("test");
  print(dummy.childDummy?.getName());
  print(dummy.toString());

  dynamic iAmIron = 1;
  print(iAmIron);
  iAmIron = 2;
  print(iAmIron);
  iAmIron = "1";
  print(iAmIron);

  final a;
  a=1;
  // a=2;
  print('a = $a');
  const b = 1;
  print('b = $b');

  if (iAmIron is String) {
    print('iAmIron = $iAmIron');
  }

  var i = 1.1;
  if (i is num) {
    print('i = $i');
  }

  print('=================');
  var constAndFinal = ConstAndFinal(1);

  constAndFinal.function(3);

  print('constAndFinal: $constAndFinal');
  var namedCon = NamedConstructor.aaa("martin", 26);
  print(namedCon.name);
  print(dummy);
}

*/
