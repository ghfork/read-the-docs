C
==

Read Configs

xxx_1   10
xxx_2   15
xxx_3   20

.. code-block:: c

    FILE	*CfgFile;
    char	CfgString[300];
    char	CfgValue[300];



    //============================================================================================
    //============================================================================================
    CfgFile = fopen("ifpe_bnr.cfg", "r");

    if (!CfgFile) {
	    printf("Config Read Error!");
    }
    else {
	    while (!feof(CfgFile))
	    {
		    fscanf(CfgFile, "%s %s", CfgString, CfgValue);
		    printf("%s %d\n", CfgString, atoi(CfgValue));
	    }
    }
