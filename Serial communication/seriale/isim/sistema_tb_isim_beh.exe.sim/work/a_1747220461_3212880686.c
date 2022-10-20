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
static const char *ng0 = "/home/ise/vhdl/seriale_1/seriale/ButtonDebouncer.vhd";



static void work_a_1747220461_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int t15;
    int t16;
    int t17;
    static char *nl0[] = {&&LAB9, &&LAB10};

LAB0:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3464);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(32, ng0);
    t4 = (t0 + 1512U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t4 = (char *)((nl0) + t9);
    goto **((char **)t4);

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    goto LAB3;

LAB9:    xsi_set_current_line(34, ng0);
    t10 = (t0 + 3544);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB12;

LAB14:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 3608);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t2);

LAB13:    goto LAB8;

LAB10:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 2168U);
    t4 = *((char **)t2);
    t15 = *((int *)t4);
    t2 = (t0 + 2048U);
    t5 = *((char **)t2);
    t16 = *((int *)t5);
    t17 = (t16 - 1);
    t1 = (t15 == t17);
    if (t1 != 0)
        goto LAB15;

LAB17:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 2168U);
    t4 = *((char **)t2);
    t15 = *((int *)t4);
    t16 = (t15 + 1);
    t2 = (t0 + 2168U);
    t5 = *((char **)t2);
    t2 = (t5 + 0);
    *((int *)t2) = t16;
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 3608);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);

LAB16:    goto LAB8;

LAB11:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 3608);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB12:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 3608);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    goto LAB13;

LAB15:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 2168U);
    t8 = *((char **)t2);
    t2 = (t8 + 0);
    *((int *)t2) = 0;
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 3544);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(44, ng0);
    t2 = (t0 + 3608);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t8 = (t5 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast(t2);
    goto LAB16;

}


extern void work_a_1747220461_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1747220461_3212880686_p_0};
	xsi_register_didat("work_a_1747220461_3212880686", "isim/sistema_tb_isim_beh.exe.sim/work/a_1747220461_3212880686.didat");
	xsi_register_executes(pe);
}
