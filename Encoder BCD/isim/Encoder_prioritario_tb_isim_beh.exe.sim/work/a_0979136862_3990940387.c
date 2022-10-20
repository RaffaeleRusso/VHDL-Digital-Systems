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
static const char *ng0 = "/home/so/Scrivania/esercizio_2/encoder_10_4.vhd";



static void work_a_0979136862_3990940387_p_0(char *t0)
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
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    int t32;
    char *t33;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;

LAB0:    t1 = (t0 + 2344U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 4266);
    t5 = xsi_mem_cmp(t2, t3, 10U);
    if (t5 == 1)
        goto LAB5;

LAB16:    t6 = (t0 + 4276);
    t8 = xsi_mem_cmp(t6, t3, 10U);
    if (t8 == 1)
        goto LAB6;

LAB17:    t9 = (t0 + 4286);
    t11 = xsi_mem_cmp(t9, t3, 10U);
    if (t11 == 1)
        goto LAB7;

LAB18:    t12 = (t0 + 4296);
    t14 = xsi_mem_cmp(t12, t3, 10U);
    if (t14 == 1)
        goto LAB8;

LAB19:    t15 = (t0 + 4306);
    t17 = xsi_mem_cmp(t15, t3, 10U);
    if (t17 == 1)
        goto LAB9;

LAB20:    t18 = (t0 + 4316);
    t20 = xsi_mem_cmp(t18, t3, 10U);
    if (t20 == 1)
        goto LAB10;

LAB21:    t21 = (t0 + 4326);
    t23 = xsi_mem_cmp(t21, t3, 10U);
    if (t23 == 1)
        goto LAB11;

LAB22:    t24 = (t0 + 4336);
    t26 = xsi_mem_cmp(t24, t3, 10U);
    if (t26 == 1)
        goto LAB12;

LAB23:    t27 = (t0 + 4346);
    t29 = xsi_mem_cmp(t27, t3, 10U);
    if (t29 == 1)
        goto LAB13;

LAB24:    t30 = (t0 + 4356);
    t32 = xsi_mem_cmp(t30, t3, 10U);
    if (t32 == 1)
        goto LAB14;

LAB25:
LAB15:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 4406);
    t4 = (t0 + 2744);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(45, ng0);

LAB29:    t2 = (t0 + 2664);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB30;

LAB1:    return;
LAB5:    xsi_set_current_line(46, ng0);
    t33 = (t0 + 4366);
    t35 = (t0 + 2744);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    memcpy(t39, t33, 4U);
    xsi_driver_first_trans_fast_port(t35);
    goto LAB4;

LAB6:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 4370);
    t4 = (t0 + 2744);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 4374);
    t4 = (t0 + 2744);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 4378);
    t4 = (t0 + 2744);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB9:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 4382);
    t4 = (t0 + 2744);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB10:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 4386);
    t4 = (t0 + 2744);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB11:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 4390);
    t4 = (t0 + 2744);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB12:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 4394);
    t4 = (t0 + 2744);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB13:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 4398);
    t4 = (t0 + 2744);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB14:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 4402);
    t4 = (t0 + 2744);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB26:;
LAB27:    t3 = (t0 + 2664);
    *((int *)t3) = 0;
    goto LAB2;

LAB28:    goto LAB27;

LAB30:    goto LAB28;

}


extern void work_a_0979136862_3990940387_init()
{
	static char *pe[] = {(void *)work_a_0979136862_3990940387_p_0};
	xsi_register_didat("work_a_0979136862_3990940387", "isim/Encoder_prioritario_tb_isim_beh.exe.sim/work/a_0979136862_3990940387.didat");
	xsi_register_executes(pe);
}
