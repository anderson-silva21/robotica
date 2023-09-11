%Exercicio aula 5
l1=1;
l2=1;
l3=1;
l4=1;

robotexer = ETS3.Tz(l1)*ETS3.Rz("q1")*ETS3.Ty(l2)*ETS3.Rx(deg2rad(-90))*...
ETS3.Rz("q2")*ETS3.Tx(-l3)*ETS3.Tz(l4)*ETS3.Rz("q3")*ETS3.Tx(0.2);

robotexer.teach
