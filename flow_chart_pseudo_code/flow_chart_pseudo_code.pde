getCab()
  if (haveMoney == false) {
  walk();
} else {
  if (yellowCabComing == true) {
    hailCab();
  } else {
    if (haveUber == true) {
      orderUber();
    } else {
      walk();
    }
  }
}