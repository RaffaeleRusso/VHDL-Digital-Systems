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
static const char *ng0 = "/home/ale/Scrivania/Blow_Fish/Counter_address.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1006216973935652998_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_1006216973935724872_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0010280320_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(34, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 4128);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 5U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4032);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0010280320_3212880686_p_1(char *t0)
{
    char t20[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4048);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(39, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB8;

LAB9:    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB12;

LAB13:    t2 = (unsigned char)0;

LAB14:    if (t2 != 0)
        goto LAB10;

LAB11:    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB26;

LAB27:    t2 = (unsigned char)0;

LAB28:    if (t2 != 0)
        goto LAB24;

LAB25:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(40, ng0);
    t3 = (t0 + 4192);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(41, ng0);
    t1 = xsi_get_transient_memory(5U);
    memset(t1, 0, 5U);
    t3 = t1;
    memset(t3, (unsigned char)2, 5U);
    t4 = (t0 + 4256);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 5U);
    xsi_driver_first_trans_fast(t4);
    goto LAB6;

LAB8:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1832U);
    t4 = *((char **)t1);
    t1 = (t0 + 4256);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 5U);
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB10:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 2312U);
    t7 = *((char **)t1);
    t1 = (t0 + 6335);
    t13 = 1;
    if (5U == 5U)
        goto LAB18;

LAB19:    t13 = 0;

LAB20:    if (t13 != 0)
        goto LAB15;

LAB17:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 6296U);
    t4 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t20, t3, t1, 1);
    t7 = (t0 + 4256);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t15 = *((char **)t10);
    memcpy(t15, t4, 5U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 4192);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB16:    goto LAB6;

LAB12:    t1 = (t0 + 1512U);
    t4 = *((char **)t1);
    t11 = *((unsigned char *)t4);
    t12 = (t11 == (unsigned char)2);
    t2 = t12;
    goto LAB14;

LAB15:    xsi_set_current_line(48, ng0);
    t15 = (t0 + 4192);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t15);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 6340);
    t4 = (t0 + 4256);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 5U);
    xsi_driver_first_trans_fast(t4);
    goto LAB16;

LAB18:    t14 = 0;

LAB21:    if (t14 < 5U)
        goto LAB22;
    else
        goto LAB20;

LAB22:    t9 = (t7 + t14);
    t10 = (t1 + t14);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB19;

LAB23:    t14 = (t14 + 1);
    goto LAB21;

LAB24:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 2312U);
    t7 = *((char **)t1);
    t1 = (t0 + 6345);
    t13 = 1;
    if (5U == 5U)
        goto LAB32;

LAB33:    t13 = 0;

LAB34:    if (t13 != 0)
        goto LAB29;

LAB31:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 6296U);
    t4 = ieee_p_1242562249_sub_1006216973935724872_1035706684(IEEE_P_1242562249, t20, t3, t1, 1);
    t7 = (t0 + 4256);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t15 = *((char **)t10);
    memcpy(t15, t4, 5U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 4192);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB30:    goto LAB6;

LAB26:    t1 = (t0 + 1512U);
    t4 = *((char **)t1);
    t11 = *((unsigned char *)t4);
    t12 = (t11 == (unsigned char)3);
    t2 = t12;
    goto LAB28;

LAB29:    xsi_set_current_line(59, ng0);
    t15 = (t0 + 4192);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t15);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 6350);
    t4 = (t0 + 4256);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 5U);
    xsi_driver_first_trans_fast(t4);
    goto LAB30;

LAB32:    t14 = 0;

LAB35:    if (t14 < 5U)
        goto LAB36;
    else
        goto LAB34;

LAB36:    t9 = (t7 + t14);
    t10 = (t1 + t14);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB33;

LAB37:    t14 = (t14 + 1);
    goto LAB35;

}


extern void work_a_0010280320_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0010280320_3212880686_p_0,(void *)work_a_0010280320_3212880686_p_1};
	xsi_register_didat("work_a_0010280320_3212880686", "isim/BlowFish_Decr_TB_isim_beh.exe.sim/work/a_0010280320_3212880686.didat");
	xsi_register_executes(pe);
}
