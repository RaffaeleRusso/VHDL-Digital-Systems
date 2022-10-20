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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/vincenzo/Scrivania/Progetti_Xilinx/Es_pronti/Esercizio_1/MUX_4_1.vhd";



static void work_a_1492497583_3990940387_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    char *t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    t1 = (t0 + 2504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 4630);
    t5 = xsi_mem_cmp(t2, t3, 2U);
    if (t5 == 1)
        goto LAB5;

LAB10:    t6 = (t0 + 4632);
    t8 = xsi_mem_cmp(t6, t3, 2U);
    if (t8 == 1)
        goto LAB6;

LAB11:    t9 = (t0 + 4634);
    t11 = xsi_mem_cmp(t9, t3, 2U);
    if (t11 == 1)
        goto LAB7;

LAB12:    t12 = (t0 + 4636);
    t14 = xsi_mem_cmp(t12, t3, 2U);
    if (t14 == 1)
        goto LAB8;

LAB13:
LAB9:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 2904);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)8;
    xsi_driver_first_trans_fast_port(t2);

LAB4:    xsi_set_current_line(81, ng0);

LAB17:    t2 = (t0 + 2824);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB18;

LAB1:    return;
LAB5:    xsi_set_current_line(83, ng0);
    t15 = (t0 + 1032U);
    t16 = *((char **)t15);
    t17 = (0 - 3);
    t18 = (t17 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t15 = (t16 + t20);
    t21 = *((unsigned char *)t15);
    t22 = (t0 + 2904);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    *((unsigned char *)t26) = t21;
    xsi_driver_first_trans_fast_port(t22);
    goto LAB4;

LAB6:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t5 = (1 - 3);
    t18 = (t5 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t2 = (t3 + t20);
    t21 = *((unsigned char *)t2);
    t4 = (t0 + 2904);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t21;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t5 = (2 - 3);
    t18 = (t5 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t2 = (t3 + t20);
    t21 = *((unsigned char *)t2);
    t4 = (t0 + 2904);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t21;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t5 = (3 - 3);
    t18 = (t5 * -1);
    t19 = (1U * t18);
    t20 = (0 + t19);
    t2 = (t3 + t20);
    t21 = *((unsigned char *)t2);
    t4 = (t0 + 2904);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t21;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB14:;
LAB15:    t3 = (t0 + 2824);
    *((int *)t3) = 0;
    goto LAB2;

LAB16:    goto LAB15;

LAB18:    goto LAB16;

}


extern void work_a_1492497583_3990940387_init()
{
	static char *pe[] = {(void *)work_a_1492497583_3990940387_p_0};
	xsi_register_didat("work_a_1492497583_3990940387", "isim/rete_intercon_decoder_Tb_isim_beh.exe.sim/work/a_1492497583_3990940387.didat");
	xsi_register_executes(pe);
}
