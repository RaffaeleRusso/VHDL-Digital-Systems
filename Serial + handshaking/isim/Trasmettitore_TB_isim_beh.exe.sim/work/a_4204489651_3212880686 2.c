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
static const char *ng0 = "/home/vincenzo/Scrivania/Progetti_Xilinx/Esercizi/Seriale_es_2/ROM.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
int ieee_p_3620187407_sub_5109402382352621412_3965413181(char *, char *, char *);


static void work_a_4204489651_3212880686_p_0(char *t0)
{
    char t9[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned char t23;
    unsigned char t24;

LAB0:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3464);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(67, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB10;

LAB11:    t1 = (t0 + 1832U);
    t4 = *((char **)t1);
    t23 = *((unsigned char *)t4);
    t24 = (t23 == (unsigned char)3);
    t2 = t24;

LAB12:    if (t2 != 0)
        goto LAB8;

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(68, ng0);
    t3 = (t0 + 1992U);
    t7 = *((char **)t3);
    t3 = (t0 + 6111);
    t10 = (t9 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 3;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t12 = (3 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t13;
    t14 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t3, t9);
    t15 = (t14 - 0);
    t13 = (t15 * 1);
    t16 = (8U * t13);
    t17 = (0 + t16);
    t11 = (t7 + t17);
    t18 = (t0 + 3544);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t11, 8U);
    xsi_driver_first_trans_fast_port(t18);
    goto LAB6;

LAB8:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 3608);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t1 = (t0 + 1512U);
    t4 = *((char **)t1);
    t1 = (t0 + 5968U);
    t12 = ieee_p_3620187407_sub_5109402382352621412_3965413181(IEEE_P_3620187407, t4, t1);
    t14 = (t12 - 0);
    t13 = (t14 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t12);
    t16 = (8U * t13);
    t17 = (0 + t16);
    t7 = (t3 + t17);
    t8 = (t0 + 3544);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    t18 = (t11 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t7, 8U);
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 5968U);
    t4 = (t0 + 6115);
    t8 = (t9 + 0U);
    t10 = (t8 + 0U);
    *((int *)t10) = 0;
    t10 = (t8 + 4U);
    *((int *)t10) = 3;
    t10 = (t8 + 8U);
    *((int *)t10) = 1;
    t12 = (3 - 0);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t10 = (t8 + 12U);
    *((unsigned int *)t10) = t13;
    t2 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t1, t4, t9);
    if (t2 != 0)
        goto LAB13;

LAB15:
LAB14:    goto LAB6;

LAB10:    t2 = (unsigned char)1;
    goto LAB12;

LAB13:    xsi_set_current_line(73, ng0);
    t10 = (t0 + 3608);
    t11 = (t10 + 56U);
    t18 = *((char **)t11);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)2;
    xsi_driver_first_trans_fast(t10);
    goto LAB14;

}


extern void work_a_4204489651_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4204489651_3212880686_p_0};
	xsi_register_didat("work_a_4204489651_3212880686", "isim/Trasmettitore_TB_isim_beh.exe.sim/work/a_4204489651_3212880686.didat");
	xsi_register_executes(pe);
}
