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
char *IEEE_P_1242562249;
char *IEEE_P_3499444699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    work_a_2179349941_1181938964_init();
    ieee_p_1242562249_init();
    work_a_0632563593_1516540902_init();
    work_a_0640664752_1878664202_init();
    work_a_2348593010_1181938964_init();
    work_a_3155542818_1181938964_init();
    work_a_1477225962_1878664202_init();
    work_a_4144200254_3212880686_init();
    work_a_2241396711_1181938964_init();
    work_a_0353193995_1181938964_init();
    work_a_2566447101_1181938964_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_4204489651_3212880686_init();
    work_a_3037855979_1878664202_init();
    work_a_3708646937_1181938964_init();
    work_a_0328429073_1181938964_init();
    work_a_1421420804_1181938964_init();
    work_a_3558071519_2372691052_init();


    xsi_register_tops("work_a_3558071519_2372691052");

    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");

    return xsi_run_simulation(argc, argv);

}
