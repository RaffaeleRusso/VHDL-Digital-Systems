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

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_2381583409_3990940387_init();
    work_a_3095988070_3212880686_init();
    work_a_0415367962_3212880686_init();
    work_a_0377007465_1181938964_init();
    work_a_1115642911_1181938964_init();
    work_a_3714126747_1181938964_init();
    work_a_1318262325_3212880686_init();
    work_a_3830602496_3212880686_init();
    work_a_1793539635_3212880686_init();
    work_a_2204450615_3212880686_init();
    work_a_0394924878_3212880686_init();
    work_a_1776397008_3212880686_init();
    work_a_0675738936_1181938964_init();
    work_a_2013025770_3212880686_init();
    work_a_0010280320_3212880686_init();
    work_a_0290344353_3990940387_init();
    work_a_1517056466_3212880686_init();
    work_a_4035376562_1181938964_init();
    work_a_2887108924_2372691052_init();


    xsi_register_tops("work_a_2887108924_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");

    return xsi_run_simulation(argc, argv);

}
