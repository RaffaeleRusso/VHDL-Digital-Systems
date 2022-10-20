/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_3620187407;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3499444699;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_3112044328_1516540902_init();
    work_a_3615066491_1181938964_init();
    work_a_1773653867_3212880686_init();
    work_a_1346040750_3212880686_init();
    work_a_1195501549_3212880686_init();
    work_a_0589335076_3212880686_init();
    work_a_1911451838_1181938964_init();
    work_a_1956806361_1181938964_init();
    work_a_0010280320_3212880686_init();
    work_a_2733437137_1878664202_init();
    work_a_2765650605_1878664202_init();
    work_a_3488206560_1181938964_init();
    work_a_0378183980_3212880686_init();
    work_a_3853510154_3212880686_init();
    work_a_3496489469_1878664202_init();
    work_a_2797894087_1181938964_init();
    work_a_1872617720_2372691052_init();


    xsi_register_tops("work_a_1872617720_2372691052");

    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
