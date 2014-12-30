C
==

Read Configs

.. code-block:: c
    
    // ex: "my_config.cfg"

    MY_CONFIG_0   10
    MY_CONFIG_1   15
    MY_CONFIG_2   20

.. code-block:: c

    FILE	*CfgFile;
    char	CfgString[300];
    char	CfgValue[300];

    int     my_cfg_value;

    CfgFile = fopen("my_config.cfg", "r");

    if (!CfgFile) {
	    printf("Config Read Error!");
    }
    else {
	    while (!feof(CfgFile))
	    {
		    fscanf(CfgFile, "%s %s", CfgString, CfgValue);
		    printf("%s %d\n", CfgString, atoi(CfgValue));
            if  ( !strcmp(CfgString, "MY_CONFIG_0") )  my_cfg_value =  atoi(CfgValue);
	    }
    }

    fclose(CfgFile);

.. code-block:: c

    typedef union single_fp
    {
	    DWORD   dwData;
	    float   fpData;
    } FloatFP;
