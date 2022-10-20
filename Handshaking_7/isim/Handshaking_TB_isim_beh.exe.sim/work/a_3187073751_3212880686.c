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
static const char *ng0 = "/home/vincenzo/Scrivania/Progetti_Xilinx/Esercizi/Handshaking_7/RAM.vhd";
extern char *IEEE_P_3620187407;

int ieee_p_3620187407_sub_5109402382352621412_3965413181(char *, char *, char *);


static void work_a_3187073751_3212880686_p_0(char *t0)
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
    unsigned char t10;
    char *t11;
    unsigned int t12;
    char *t13;
    unsigned char t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    int t21;
    int t22;
    unsigned int t23;

LAB0:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3864);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(62, ng0);
    t4 = (t0 + 1192U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB13;

LAB14:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(63, ng0);
    t4 = xsi_get_transient_memory(32U);
    memset(t4, 0, 32U);
    t11 = t4;
    t12 = (4U * 1U);
    t13 = t11;
    memset(t13, (unsigned char)2, t12);
    t14 = (t12 != 0);
    if (t14 == 1)
        goto LAB11;

LAB12:    t16 = (t0 + 3944);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t4, 32U);
    xsi_driver_first_trans_fast(t16);
    goto LAB9;

LAB11:    t15 = (32U / t12);
    xsi_mem_set_data(t11, t11, t12, t15);
    goto LAB12;

LAB13:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB15;

LAB17:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t2 = (t0 + 6632U);
    t21 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t5, t2);
    t22 = (t21 - 0);
    t12 = (t22 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t21);
    t15 = (4U * t12);
    t23 = (0 + t15);
    t8 = (t4 + t23);
    t11 = (t0 + 4008);
    t13 = (t11 + 56U);
    t16 = *((char **)t13);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t8, 4U);
    xsi_driver_first_trans_fast_port(t11);

LAB16:    goto LAB9;

LAB15:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1832U);
    t8 = *((char **)t2);
    t2 = (t0 + 1672U);
    t11 = *((char **)t2);
    t2 = (t0 + 6632U);
    t21 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t11, t2);
    t22 = (t21 - 0);
    t12 = (t22 * 1);
    t15 = (4U * t12);
    t23 = (0U + t15);
    t13 = (t0 + 3944);
    t16 = (t13 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t8, 4U);
    xsi_driver_first_trans_delta(t13, t23, 4U, 0LL);
    goto LAB16;

}


extern void work_a_3187073751_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3187073751_3212880686_p_0};
	xsi_register_didat("work_a_3187073751_3212880686", "isim/Handshaking_TB_isim_beh.exe.sim/work/a_3187073751_3212880686.didat");
	xsi_register_executes(pe);
}
