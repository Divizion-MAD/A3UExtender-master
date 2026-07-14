class Templates 
{
    class CDF_Base;

    class CDF_Units : CDF_Base
    { 
        basepath = QPATHTOFOLDER(Templates\RDO);
        side = "Occ";
        flagTexture = QPATHTOFOLDER(Templates\RDO\RDO.paa);
        name = "Soviet Occupation Forces"; // Name shown in the select menu. If this is removed, it will use the name of the template you are overwriting. Remove this for "silent" changes
        file = "RDO";
        description = "A Red Dawn inspired Soviet Occupation force circa 198X-199X";
    };

        class CDF_Civilians : CDF_Base
    { 
        basepath = QPATHTOFOLDER(Templates\RDO);
        side = "Civ";
        flagTexture = QPATHTOFOLDER(Templates\RDO\RDO.paa);
        name = "Occupation Civilians"; // Name shown in the select menu. If this is removed, it will use the name of the template you are overwriting. Remove this for "silent" changes
        file = "CIV";
        description = "The oppressed peoples under the Soviet Occupation Forces of mixed backgrounds.";
    };
};
