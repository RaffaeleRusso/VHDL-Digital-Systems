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
static const char *ng0 = "/home/so/Scrivania/esercizio_2/Encoder_prioritario_tb.vhd";



static void work_a_1556933020_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned int t11;

LAB0:    t1 = (t0 + 2344U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(68, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 2152);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 4598);
    t5 = (t0 + 2728);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 10U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(72, ng0);
    t3 = (5 * 1000LL);
    t2 = (t0 + 2152);
    xsi_process_wait(t2, t3);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 4608);
    t10 = 1;
    if (4U == 4U)
        goto LAB14;

LAB15:    t10 = 0;

LAB16:    if (t10 == 0)
        goto LAB12;

LAB13:    xsi_set_current_line(77, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 2152);
    xsi_process_wait(t2, t3);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    t8 = (t0 + 4612);
    xsi_report(t8, 7U, (unsigned char)3);
    goto LAB13;

LAB14:    t11 = 0;

LAB17:    if (t11 < 4U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t6 = (t4 + t11);
    t7 = (t2 + t11);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB15;

LAB19:    t11 = (t11 + 1);
    goto LAB17;

LAB20:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 4619);
    t5 = (t0 + 2728);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 10U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(80, ng0);
    t3 = (5 * 1000LL);
    t2 = (t0 + 2152);
    xsi_process_wait(t2, t3);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 4629);
    t10 = 1;
    if (4U == 4U)
        goto LAB30;

LAB31:    t10 = 0;

LAB32:    if (t10 == 0)
        goto LAB28;

LAB29:    xsi_set_current_line(85, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 2152);
    xsi_process_wait(t2, t3);

LAB38:    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB28:    t8 = (t0 + 4633);
    xsi_report(t8, 7U, (unsigned char)3);
    goto LAB29;

LAB30:    t11 = 0;

LAB33:    if (t11 < 4U)
        goto LAB34;
    else
        goto LAB32;

LAB34:    t6 = (t4 + t11);
    t7 = (t2 + t11);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB31;

LAB35:    t11 = (t11 + 1);
    goto LAB33;

LAB36:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 4640);
    t5 = (t0 + 2728);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 10U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(88, ng0);
    t3 = (5 * 1000LL);
    t2 = (t0 + 2152);
    xsi_process_wait(t2, t3);

LAB42:    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB37:    goto LAB36;

LAB39:    goto LAB37;

LAB40:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 4650);
    t10 = 1;
    if (4U == 4U)
        goto LAB46;

LAB47:    t10 = 0;

LAB48:    if (t10 == 0)
        goto LAB44;

LAB45:    xsi_set_current_line(93, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 2152);
    xsi_process_wait(t2, t3);

LAB54:    *((char **)t1) = &&LAB55;
    goto LAB1;

LAB41:    goto LAB40;

LAB43:    goto LAB41;

LAB44:    t8 = (t0 + 4654);
    xsi_report(t8, 7U, (unsigned char)3);
    goto LAB45;

LAB46:    t11 = 0;

LAB49:    if (t11 < 4U)
        goto LAB50;
    else
        goto LAB48;

LAB50:    t6 = (t4 + t11);
    t7 = (t2 + t11);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB47;

LAB51:    t11 = (t11 + 1);
    goto LAB49;

LAB52:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 4661);
    t5 = (t0 + 2728);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 10U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(96, ng0);
    t3 = (5 * 1000LL);
    t2 = (t0 + 2152);
    xsi_process_wait(t2, t3);

LAB58:    *((char **)t1) = &&LAB59;
    goto LAB1;

LAB53:    goto LAB52;

LAB55:    goto LAB53;

LAB56:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 4671);
    t10 = 1;
    if (4U == 4U)
        goto LAB62;

LAB63:    t10 = 0;

LAB64:    if (t10 == 0)
        goto LAB60;

LAB61:    xsi_set_current_line(101, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 2152);
    xsi_process_wait(t2, t3);

LAB70:    *((char **)t1) = &&LAB71;
    goto LAB1;

LAB57:    goto LAB56;

LAB59:    goto LAB57;

LAB60:    t8 = (t0 + 4675);
    xsi_report(t8, 7U, (unsigned char)3);
    goto LAB61;

LAB62:    t11 = 0;

LAB65:    if (t11 < 4U)
        goto LAB66;
    else
        goto LAB64;

LAB66:    t6 = (t4 + t11);
    t7 = (t2 + t11);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB63;

LAB67:    t11 = (t11 + 1);
    goto LAB65;

LAB68:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 4682);
    t5 = (t0 + 2728);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 10U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(104, ng0);
    t3 = (5 * 1000LL);
    t2 = (t0 + 2152);
    xsi_process_wait(t2, t3);

LAB74:    *((char **)t1) = &&LAB75;
    goto LAB1;

LAB69:    goto LAB68;

LAB71:    goto LAB69;

LAB72:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 4692);
    t10 = 1;
    if (4U == 4U)
        goto LAB78;

LAB79:    t10 = 0;

LAB80:    if (t10 == 0)
        goto LAB76;

LAB77:    xsi_set_current_line(109, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 2152);
    xsi_process_wait(t2, t3);

LAB86:    *((char **)t1) = &&LAB87;
    goto LAB1;

LAB73:    goto LAB72;

LAB75:    goto LAB73;

LAB76:    t8 = (t0 + 4696);
    xsi_report(t8, 7U, (unsigned char)3);
    goto LAB77;

LAB78:    t11 = 0;

LAB81:    if (t11 < 4U)
        goto LAB82;
    else
        goto LAB80;

LAB82:    t6 = (t4 + t11);
    t7 = (t2 + t11);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB79;

LAB83:    t11 = (t11 + 1);
    goto LAB81;

LAB84:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 4703);
    t5 = (t0 + 2728);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 10U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(112, ng0);
    t3 = (5 * 1000LL);
    t2 = (t0 + 2152);
    xsi_process_wait(t2, t3);

LAB90:    *((char **)t1) = &&LAB91;
    goto LAB1;

LAB85:    goto LAB84;

LAB87:    goto LAB85;

LAB88:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 4713);
    t10 = 1;
    if (4U == 4U)
        goto LAB94;

LAB95:    t10 = 0;

LAB96:    if (t10 == 0)
        goto LAB92;

LAB93:    xsi_set_current_line(117, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 2152);
    xsi_process_wait(t2, t3);

LAB102:    *((char **)t1) = &&LAB103;
    goto LAB1;

LAB89:    goto LAB88;

LAB91:    goto LAB89;

LAB92:    t8 = (t0 + 4717);
    xsi_report(t8, 7U, (unsigned char)3);
    goto LAB93;

LAB94:    t11 = 0;

LAB97:    if (t11 < 4U)
        goto LAB98;
    else
        goto LAB96;

LAB98:    t6 = (t4 + t11);
    t7 = (t2 + t11);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB95;

LAB99:    t11 = (t11 + 1);
    goto LAB97;

LAB100:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 4724);
    t5 = (t0 + 2728);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 10U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(120, ng0);
    t3 = (5 * 1000LL);
    t2 = (t0 + 2152);
    xsi_process_wait(t2, t3);

LAB106:    *((char **)t1) = &&LAB107;
    goto LAB1;

LAB101:    goto LAB100;

LAB103:    goto LAB101;

LAB104:    xsi_set_current_line(121, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 4734);
    t10 = 1;
    if (4U == 4U)
        goto LAB110;

LAB111:    t10 = 0;

LAB112:    if (t10 == 0)
        goto LAB108;

LAB109:    xsi_set_current_line(125, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 2152);
    xsi_process_wait(t2, t3);

LAB118:    *((char **)t1) = &&LAB119;
    goto LAB1;

LAB105:    goto LAB104;

LAB107:    goto LAB105;

LAB108:    t8 = (t0 + 4738);
    xsi_report(t8, 7U, (unsigned char)3);
    goto LAB109;

LAB110:    t11 = 0;

LAB113:    if (t11 < 4U)
        goto LAB114;
    else
        goto LAB112;

LAB114:    t6 = (t4 + t11);
    t7 = (t2 + t11);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB111;

LAB115:    t11 = (t11 + 1);
    goto LAB113;

LAB116:    xsi_set_current_line(127, ng0);
    t2 = (t0 + 4745);
    t5 = (t0 + 2728);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 10U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(128, ng0);
    t3 = (5 * 1000LL);
    t2 = (t0 + 2152);
    xsi_process_wait(t2, t3);

LAB122:    *((char **)t1) = &&LAB123;
    goto LAB1;

LAB117:    goto LAB116;

LAB119:    goto LAB117;

LAB120:    xsi_set_current_line(129, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 4755);
    t10 = 1;
    if (4U == 4U)
        goto LAB126;

LAB127:    t10 = 0;

LAB128:    if (t10 == 0)
        goto LAB124;

LAB125:    xsi_set_current_line(133, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 2152);
    xsi_process_wait(t2, t3);

LAB134:    *((char **)t1) = &&LAB135;
    goto LAB1;

LAB121:    goto LAB120;

LAB123:    goto LAB121;

LAB124:    t8 = (t0 + 4759);
    xsi_report(t8, 7U, (unsigned char)3);
    goto LAB125;

LAB126:    t11 = 0;

LAB129:    if (t11 < 4U)
        goto LAB130;
    else
        goto LAB128;

LAB130:    t6 = (t4 + t11);
    t7 = (t2 + t11);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB127;

LAB131:    t11 = (t11 + 1);
    goto LAB129;

LAB132:    xsi_set_current_line(135, ng0);
    t2 = (t0 + 4766);
    t5 = (t0 + 2728);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 10U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(136, ng0);
    t3 = (5 * 1000LL);
    t2 = (t0 + 2152);
    xsi_process_wait(t2, t3);

LAB138:    *((char **)t1) = &&LAB139;
    goto LAB1;

LAB133:    goto LAB132;

LAB135:    goto LAB133;

LAB136:    xsi_set_current_line(137, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 4776);
    t10 = 1;
    if (4U == 4U)
        goto LAB142;

LAB143:    t10 = 0;

LAB144:    if (t10 == 0)
        goto LAB140;

LAB141:    xsi_set_current_line(141, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 2152);
    xsi_process_wait(t2, t3);

LAB150:    *((char **)t1) = &&LAB151;
    goto LAB1;

LAB137:    goto LAB136;

LAB139:    goto LAB137;

LAB140:    t8 = (t0 + 4780);
    xsi_report(t8, 7U, (unsigned char)3);
    goto LAB141;

LAB142:    t11 = 0;

LAB145:    if (t11 < 4U)
        goto LAB146;
    else
        goto LAB144;

LAB146:    t6 = (t4 + t11);
    t7 = (t2 + t11);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB143;

LAB147:    t11 = (t11 + 1);
    goto LAB145;

LAB148:    xsi_set_current_line(143, ng0);
    t2 = (t0 + 4787);
    t5 = (t0 + 2728);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 10U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(144, ng0);
    t3 = (5 * 1000LL);
    t2 = (t0 + 2152);
    xsi_process_wait(t2, t3);

LAB154:    *((char **)t1) = &&LAB155;
    goto LAB1;

LAB149:    goto LAB148;

LAB151:    goto LAB149;

LAB152:    xsi_set_current_line(145, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 4797);
    t10 = 1;
    if (4U == 4U)
        goto LAB158;

LAB159:    t10 = 0;

LAB160:    if (t10 == 0)
        goto LAB156;

LAB157:    xsi_set_current_line(149, ng0);
    t3 = (10 * 1000LL);
    t2 = (t0 + 2152);
    xsi_process_wait(t2, t3);

LAB166:    *((char **)t1) = &&LAB167;
    goto LAB1;

LAB153:    goto LAB152;

LAB155:    goto LAB153;

LAB156:    t8 = (t0 + 4801);
    xsi_report(t8, 8U, (unsigned char)3);
    goto LAB157;

LAB158:    t11 = 0;

LAB161:    if (t11 < 4U)
        goto LAB162;
    else
        goto LAB160;

LAB162:    t6 = (t4 + t11);
    t7 = (t2 + t11);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB159;

LAB163:    t11 = (t11 + 1);
    goto LAB161;

LAB164:    xsi_set_current_line(151, ng0);
    t2 = (t0 + 4809);
    t5 = (t0 + 2728);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 10U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(152, ng0);
    t3 = (5 * 1000LL);
    t2 = (t0 + 2152);
    xsi_process_wait(t2, t3);

LAB170:    *((char **)t1) = &&LAB171;
    goto LAB1;

LAB165:    goto LAB164;

LAB167:    goto LAB165;

LAB168:    xsi_set_current_line(153, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 4819);
    t10 = 1;
    if (4U == 4U)
        goto LAB174;

LAB175:    t10 = 0;

LAB176:    if (t10 == 0)
        goto LAB172;

LAB173:    xsi_set_current_line(157, ng0);

LAB182:    *((char **)t1) = &&LAB183;
    goto LAB1;

LAB169:    goto LAB168;

LAB171:    goto LAB169;

LAB172:    t8 = (t0 + 4823);
    xsi_report(t8, 8U, (unsigned char)3);
    goto LAB173;

LAB174:    t11 = 0;

LAB177:    if (t11 < 4U)
        goto LAB178;
    else
        goto LAB176;

LAB178:    t6 = (t4 + t11);
    t7 = (t2 + t11);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB175;

LAB179:    t11 = (t11 + 1);
    goto LAB177;

LAB180:    goto LAB2;

LAB181:    goto LAB180;

LAB183:    goto LAB181;

}


extern void work_a_1556933020_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1556933020_2372691052_p_0};
	xsi_register_didat("work_a_1556933020_2372691052", "isim/Encoder_prioritario_tb_isim_beh.exe.sim/work/a_1556933020_2372691052.didat");
	xsi_register_executes(pe);
}
