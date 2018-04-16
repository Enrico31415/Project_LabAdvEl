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
static const char *ng0 = "/home/mat/Documents/repos/Project_LabAdvEl/mouseTest/PS2_send.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {1, 0};
static int ng3[] = {0, 0};
static unsigned int ng4[] = {0U, 1U};
static unsigned int ng5[] = {1U, 0U};
static unsigned int ng6[] = {2U, 0U};
static int ng7[] = {11, 0};
static unsigned int ng8[] = {3U, 0U};
static unsigned int ng9[] = {4U, 0U};
static unsigned int ng10[] = {5U, 0U};
static unsigned int ng11[] = {6U, 0U};
static unsigned int ng12[] = {25U, 0U};
static unsigned int ng13[] = {200U, 0U};
static unsigned int ng14[] = {120U, 0U};
static unsigned int ng15[] = {40U, 0U};



static void Cont_97_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 6840U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 5128);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9008);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 8896);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_98_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 7088U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 5288);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 9072);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 8912);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Always_106_2(char *t0)
{
    char t9[8];
    char t22[8];
    char t61[8];
    char t62[8];
    char t63[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    int t45;
    int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    char *t75;
    char *t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    char *t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    char *t85;
    char *t86;
    int t87;
    int t88;
    unsigned int t89;

LAB0:    t1 = (t0 + 7336U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 8928);
    *((int *)t2) = 1;
    t3 = (t0 + 7368);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(106, ng0);

LAB5:    xsi_set_current_line(107, ng0);
    t4 = (t0 + 4648);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng1)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t7, 3);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 3);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng6)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 3);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng8)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 3);
    if (t8 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng9)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 3);
    if (t8 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng10)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 3);
    if (t8 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng11)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 2, t2, 3);
    if (t8 == 1)
        goto LAB19;

LAB20:
LAB21:    xsi_set_current_line(189, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 5448);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);
    xsi_set_current_line(190, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t0 + 5608);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);
    xsi_set_current_line(191, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 3688);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);
    goto LAB2;

LAB7:    xsi_set_current_line(109, ng0);

LAB22:    xsi_set_current_line(110, ng0);
    t10 = (t0 + 3688);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memset(t9, 0, 8);
    t13 = (t12 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t12);
    t17 = (t16 & t15);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB26;

LAB24:    if (*((unsigned int *)t13) == 0)
        goto LAB23;

LAB25:    t19 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t19) = 1;

LAB26:    t20 = (t0 + 1368U);
    t21 = *((char **)t20);
    t23 = *((unsigned int *)t9);
    t24 = *((unsigned int *)t21);
    t25 = (t23 & t24);
    *((unsigned int *)t22) = t25;
    t20 = (t9 + 4);
    t26 = (t21 + 4);
    t27 = (t22 + 4);
    t28 = *((unsigned int *)t20);
    t29 = *((unsigned int *)t26);
    t30 = (t28 | t29);
    *((unsigned int *)t27) = t30;
    t31 = *((unsigned int *)t27);
    t32 = (t31 != 0);
    if (t32 == 1)
        goto LAB27;

LAB28:
LAB29:    t53 = (t22 + 4);
    t54 = *((unsigned int *)t53);
    t55 = (~(t54));
    t56 = *((unsigned int *)t22);
    t57 = (t56 & t55);
    t58 = (t57 != 0);
    if (t58 > 0)
        goto LAB30;

LAB31:
LAB32:    goto LAB21;

LAB9:    xsi_set_current_line(123, ng0);

LAB35:    xsi_set_current_line(124, ng0);
    t3 = (t0 + 2008U);
    t4 = *((char **)t3);
    t3 = (t4 + 4);
    t14 = *((unsigned int *)t3);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB36;

LAB37:
LAB38:    goto LAB21;

LAB11:    xsi_set_current_line(135, ng0);

LAB40:    xsi_set_current_line(136, ng0);
    t3 = (t0 + 5448);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 1528U);
    t10 = *((char **)t7);
    memset(t9, 0, 8);
    t7 = (t10 + 4);
    t14 = *((unsigned int *)t7);
    t15 = (~(t14));
    t16 = *((unsigned int *)t10);
    t17 = (t16 & t15);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB44;

LAB42:    if (*((unsigned int *)t7) == 0)
        goto LAB41;

LAB43:    t11 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t11) = 1;

LAB44:    t23 = *((unsigned int *)t5);
    t24 = *((unsigned int *)t9);
    t25 = (t23 & t24);
    *((unsigned int *)t22) = t25;
    t12 = (t5 + 4);
    t13 = (t9 + 4);
    t19 = (t22 + 4);
    t28 = *((unsigned int *)t12);
    t29 = *((unsigned int *)t13);
    t30 = (t28 | t29);
    *((unsigned int *)t19) = t30;
    t31 = *((unsigned int *)t19);
    t32 = (t31 != 0);
    if (t32 == 1)
        goto LAB45;

LAB46:
LAB47:    t26 = (t22 + 4);
    t54 = *((unsigned int *)t26);
    t55 = (~(t54));
    t56 = *((unsigned int *)t22);
    t57 = (t56 & t55);
    t58 = (t57 != 0);
    if (t58 > 0)
        goto LAB48;

LAB49:
LAB50:    goto LAB21;

LAB13:    xsi_set_current_line(148, ng0);

LAB69:    xsi_set_current_line(149, ng0);
    t3 = (t0 + 5448);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    memset(t9, 0, 8);
    t7 = (t5 + 4);
    t14 = *((unsigned int *)t7);
    t15 = (~(t14));
    t16 = *((unsigned int *)t5);
    t17 = (t16 & t15);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB73;

LAB71:    if (*((unsigned int *)t7) == 0)
        goto LAB70;

LAB72:    t10 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t10) = 1;

LAB73:    t11 = (t0 + 1528U);
    t12 = *((char **)t11);
    t23 = *((unsigned int *)t9);
    t24 = *((unsigned int *)t12);
    t25 = (t23 & t24);
    *((unsigned int *)t22) = t25;
    t11 = (t9 + 4);
    t13 = (t12 + 4);
    t19 = (t22 + 4);
    t28 = *((unsigned int *)t11);
    t29 = *((unsigned int *)t13);
    t30 = (t28 | t29);
    *((unsigned int *)t19) = t30;
    t31 = *((unsigned int *)t19);
    t32 = (t31 != 0);
    if (t32 == 1)
        goto LAB74;

LAB75:
LAB76:    t26 = (t22 + 4);
    t54 = *((unsigned int *)t26);
    t55 = (~(t54));
    t56 = *((unsigned int *)t22);
    t57 = (t56 & t55);
    t58 = (t57 != 0);
    if (t58 > 0)
        goto LAB77;

LAB78:
LAB79:    xsi_set_current_line(152, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t14 = *((unsigned int *)t2);
    t15 = (~(t14));
    t16 = *((unsigned int *)t3);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB81;

LAB82:
LAB83:    goto LAB21;

LAB15:    xsi_set_current_line(159, ng0);

LAB85:    xsi_set_current_line(160, ng0);
    t3 = (t0 + 5448);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t7 = (t0 + 1528U);
    t10 = *((char **)t7);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t10);
    t16 = (t14 & t15);
    *((unsigned int *)t9) = t16;
    t7 = (t5 + 4);
    t11 = (t10 + 4);
    t12 = (t9 + 4);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t11);
    t23 = (t17 | t18);
    *((unsigned int *)t12) = t23;
    t24 = *((unsigned int *)t12);
    t25 = (t24 != 0);
    if (t25 == 1)
        goto LAB86;

LAB87:
LAB88:    t20 = (t9 + 4);
    t48 = *((unsigned int *)t20);
    t49 = (~(t48));
    t50 = *((unsigned int *)t9);
    t51 = (t50 & t49);
    t52 = (t51 != 0);
    if (t52 > 0)
        goto LAB89;

LAB90:
LAB91:    goto LAB21;

LAB17:    xsi_set_current_line(169, ng0);

LAB106:    xsi_set_current_line(170, ng0);
    t3 = (t0 + 2328U);
    t4 = *((char **)t3);
    t3 = (t4 + 4);
    t14 = *((unsigned int *)t3);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB107;

LAB108:
LAB109:    goto LAB21;

LAB19:    xsi_set_current_line(178, ng0);

LAB111:    xsi_set_current_line(179, ng0);
    t3 = (t0 + 2488U);
    t4 = *((char **)t3);
    t3 = (t0 + 1528U);
    t5 = *((char **)t3);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t5);
    t16 = (t14 & t15);
    *((unsigned int *)t9) = t16;
    t3 = (t4 + 4);
    t7 = (t5 + 4);
    t10 = (t9 + 4);
    t17 = *((unsigned int *)t3);
    t18 = *((unsigned int *)t7);
    t23 = (t17 | t18);
    *((unsigned int *)t10) = t23;
    t24 = *((unsigned int *)t10);
    t25 = (t24 != 0);
    if (t25 == 1)
        goto LAB112;

LAB113:
LAB114:    t13 = (t0 + 1688U);
    t19 = *((char **)t13);
    t48 = *((unsigned int *)t9);
    t49 = *((unsigned int *)t19);
    t50 = (t48 & t49);
    *((unsigned int *)t22) = t50;
    t13 = (t9 + 4);
    t20 = (t19 + 4);
    t21 = (t22 + 4);
    t51 = *((unsigned int *)t13);
    t52 = *((unsigned int *)t20);
    t54 = (t51 | t52);
    *((unsigned int *)t21) = t54;
    t55 = *((unsigned int *)t21);
    t56 = (t55 != 0);
    if (t56 == 1)
        goto LAB115;

LAB116:
LAB117:    t35 = (t22 + 4);
    t81 = *((unsigned int *)t35);
    t82 = (~(t81));
    t83 = *((unsigned int *)t22);
    t84 = (t83 & t82);
    t89 = (t84 != 0);
    if (t89 > 0)
        goto LAB118;

LAB119:
LAB120:    goto LAB21;

LAB23:    *((unsigned int *)t9) = 1;
    goto LAB26;

LAB27:    t33 = *((unsigned int *)t22);
    t34 = *((unsigned int *)t27);
    *((unsigned int *)t22) = (t33 | t34);
    t35 = (t9 + 4);
    t36 = (t21 + 4);
    t37 = *((unsigned int *)t9);
    t38 = (~(t37));
    t39 = *((unsigned int *)t35);
    t40 = (~(t39));
    t41 = *((unsigned int *)t21);
    t42 = (~(t41));
    t43 = *((unsigned int *)t36);
    t44 = (~(t43));
    t45 = (t38 & t40);
    t46 = (t42 & t44);
    t47 = (~(t45));
    t48 = (~(t46));
    t49 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t49 & t47);
    t50 = *((unsigned int *)t27);
    *((unsigned int *)t27) = (t50 & t48);
    t51 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t51 & t47);
    t52 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t52 & t48);
    goto LAB29;

LAB30:    xsi_set_current_line(110, ng0);

LAB33:    xsi_set_current_line(111, ng0);
    t59 = ((char*)((ng2)));
    t60 = (t0 + 4008);
    xsi_vlogvar_assign_value(t60, t59, 0, 0, 1);
    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3848);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 7144);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB34;
    goto LAB1;

LAB34:    xsi_set_current_line(113, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 3848);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(114, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5128);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(115, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 5288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(116, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 4648);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 5768);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 11);
    xsi_set_current_line(118, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(119, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 4968);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB32;

LAB36:    xsi_set_current_line(124, ng0);

LAB39:    xsi_set_current_line(125, ng0);
    t5 = ((char*)((ng3)));
    t7 = (t0 + 4008);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 1);
    xsi_set_current_line(126, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 5128);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(127, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 5288);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(128, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 4648);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB38;

LAB41:    *((unsigned int *)t9) = 1;
    goto LAB44;

LAB45:    t33 = *((unsigned int *)t22);
    t34 = *((unsigned int *)t19);
    *((unsigned int *)t22) = (t33 | t34);
    t20 = (t5 + 4);
    t21 = (t9 + 4);
    t37 = *((unsigned int *)t5);
    t38 = (~(t37));
    t39 = *((unsigned int *)t20);
    t40 = (~(t39));
    t41 = *((unsigned int *)t9);
    t42 = (~(t41));
    t43 = *((unsigned int *)t21);
    t44 = (~(t43));
    t45 = (t38 & t40);
    t46 = (t42 & t44);
    t47 = (~(t45));
    t48 = (~(t46));
    t49 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t49 & t47);
    t50 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t50 & t48);
    t51 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t51 & t47);
    t52 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t52 & t48);
    goto LAB47;

LAB48:    xsi_set_current_line(136, ng0);

LAB51:    xsi_set_current_line(137, ng0);
    t27 = (t0 + 5768);
    t35 = (t27 + 56U);
    t36 = *((char **)t35);
    memset(t63, 0, 8);
    t53 = (t63 + 4);
    t59 = (t36 + 4);
    t64 = *((unsigned int *)t36);
    t65 = (t64 >> 0);
    t66 = (t65 & 1);
    *((unsigned int *)t63) = t66;
    t67 = *((unsigned int *)t59);
    t68 = (t67 >> 0);
    t69 = (t68 & 1);
    *((unsigned int *)t53) = t69;
    memset(t62, 0, 8);
    t60 = (t63 + 4);
    t70 = *((unsigned int *)t60);
    t71 = (~(t70));
    t72 = *((unsigned int *)t63);
    t73 = (t72 & t71);
    t74 = (t73 & 1U);
    if (t74 != 0)
        goto LAB52;

LAB53:    if (*((unsigned int *)t60) != 0)
        goto LAB54;

LAB55:    t76 = (t62 + 4);
    t77 = *((unsigned int *)t62);
    t78 = *((unsigned int *)t76);
    t79 = (t77 || t78);
    if (t79 > 0)
        goto LAB56;

LAB57:    t81 = *((unsigned int *)t62);
    t82 = (~(t81));
    t83 = *((unsigned int *)t76);
    t84 = (t82 || t83);
    if (t84 > 0)
        goto LAB58;

LAB59:    if (*((unsigned int *)t76) > 0)
        goto LAB60;

LAB61:    if (*((unsigned int *)t62) > 0)
        goto LAB62;

LAB63:    memcpy(t61, t85, 8);

LAB64:    t86 = (t0 + 5288);
    xsi_vlogvar_assign_value(t86, t61, 0, 0, 1);
    xsi_set_current_line(138, ng0);
    t2 = (t0 + 5768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_rshift(t9, 11, t4, 11, t5, 32);
    t7 = (t0 + 5768);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 11);
    xsi_set_current_line(139, ng0);
    t2 = (t0 + 5928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng2)));
    memset(t9, 0, 8);
    xsi_vlog_signed_add(t9, 32, t4, 32, t5, 32);
    t7 = (t0 + 5928);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 32);
    xsi_set_current_line(140, ng0);
    t2 = (t0 + 5928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    memset(t9, 0, 8);
    xsi_vlog_signed_greatereq(t9, 32, t4, 32, t5, 32);
    t7 = (t9 + 4);
    t14 = *((unsigned int *)t7);
    t15 = (~(t14));
    t16 = *((unsigned int *)t9);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB65;

LAB66:
LAB67:    goto LAB50;

LAB52:    *((unsigned int *)t62) = 1;
    goto LAB55;

LAB54:    t75 = (t62 + 4);
    *((unsigned int *)t62) = 1;
    *((unsigned int *)t75) = 1;
    goto LAB55;

LAB56:    t80 = ((char*)((ng4)));
    goto LAB57;

LAB58:    t85 = ((char*)((ng3)));
    goto LAB59;

LAB60:    xsi_vlog_unsigned_bit_combine(t61, 32, t80, 32, t85, 32);
    goto LAB64;

LAB62:    memcpy(t61, t80, 8);
    goto LAB64;

LAB65:    xsi_set_current_line(140, ng0);

LAB68:    xsi_set_current_line(141, ng0);
    t10 = ((char*)((ng8)));
    t11 = (t0 + 4648);
    xsi_vlogvar_assign_value(t11, t10, 0, 0, 2);
    goto LAB67;

LAB70:    *((unsigned int *)t9) = 1;
    goto LAB73;

LAB74:    t33 = *((unsigned int *)t22);
    t34 = *((unsigned int *)t19);
    *((unsigned int *)t22) = (t33 | t34);
    t20 = (t9 + 4);
    t21 = (t12 + 4);
    t37 = *((unsigned int *)t9);
    t38 = (~(t37));
    t39 = *((unsigned int *)t20);
    t40 = (~(t39));
    t41 = *((unsigned int *)t12);
    t42 = (~(t41));
    t43 = *((unsigned int *)t21);
    t44 = (~(t43));
    t45 = (t38 & t40);
    t46 = (t42 & t44);
    t47 = (~(t45));
    t48 = (~(t46));
    t49 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t49 & t47);
    t50 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t50 & t48);
    t51 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t51 & t47);
    t52 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t52 & t48);
    goto LAB76;

LAB77:    xsi_set_current_line(149, ng0);

LAB80:    xsi_set_current_line(150, ng0);
    t27 = ((char*)((ng2)));
    t35 = (t0 + 4168);
    xsi_vlogvar_assign_value(t35, t27, 0, 0, 1);
    goto LAB79;

LAB81:    xsi_set_current_line(152, ng0);

LAB84:    xsi_set_current_line(153, ng0);
    t4 = ((char*)((ng3)));
    t5 = (t0 + 4168);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(154, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 4648);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB83;

LAB86:    t28 = *((unsigned int *)t9);
    t29 = *((unsigned int *)t12);
    *((unsigned int *)t9) = (t28 | t29);
    t13 = (t5 + 4);
    t19 = (t10 + 4);
    t30 = *((unsigned int *)t5);
    t31 = (~(t30));
    t32 = *((unsigned int *)t13);
    t33 = (~(t32));
    t34 = *((unsigned int *)t10);
    t37 = (~(t34));
    t38 = *((unsigned int *)t19);
    t39 = (~(t38));
    t45 = (t31 & t33);
    t46 = (t37 & t39);
    t40 = (~(t45));
    t41 = (~(t46));
    t42 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t42 & t40);
    t43 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t43 & t41);
    t44 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t44 & t40);
    t47 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t47 & t41);
    goto LAB88;

LAB89:    xsi_set_current_line(160, ng0);

LAB92:    xsi_set_current_line(161, ng0);
    t21 = (t0 + 1688U);
    t26 = *((char **)t21);
    memset(t61, 0, 8);
    t21 = (t26 + 4);
    t54 = *((unsigned int *)t21);
    t55 = (~(t54));
    t56 = *((unsigned int *)t26);
    t57 = (t56 & t55);
    t58 = (t57 & 1U);
    if (t58 != 0)
        goto LAB93;

LAB94:    if (*((unsigned int *)t21) != 0)
        goto LAB95;

LAB96:    t35 = (t61 + 4);
    t64 = *((unsigned int *)t61);
    t65 = *((unsigned int *)t35);
    t66 = (t64 || t65);
    if (t66 > 0)
        goto LAB97;

LAB98:    t67 = *((unsigned int *)t61);
    t68 = (~(t67));
    t69 = *((unsigned int *)t35);
    t70 = (t68 || t69);
    if (t70 > 0)
        goto LAB99;

LAB100:    if (*((unsigned int *)t35) > 0)
        goto LAB101;

LAB102:    if (*((unsigned int *)t61) > 0)
        goto LAB103;

LAB104:    memcpy(t22, t53, 8);

LAB105:    t59 = (t0 + 4808);
    xsi_vlogvar_assign_value(t59, t22, 0, 0, 1);
    xsi_set_current_line(162, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4328);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(163, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 4648);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB91;

LAB93:    *((unsigned int *)t61) = 1;
    goto LAB96;

LAB95:    t27 = (t61 + 4);
    *((unsigned int *)t61) = 1;
    *((unsigned int *)t27) = 1;
    goto LAB96;

LAB97:    t36 = ((char*)((ng2)));
    goto LAB98;

LAB99:    t53 = ((char*)((ng3)));
    goto LAB100;

LAB101:    xsi_vlog_unsigned_bit_combine(t22, 32, t36, 32, t53, 32);
    goto LAB105;

LAB103:    memcpy(t22, t36, 8);
    goto LAB105;

LAB107:    xsi_set_current_line(170, ng0);

LAB110:    xsi_set_current_line(171, ng0);
    t5 = ((char*)((ng3)));
    t7 = (t0 + 4328);
    xsi_vlogvar_assign_value(t7, t5, 0, 0, 1);
    xsi_set_current_line(172, ng0);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 4648);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(173, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4488);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB109;

LAB112:    t28 = *((unsigned int *)t9);
    t29 = *((unsigned int *)t10);
    *((unsigned int *)t9) = (t28 | t29);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t30 = *((unsigned int *)t4);
    t31 = (~(t30));
    t32 = *((unsigned int *)t11);
    t33 = (~(t32));
    t34 = *((unsigned int *)t5);
    t37 = (~(t34));
    t38 = *((unsigned int *)t12);
    t39 = (~(t38));
    t45 = (t31 & t33);
    t46 = (t37 & t39);
    t40 = (~(t45));
    t41 = (~(t46));
    t42 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t42 & t40);
    t43 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t43 & t41);
    t44 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t44 & t40);
    t47 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t47 & t41);
    goto LAB114;

LAB115:    t57 = *((unsigned int *)t22);
    t58 = *((unsigned int *)t21);
    *((unsigned int *)t22) = (t57 | t58);
    t26 = (t9 + 4);
    t27 = (t19 + 4);
    t64 = *((unsigned int *)t9);
    t65 = (~(t64));
    t66 = *((unsigned int *)t26);
    t67 = (~(t66));
    t68 = *((unsigned int *)t19);
    t69 = (~(t68));
    t70 = *((unsigned int *)t27);
    t71 = (~(t70));
    t87 = (t65 & t67);
    t88 = (t69 & t71);
    t72 = (~(t87));
    t73 = (~(t88));
    t74 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t74 & t72);
    t77 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t77 & t73);
    t78 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t78 & t72);
    t79 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t79 & t73);
    goto LAB117;

LAB118:    xsi_set_current_line(179, ng0);

LAB121:    xsi_set_current_line(180, ng0);
    t36 = ((char*)((ng3)));
    t53 = (t0 + 4488);
    xsi_vlogvar_assign_value(t53, t36, 0, 0, 1);
    xsi_set_current_line(181, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 4648);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(182, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 4968);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB120;

}

static void implSig1_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 7584U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng12)));
    t3 = (t0 + 9136);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 255U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 7);

LAB1:    return;
}

static void implSig2_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 7832U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng13)));
    t3 = (t0 + 9200);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 255U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 7);

LAB1:    return;
}

static void implSig3_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 8080U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng10)));
    t3 = (t0 + 9264);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 255U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 7);

LAB1:    return;
}

static void implSig4_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 8328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng14)));
    t3 = (t0 + 9328);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 255U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 7);

LAB1:    return;
}

static void implSig5_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 8576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng15)));
    t3 = (t0 + 9392);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 255U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 7);

LAB1:    return;
}


extern void work_m_06447495627542123670_3778543668_init()
{
	static char *pe[] = {(void *)Cont_97_0,(void *)Cont_98_1,(void *)Always_106_2,(void *)implSig1_execute,(void *)implSig2_execute,(void *)implSig3_execute,(void *)implSig4_execute,(void *)implSig5_execute};
	xsi_register_didat("work_m_06447495627542123670_3778543668", "isim/battleship_isim_beh.exe.sim/work/m_06447495627542123670_3778543668.didat");
	xsi_register_executes(pe);
}
