void main() {
  var setB = <String>{};
  setB.addAll({'youssef', 'mohamed', 'ali'});
  print(setB.add('red')); //true
  print(setB); //{youssef, mohamed, ali, red}

  //2.AddAll method
  var setA = <String>{};
  setA.addAll({'youssef', 'laachari'});
  print(setA); //{youssef, laachari}

  //3.clear method

  var setC = <String>{};
  setC.addAll({'yousseffffff', 'laachari'});
  print(setC); //{yousseffffff, laachari}
  setC.clear();
  print(setC); //{}

  //4.contains method
  var setD = <int>{};
  setD.addAll({10, 5, 7});
  print(setD); //{10, 5, 7}
  print(setD.contains(10)); //true

  //5.containsAll method
  var setJ = <int>{};
  setJ.addAll({1, 5, 2, 8});
  print(setJ.containsAll({5, 2})); //true

  //6.diffrence method
  var set1 = <int>{1, 2, 7, 4};
  var set2 = <int>{1, 2, 8, 4};
  print(set2.difference(set1)); //{8}
  print(set1.difference(set2)); //{7}

  //7.intersection method
  var setAA = <int>{1, 2, 7, 4};
  var setBB = <int>{1, 2, 8, 4};
  print(setBB.intersection(setBB)); //{1, 2, 8, 4}
  print(setAA.intersection(setBB)); //{1, 2, 4}

  //8.lookup method
  var setCC = <int>{1, 2, 7, 4};
  print(setCC.lookup(1)); //1

  //9.remove method
  var setQQ = <int>{1, 2, 7, 4};
  print(setAA.remove(2));
  print(setQQ); //{1, 2, 7, 4}

  //10.removeAll method
  var setWW = <int>{1, 2, 7, 4};
  setWW.removeAll({1, 2});
  print(setWW); //{7, 4}

  //11.removeWhere method
  var setEE = <int>{10, 5, 7, 33};
  setEE.removeWhere((element) => element % 5 == 0);
  print(setEE); //{7, 33}

  //12.retainAll method
  var setRR = <int>{10, 5, 7, 33};
  setRR.retainAll({33, 5});
  print(setRR); //{5, 33}

  //13.retainWhere method
  var setTT = <int>{10, 5, 7, 33};
  setTT.retainWhere((element) => element % 5 == 0);
  print(setTT); //{10, 5}

  //14

  //15.union method
  var setYY = <int>{5, 2, 7, 4};
  var setUU = <int>{1, 9, 8, 6};
  var result = setUU.union(setYY);
  print(result); //{1, 9, 8, 6, 5, 2, 7, 4}

  //16.anyMethod
  var setO = <int>{10, 5, 7, 33};
  print(setO.any((element) => element % 3 == 0)); //true

  //17.elementAt method
  var setPP = <String>{'aaa', 'bbb', 'ccc', 'ddd'};
  print(setPP.elementAt(0)); //aaa

  //18.everyMethod
  var setSS = <int>{10, 5, 7, 33};
  print(setSS.every((element) => element > 0)); //true

  //20.firstWhere method
  var setFF = <int>{10, 5, 7, 33};
  var resulFF = setFF.firstWhere((element) => element % 5 == 0);
  print(resulFF); //10

  var result2 =
      setFF.firstWhere((element) => element % 7 == 0, orElse: () => 0);
  print(result2); //7
  var result3 =
      setFF.firstWhere((element) => element % 8 == 0, orElse: () => 0);
  print(result3); //Bad state: No element

  //21.fold<T> method
  var setGG = <int>{10, 5, 7, 33};
  var resultGG = setGG.fold(20, (dynamic value, element) => value + element);
  print(resultGG);

  //22.followedBy method
  var setHH1 = <int>{50, 40, 10};
  var setHH2 = <int>{60, 70, 80};
  var resulHH = setHH1.followedBy(setHH2).toSet();
  print(resulHH);

  //23.ForEach method
  var setJJ = <int>{50, 40, 10};
  setJJ.forEach((element) => print(element));

  //24.join method
  var setKK = <int>{55, 12, 63};
  print(setKK.join('   ')); //55   12   63
  print(setKK.join()); //551263

  //25.lastWhere method
  var setLL = <int>{55, 12, 50};
  var resultLL1 =
      setLL.lastWhere((element) => element % 5 == 0, orElse: () => 0);
  print(resultLL1);

  //26.map<T> method
  var setZZ = <int>{5, 7, 3};
  var resultZZ = setZZ.map((element) => element + element).toSet();
  print(resultZZ); //{10, 14, 6}

  //27.reduce method
  var setXX = <int>{71, 45, 7};
  var resulXX = setXX.reduce((value, element) => value + element);
  print(resulXX); //123

  // //28.singleWhere method
  // var setVV = <int>{14, 5, 30};
  // var resultVV = setVV.singleWhere((element) => element == 2, orElse: () => 0);
  // print(resultVV); //0
  // var resultVV2 = setVV.singleWhere((element) => element % 5 == 0);
  // print(resultVV2); //Bad state: Too many elements

  //29.skip method
  var setNN = <int>{15, 47, 42, 48, 74};
  var resulNN = setNN.skip(2).reduce((value, element) => value + element);
  print(resulNN);

  //30.take method
  var setMM = <int>{15, 47, 42, 48, 74};
  var resultMM = setMM.take(2).reduce((value, element) => value + element);
  print(resultMM);

  //31.takeWhile method
  var setM1 = <int>{15, 10, 42, 48, 20};
  print(setM1.takeWhile((value) => value % 5 == 0)); //(15, 20)

  //32.toList method

  var setM2 = <int>{15, 10, 42, 48, 20};
  var listM2 = setM2.toList(growable: true);
  print(listM2); //[15, 10, 42, 48, 20]

  //33 where method
  var setAS = <int>{10, 50, 80, 47};
  var resultAS = setAS.where((element) => element > 40).toSet();
  print(resultAS); //{50, 80, 47}

  //34.whereType method
  var setAD = <num>{10.0, 50, 80.0, 47};
  var resultAD = setAD.whereType<double>().toSet();
  print(resultAD); //{10.0, 80.0}
}
