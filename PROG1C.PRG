%%%
  VERSION:1
  LANGUAGE:ENGLISH
%%%

MODULE PROG1

  CONST robtarget pcarga:=[[887.45,-483.28,760.54],[0.040736,-0.003594,0.998893,0.023273],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST robtarget pdesc:=[[813.6,428.85,759.33],[0.040777,-0.003477,0.998891,0.023291],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  VAR robtarget pdesc1;
  VAR robtarget pdesc2;
  VAR robtarget pdesc3;
  VAR SPEEDDATA vmedia;
  VAR Num j;
  VAR Num i;
  VAR Num dx;
  VAR Num dy;

  PROC main()

    !Mauricio da Silva Viegas

    vmedia:=[285,5000,1000,1000];
    j:=0;
    i:=0;
    dx:=0;
    dy:=0;

    RESET Do7;
    SET Do8;

    MOVEJ OFFs (pcarga,0,0,65),V7000,fine,tool0;

    !organizando camada 1

    FOR j FROM 0 TO 1 DO
      FOR i FROM 0 TO 2 DO
        dx:=(90*i);
        dy:=(-210*j);
        pdesc1:=OFFs (pdesc,dx,dy,65);
        pdesc2:=OFFs (pdesc,dx,dy,3);
        MOVEL  pcarga,vmedia,fine,tool0;
        RESET Do8;
        SET Do7;
        WaitTime 0.5;
        MOVEL OFFs (pcarga,0,0,65),vmedia,z5,tool0;
        MOVEJ RELTOOL (pdesc1,0,0,0\Rz:=90),v7000,z5,tool0;
        MOVEL RELTOOL (pdesc2,0,0,0\Rz:=90),vmedia,fine,tool0;
        RESET Do7;
        SET Do8;
        WaitTime 0.5;
        MOVEL RELTOOL (pdesc1,0,0,0\Rz:=90),vmedia,z5,tool0;
        MOVEJ OFFs (pcarga,0,0,65),v7000,z5,tool0;
      ENDFOR
    ENDFOR
    FOR i FROM 0 TO 1 DO
      dx:=(15+(150*i));
      MOVEL  pcarga,vmedia,fine,tool0;
      RESET Do8;
      SET Do7;
      WaitTime 0.5;
      MOVEL OFFs (pcarga,0,0,65),vmedia,z5,tool0;
      MOVEJ OFFs (pdesc,dx,-105,65),v7000,z5,tool0;
      MOVEL OFFs (pdesc,dx,-105,3),vmedia,fine,tool0;
      RESET Do7;
      SET Do8;
      WaitTime 0.5;
      MOVEL OFFs (pdesc,dx,-105,65),vmedia,z5,tool0;
      MOVEJ OFFs (pcarga,0,0,65),v7000,z5,tool0;
    ENDFOR

    !organizando camada 2

    MOVEJ OFFs (pcarga,55,0,65),v7000,z5,tool0;

    FOR j FROM 0 TO 2 DO
      dy:=(-120*i);
      MOVEL  OFFs (pcarga,55,0,0),vmedia,fine,tool0;
      RESET Do8;
      SET Do7;
      WaitTime 0.5;
      MOVEL OFFs (pcarga,55,0,65),vmedia,z5,tool0;
      MOVEJ OFFs (pdesc,90,dy,135),v7000,z5,tool0;
      MOVEL OFFs (pdesc,90,dy,53),vmedia,fine,tool0;
      RESET Do7;
      SET Do8;
      WaitTime 0.5;
      MOVEL OFFs (pdesc,90,dy,135),vmedia,z5,tool0;
      MOVEJ OFFs (pcarga,55,0,65),v7000,z5,tool0;
    ENDFOR

    !organizando camada 3

    MOVEJ OFFs (pcarga,0,0,65),V7000,fine,tool0;

    FOR j FROM 0 TO 2 DO
      FOR i FROM 0 TO 1 DO
        dx:=(110*i);
        dy:=(-120*j);
        pdesc3:=OFFs (pdesc,15,15,0);
        MOVEL  pcarga,vmedia,fine,tool0;
        RESET Do8;
        SET Do7;
        WaitTime 0.5;
        MOVEL OFFs (pcarga,0,0,65),vmedia,z5,tool0;
        MOVEJ OFFs (pdesc3,dx,dy,185),v7000,z5,tool0;
        MOVEL OFFs (pdesc3,dx,dy,123),vmedia,fine,tool0;
        RESET Do7;
        SET Do8;
        WaitTime 0.5;
        MOVEL OFFs (pdesc3,dx,dy,185),vmedia,z5,tool0;
        MOVEJ OFFs (pcarga,0,0,65),v7000,z5,tool0;
      ENDFOR
    ENDFOR

  ENDPROC

ENDMODULE

