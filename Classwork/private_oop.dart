class tungtungSahur{
  String? _name;

  void setName(String name){
    _name=name;
  }
  String getName(){
    return _name ??='';
  }
}

void main() {
    tungtungSahur me=tungtungSahur();
    me.setName("Sak");
    print(me.getName());
    me._name="IDK";
    print(me._name);
}

