%%%
  VERSION:1
  LANGUAGE:ENGLISH
%%%

MODULE PROG1

  CONST robtarget P1:=[[823.18,-366.3,768.26],[0.011158,-0.351249,-0.936117,0.013605],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  VAR robtarget p2;
  VAR robtarget p3;
  VAR Num esco1;
  VAR Num esco2;
  VAR Num esco3;
  VAR Num esco4;


  PROC main()

  p2:=OFFs(p1,0,200,0);
  p3:=OFFs(p1,0,400,0);
  esco1:=0;
  esco2:=0;
  esco3:=0;
  esco4:=0;

    label1:

    !Escolhendo ordem de desenhos

    TPwrite "Escolha a ordem em que os desenhos devem ser desenhados,";
    TPwrite "para isso, digite o numero referente ao desenho:";
    TPwrite " ";
    TPwrite "1 - Desenho A";
    TPwrite "2 - Desenho B";
    TPwrite "3 - Desenho C";

    !Pegando dados do operador

    TPReadNum esco1," ";
    TPReadNum esco2," ";
    TPReadNum esco3," ";
    TPwrite " ";

    !Testando escolha do operador


    !Escolhendo maneira de desenhar

    label2:

    TPwrite "Como deseja desenhar?";
    TPwrite " ";
    TPwrite "1 - Na mesma folha.";
    TPwrite "2 - Em folhas diferentes";
    TPwrite " ";

    !Pegando dados do operador

    TPReadNum esco4," ";
    TPwrite " ";

    !Movimentando robo conforme solicitado

    MOVEJ OFFs (p1,0,0,10),V300,fine,tool0;

    !Operando escolha do operador

    TEST esco4
      CASE 1:
        TEST esco1
          CASE 1:
            DESEA;
          CASE 2:
            DESEB;
          CASE 3:
            DESEC;
          DEFAULT:
            GOTO label1;
        ENDTEST
        TEST esco2
          CASE 1:
            DESEA;
          CASE 2:
            DESEB;
          CASE 3:
            DESEC;
          DEFAULT:
            GOTO label1;
        ENDTEST
        TEST esco3
          CASE 1:
            DESEA;
          CASE 2:
            DESEB;
          CASE 3:
            DESEC;
          DEFAULT:
            GOTO label1;
       ENDTEST
       CASE 2:
        TEST esco1
          CASE 1:
            DESEA;
          CASE 2:
            DESEB;
          CASE 3:
            DESEC;
          DEFAULT:
            GOTO label1;
        ENDTEST
        TEST esco2
          CASE 1:
            DESEA2;
          CASE 2:
            DESEB2;
          CASE 3:
            DESEC2;
          DEFAULT:
            GOTO label1;
        ENDTEST
        TEST esco3
          CASE 1:
            DESEA3;
          CASE 2:
            DESEB3;
          CASE 3:
            DESEC3;
          DEFAULT:
            GOTO label1;
       ENDTEST
      DEFAULT:
       GOTO label2;
    ENDTEST

    TPwrite "Desenhos foram concluidos!";

  ENDPROC

  PROC DESEA ()

    MOVEL p1,v100,fine,tool0;
    MOVEC OFFs(p1,75,75,0),OFFs(p1,150,0,0),v100,fine,tool0;
    MOVEL p1,v100,fine,tool0;
    MOVEL OFFs(p1,0,0,10),v100,z5,tool0;
    MOVEL OFFs(p1,0,150,10),v300,z5,tool0;
    MOVEL OFFs(p1,0,150,0),v100,fine,tool0;
    MOVEC OFFs(p1,75,75,0),OFFs(p1,150,150,0),v100,fine,tool0;
    MOVEL OFFs(p1,0,150,0),v100,fine,tool0;
    MOVEL OFFs(p1,0,150,10),v100,z5,tool0;
    MOVEL OFFs(p1,0,0,10),v300,fine,tool0;

  ENDPROC

  PROC DESEB ()

    MOVEL OFFs(p1,50,0,10),v300,z5,tool0;
    MOVEL OFFs(p1,50,0,0),v100,fine,tool0;
    MOVEL OFFs(p1,50,50,0),v100,fine,tool0;
    MOVEL OFFs(p1,0,50,0),v100,fine,tool0;
    MOVEL OFFs(p1,0,100,0),v100,fine,tool0;
    MOVEL OFFs(p1,75,150,0),v100,fine,tool0;
    MOVEL OFFs(p1,150,100,0),v100,fine,tool0;
    MOVEL OFFs(p1,150,50,0),v100,fine,tool0;
    MOVEL OFFs(p1,100,50,0),v100,fine,tool0;
    MOVEL OFFs(p1,100,0,0),v100,fine,tool0;
    MOVEL OFFs(p1,50,0,0),v100,fine,tool0;
    MOVEL OFFs(p1,50,0,10),v100,z5,tool0;
    MOVEL OFFs(p1,0,0,10),v300,fine,tool0;

  ENDPROC

  PROC DESEC ()

    MOVEL p1,v100,fine,tool0;
    MOVEL OFFs(p1,0,150,0),v100,fine,tool0;
    MOVEL OFFs(p1,150,0,0),v100,fine,tool0;
    MOVEL OFFs(p1,150,150,0),v100,fine,tool0;
    MOVEL p1,v100,fine,tool0;
    MOVEL OFFs(p1,0,0,10),v100,fine,tool0;

  ENDPROC

  PROC DESEA2 ()

    MOVEL OFFs(p2,0,0,10),v300,z5,tool0;
    MOVEL p2,v100,fine,tool0;
    MOVEC OFFs(p2,75,75,0),OFFs(p2,150,0,0),v100,fine,tool0;
    MOVEL p2,v100,fine,tool0;
    MOVEL OFFs(p2,0,0,10),v100,z5,tool0;
    MOVEL OFFs(p2,0,150,10),v300,z5,tool0;
    MOVEL OFFs(p2,0,150,0),v100,fine,tool0;
    MOVEC OFFs(p2,75,75,0),OFFs(p2,150,150,0),v100,fine,tool0;
    MOVEL OFFs(p2,0,150,0),v100,fine,tool0;
    MOVEL OFFs(p2,0,150,10),v100,z5,tool0;
    MOVEL OFFs(p3,0,0,10),v300,fine,tool0;

  ENDPROC

  PROC DESEB2 ()

    MOVEL OFFs(p2,0,0,10),v300,z5,tool0;
    MOVEL OFFs(p2,50,0,10),v300,z5,tool0;
    MOVEL OFFs(p2,50,0,0),v100,fine,tool0;
    MOVEL OFFs(p2,50,50,0),v100,fine,tool0;
    MOVEL OFFs(p2,0,50,0),v100,fine,tool0;
    MOVEL OFFs(p2,0,100,0),v100,fine,tool0;
    MOVEL OFFs(p2,75,150,0),v100,fine,tool0;
    MOVEL OFFs(p2,150,100,0),v100,fine,tool0;
    MOVEL OFFs(p2,150,50,0),v100,fine,tool0;
    MOVEL OFFs(p2,100,50,0),v100,fine,tool0;
    MOVEL OFFs(p2,100,0,0),v100,fine,tool0;
    MOVEL OFFs(p2,50,0,0),v100,fine,tool0;
    MOVEL OFFs(p2,50,0,10),v100,z5,tool0;
    MOVEL OFFs(p3,0,0,10),v300,fine,tool0;

  ENDPROC

  PROC DESEC2 ()

    MOVEL OFFs(p2,0,0,10),v300,z5,tool0;
    MOVEL p2,v100,fine,tool0;
    MOVEL OFFs(p2,0,150,0),v100,fine,tool0;
    MOVEL OFFs(p2,150,0,0),v100,fine,tool0;
    MOVEL OFFs(p2,150,150,0),v100,fine,tool0;
    MOVEL p2,v100,fine,tool0;
    MOVEL OFFs (p3,0,0,10),v100,fine,tool0;

  ENDPROC

  PROC DESEA3 ()

    MOVEL p3,v100,fine,tool0;
    MOVEC OFFs(p3,75,75,0),OFFs(p3,150,0,0),v100,fine,tool0;
    MOVEL p3,v100,fine,tool0;
    MOVEL OFFs(p3,0,0,10),v100,z5,tool0;
    MOVEL OFFs(p3,0,150,10),v300,z5,tool0;
    MOVEL OFFs(p3,0,150,0),v100,fine,tool0;
    MOVEC OFFs(p3,75,75,0),OFFs(p3,150,150,0),v100,fine,tool0;
    MOVEL OFFs(p3,0,150,0),v100,fine,tool0;
    MOVEL OFFs(p3,0,150,10),v100,z5,tool0;
    MOVEL OFFs(p1,0,0,10),v300,fine,tool0;

  ENDPROC

  PROC DESEB3 ()

    MOVEL OFFs(p3,50,0,10),v300,z5,tool0;
    MOVEL OFFs(p3,50,0,0),v100,fine,tool0;
    MOVEL OFFs(p3,50,50,0),v100,fine,tool0;
    MOVEL OFFs(p3,0,50,0),v100,fine,tool0;
    MOVEL OFFs(p3,0,100,0),v100,fine,tool0;
    MOVEL OFFs(p3,75,150,0),v100,fine,tool0;
    MOVEL OFFs(p3,150,100,0),v100,fine,tool0;
    MOVEL OFFs(p3,150,50,0),v100,fine,tool0;
    MOVEL OFFs(p3,100,50,0),v100,fine,tool0;
    MOVEL OFFs(p3,100,0,0),v100,fine,tool0;
    MOVEL OFFs(p3,50,0,0),v100,fine,tool0;
    MOVEL OFFs(p3,50,0,10),v100,z5,tool0;
    MOVEL OFFs(p1,0,0,10),v300,fine,tool0;

  ENDPROC

  PROC DESEC3 ()

    MOVEL p3,v100,fine,tool0;
    MOVEL OFFs(p3,0,150,0),v100,fine,tool0;
    MOVEL OFFs(p3,150,0,0),v100,fine,tool0;
    MOVEL OFFs(p3,150,150,0),v100,fine,tool0;
    MOVEL p3,v100,fine,tool0;
    MOVEL OFFs (p3,0,0,10),v100,fine,tool0;
    MOVEL OFFs(p1,0,0,10),v300,fine,tool0;

  ENDPROC

ENDMODULE

