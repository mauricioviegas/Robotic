%%%
  VERSION:1
  LANGUAGE:ENGLISH
%%%

MODULE PROG1

  CONST robtarget pcarga:=[[823.18,-366.3,768.26],[0.011158,-0.351249,-0.936117,0.013605],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST robtarget pdesc:=[[823.18,-366.3,768.26],[0.011158,-0.351249,-0.936117,0.013605],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
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

    RESET D07;
    WaitTime 0.2;
    
    MOVEJ OFFs (pcarga,0,0,15),V7000,fine,tool0;

    !Levando primeira camada
    
    FOR j FROM 0 TO 2 DO
      FOR i FROM 0 TO 1 DO
        dx:=83*i;
        dy:=-83*j;
        MOVEL  pcarga,vmedia,fine,tool0;
        SET D07;
        WaitTime 0.2;
        MOVEL OFFs (pcarga,0,0,15),vmedia,z5,tool0;
        MOVEL OFFs (pdesc,dx,dy,15),v7000,z5,tool0;
        MOVEL OFFs (pdesc,dx,dy,0),vmedia,fine,tool0;
        RESET D07;
        WaitTime 0.2;
        MOVEL OFFs (pdesc,dx,dy,15),vmedia,z5,tool0;
        MOVEL OFFs (pcarga,0,0,15),v7000,z5,tool0;
      ENDFOR
    ENDFOR
    
    !Levando camada de cima
    
    FOR j FROM 0 TO 1 DO
      FOR i FROM 0 TO 1 DO
        dx:=(83*i);
        dy:=(-83*j)-41.5;
        MOVEL  pcarga,vmedia,fine,tool0;
        SET D07;
        WaitTime 0.2;
        MOVEL OFFs (pcarga,0,0,15),vmedia,z5,tool0;
        MOVEL OFFs (pdesc,dx,dy,113),v7000,z5,tool0;
        MOVEL OFFs (pdesc,dx,dy,98),vmedia,fine,tool0;
        RESET D07;
        WaitTime 0.2;
        MOVEL OFFs (pdesc,dx,dy,113),vmedia,z5,tool0;
        MOVEL OFFs (pcarga,0,0,15),v7000,z5,tool0;
      ENDFOR
    ENDFOR
  
  ENDPROC

ENDMODULE

