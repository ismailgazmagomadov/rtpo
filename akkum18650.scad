d_akkum = 18;
h_akkum = 65;

// Этот модуль собирает всё вместе
module battery_assembly() {
    // Первый аккумулятор
    translate([0, -d_akkum/2-1, d_akkum/2+1])
    rotate()
    akkum18650();

    // Второй аккумулятор
    translate([0, d_akkum/2+1, d_akkum/2+1])
    rotate()
    akkum18650();

    // Корпус-держатель
    translate([-33, -10, 0])
    import("flexbatter18650x2.stl");
}

// Сам модуль аккумулятора
module akkum18650() {
    color("violet")
    cylinder(d=d_akkum, h=h_akkum, $fn=32, center=true);
}
