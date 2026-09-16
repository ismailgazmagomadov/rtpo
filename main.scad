echo("Работа Полина Максимова");
w_Frame = 65;
d_Frame = 5;
h_Frame = 40;
fitnes_Frame = 4;

difference() {
    cube([w_Frame, d_Frame, h_Frame], center = true);
    color("red") 
    cube([w_Frame - 2 * fitnes_Frame, d_Frame + 2, h_Frame - 2 * fitnes_Frame], center = true);
}
