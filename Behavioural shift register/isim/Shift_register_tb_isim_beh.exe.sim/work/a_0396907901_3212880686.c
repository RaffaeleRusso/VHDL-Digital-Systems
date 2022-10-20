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
static const char *ng0 = "/mnt/hgfs/Condivisa/esercizio4_comportamentale/Shift_register.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);


static void work_a_0396907901_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    int t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    unsigned char t18;
    unsigned char t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;

LAB0:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 2728U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t5 = (t4 == 0);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t5 = (t1 == (unsigned char)3);
    if (t5 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 992U);
    t5 = xsi_signal_has_event(t2);
    if (t5 == 1)
        goto LAB13;

LAB14:    t1 = (unsigned char)0;

LAB15:    if (t1 != 0)
        goto LAB11;

LAB12:
LAB9:    t2 = (t0 + 4520);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1192U);
    t9 = *((char **)t2);
    t2 = (t0 + 7168U);
    t10 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t9, t2);
    t11 = (t0 + 2728U);
    t12 = *((char **)t11);
    t11 = (t12 + 0);
    *((int *)t11) = t10;
    goto LAB3;

LAB5:    t2 = (t0 + 1672U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;
    goto LAB7;

LAB8:    xsi_set_current_line(54, ng0);
    t2 = xsi_get_transient_memory(4U);
    memset(t2, 0, 4U);
    t6 = t2;
    memset(t6, (unsigned char)2, 4U);
    t9 = (t0 + 4632);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 4U);
    xsi_driver_first_trans_fast(t9);
    goto LAB9;

LAB11:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 1352U);
    t9 = *((char **)t3);
    t16 = *((unsigned char *)t9);
    t17 = (t16 == (unsigned char)2);
    if (t17 == 1)
        goto LAB19;

LAB20:    t15 = (unsigned char)0;

LAB21:    if (t15 != 0)
        goto LAB16;

LAB18:    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t5 = *((unsigned char *)t3);
    t7 = (t5 == (unsigned char)3);
    if (t7 == 1)
        goto LAB24;

LAB25:    t1 = (unsigned char)0;

LAB26:    if (t1 != 0)
        goto LAB22;

LAB23:
LAB17:    goto LAB9;

LAB13:    t3 = (t0 + 1032U);
    t6 = *((char **)t3);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;
    goto LAB15;

LAB16:    xsi_set_current_line(57, ng0);
    t3 = (t0 + 1832U);
    t12 = *((char **)t3);
    t19 = *((unsigned char *)t12);
    t3 = (t0 + 4632);
    t13 = (t3 + 56U);
    t14 = *((char **)t13);
    t20 = (t14 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = t19;
    xsi_driver_first_trans_delta(t3, 0U, 1, 0LL);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t22 = (0 - 0);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t2 = (t3 + t24);
    t6 = (t0 + 4632);
    t9 = (t6 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 3U);
    xsi_driver_first_trans_delta(t6, 1U, 3U, 0LL);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2728U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t10 = (t4 - 1);
    t2 = (t0 + 2728U);
    t6 = *((char **)t2);
    t2 = (t6 + 0);
    *((int *)t2) = t10;
    goto LAB17;

LAB19:    t3 = (t0 + 2728U);
    t11 = *((char **)t3);
    t4 = *((int *)t11);
    t18 = (t4 > 0);
    t15 = t18;
    goto LAB21;

LAB22:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1832U);
    t9 = *((char **)t2);
    t15 = *((unsigned char *)t9);
    t2 = (t0 + 4632);
    t11 = (t2 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = t15;
    xsi_driver_first_trans_delta(t2, 3U, 1, 0LL);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t22 = (1 - 0);
    t23 = (t22 * 1U);
    t24 = (0 + t23);
    t2 = (t3 + t24);
    t6 = (t0 + 4632);
    t9 = (t6 + 56U);
    t11 = *((char **)t9);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 3U);
    xsi_driver_first_trans_delta(t6, 0U, 3U, 0LL);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2728U);
    t3 = *((char **)t2);
    t4 = *((int *)t3);
    t10 = (t4 - 1);
    t2 = (t0 + 2728U);
    t6 = *((char **)t2);
    t2 = (t6 + 0);
    *((int *)t2) = t10;
    goto LAB17;

LAB24:    t2 = (t0 + 2728U);
    t6 = *((char **)t2);
    t4 = *((int *)t6);
    t8 = (t4 > 0);
    t1 = t8;
    goto LAB26;

}

static void work_a_0396907901_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(68, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = (4 - 1);
    t4 = (t3 - 0);
    t5 = (t4 * 1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t1 = (t2 + t7);
    t8 = *((unsigned char *)t1);
    t9 = (t0 + 4696);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t8;
    xsi_driver_first_trans_fast_port(t9);

LAB2:    t14 = (t0 + 4536);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0396907901_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(69, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = (0 - 0);
    t4 = (t3 * 1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 4760);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 4552);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0396907901_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0396907901_3212880686_p_0,(void *)work_a_0396907901_3212880686_p_1,(void *)work_a_0396907901_3212880686_p_2};
	xsi_register_didat("work_a_0396907901_3212880686", "isim/Shift_register_tb_isim_beh.exe.sim/work/a_0396907901_3212880686.didat");
	xsi_register_executes(pe);
}
