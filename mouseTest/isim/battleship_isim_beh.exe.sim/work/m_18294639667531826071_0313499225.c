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
static const char *ng0 = "/home/mat/Documents/repos/Project_LabAdvEl/mouseTest/module_synchroCounter_8_bit_sr.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {1, 0};



static void Always_28_0(char *t0)
{
    char t4[8];
    char t17[8];
    char t57[8];
    char t58[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    int t40;
    int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t55;
    char *t56;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    char *t69;

LAB0:    t1 = (t0 + 3640U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 3960);
    *((int *)t2) = 1;
    t3 = (t0 + 3672);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(28, ng0);

LAB5:    xsi_set_current_line(29, ng0);
    t5 = (t0 + 2728);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t4, 0, 8);
    t8 = (t7 + 4);
    t9 = *((unsigned int *)t8);
    t10 = (~(t9));
    t11 = *((unsigned int *)t7);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t8) == 0)
        goto LAB6;

LAB8:    t14 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t14) = 1;

LAB9:    t15 = (t0 + 1528U);
    t16 = *((char **)t15);
    t18 = *((unsigned int *)t4);
    t19 = *((unsigned int *)t16);
    t20 = (t18 & t19);
    *((unsigned int *)t17) = t20;
    t15 = (t4 + 4);
    t21 = (t16 + 4);
    t22 = (t17 + 4);
    t23 = *((unsigned int *)t15);
    t24 = *((unsigned int *)t21);
    t25 = (t23 | t24);
    *((unsigned int *)t22) = t25;
    t26 = *((unsigned int *)t22);
    t27 = (t26 != 0);
    if (t27 == 1)
        goto LAB10;

LAB11:
LAB12:    t48 = (t17 + 4);
    t49 = *((unsigned int *)t48);
    t50 = (~(t49));
    t51 = *((unsigned int *)t17);
    t52 = (t51 & t50);
    t53 = (t52 != 0);
    if (t53 > 0)
        goto LAB13;

LAB14:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB17;

LAB18:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    t9 = *((unsigned int *)t6);
    t10 = (~(t9));
    t11 = *((unsigned int *)t5);
    t12 = (t11 & t10);
    t13 = (t12 & 1U);
    if (t13 != 0)
        goto LAB24;

LAB22:    if (*((unsigned int *)t6) == 0)
        goto LAB21;

LAB23:    t7 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t7) = 1;

LAB24:    t8 = (t0 + 1208U);
    t14 = *((char **)t8);
    t18 = *((unsigned int *)t4);
    t19 = *((unsigned int *)t14);
    t20 = (t18 & t19);
    *((unsigned int *)t17) = t20;
    t8 = (t4 + 4);
    t15 = (t14 + 4);
    t16 = (t17 + 4);
    t23 = *((unsigned int *)t8);
    t24 = *((unsigned int *)t15);
    t25 = (t23 | t24);
    *((unsigned int *)t16) = t25;
    t26 = *((unsigned int *)t16);
    t27 = (t26 != 0);
    if (t27 == 1)
        goto LAB25;

LAB26:
LAB27:    t30 = (t17 + 4);
    t49 = *((unsigned int *)t30);
    t50 = (~(t49));
    t51 = *((unsigned int *)t17);
    t52 = (t51 & t50);
    t53 = (t52 != 0);
    if (t53 > 0)
        goto LAB28;

LAB29:
LAB30:
LAB19:
LAB15:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 2568);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 2728);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);
    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    t28 = *((unsigned int *)t17);
    t29 = *((unsigned int *)t22);
    *((unsigned int *)t17) = (t28 | t29);
    t30 = (t4 + 4);
    t31 = (t16 + 4);
    t32 = *((unsigned int *)t4);
    t33 = (~(t32));
    t34 = *((unsigned int *)t30);
    t35 = (~(t34));
    t36 = *((unsigned int *)t16);
    t37 = (~(t36));
    t38 = *((unsigned int *)t31);
    t39 = (~(t38));
    t40 = (t33 & t35);
    t41 = (t37 & t39);
    t42 = (~(t40));
    t43 = (~(t41));
    t44 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t44 & t42);
    t45 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t45 & t43);
    t46 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t46 & t42);
    t47 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t47 & t43);
    goto LAB12;

LAB13:    xsi_set_current_line(29, ng0);

LAB16:    xsi_set_current_line(30, ng0);
    t54 = ((char*)((ng1)));
    t55 = (t0 + 2248);
    xsi_vlogvar_assign_value(t55, t54, 0, 0, 8);
    xsi_set_current_line(31, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB15;

LAB17:    xsi_set_current_line(32, ng0);

LAB20:    xsi_set_current_line(33, ng0);
    t5 = (t0 + 1688U);
    t6 = *((char **)t5);
    t5 = (t0 + 2248);
    xsi_vlogvar_assign_value(t5, t6, 0, 0, 8);
    xsi_set_current_line(34, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB19;

LAB21:    *((unsigned int *)t4) = 1;
    goto LAB24;

LAB25:    t28 = *((unsigned int *)t17);
    t29 = *((unsigned int *)t16);
    *((unsigned int *)t17) = (t28 | t29);
    t21 = (t4 + 4);
    t22 = (t14 + 4);
    t32 = *((unsigned int *)t4);
    t33 = (~(t32));
    t34 = *((unsigned int *)t21);
    t35 = (~(t34));
    t36 = *((unsigned int *)t14);
    t37 = (~(t36));
    t38 = *((unsigned int *)t22);
    t39 = (~(t38));
    t40 = (t33 & t35);
    t41 = (t37 & t39);
    t42 = (~(t40));
    t43 = (~(t41));
    t44 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t44 & t42);
    t45 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t45 & t43);
    t46 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t46 & t42);
    t47 = *((unsigned int *)t17);
    *((unsigned int *)t17) = (t47 & t43);
    goto LAB27;

LAB28:    xsi_set_current_line(35, ng0);

LAB31:    xsi_set_current_line(36, ng0);
    t31 = (t0 + 2248);
    t48 = (t31 + 56U);
    t54 = *((char **)t48);
    t55 = (t0 + 1848U);
    t56 = *((char **)t55);
    t55 = ((char*)((ng2)));
    memset(t57, 0, 8);
    xsi_vlog_unsigned_minus(t57, 8, t56, 8, t55, 8);
    memset(t58, 0, 8);
    t59 = (t54 + 4);
    if (*((unsigned int *)t59) != 0)
        goto LAB33;

LAB32:    t60 = (t57 + 4);
    if (*((unsigned int *)t60) != 0)
        goto LAB33;

LAB36:    if (*((unsigned int *)t54) < *((unsigned int *)t57))
        goto LAB35;

LAB34:    *((unsigned int *)t58) = 1;

LAB35:    t62 = (t58 + 4);
    t63 = *((unsigned int *)t62);
    t64 = (~(t63));
    t65 = *((unsigned int *)t58);
    t66 = (t65 & t64);
    t67 = (t66 != 0);
    if (t67 > 0)
        goto LAB37;

LAB38:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng1)));
    memset(t4, 0, 8);
    t7 = (t5 + 4);
    t8 = (t6 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t6);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t18 = (t12 ^ t13);
    t19 = (t11 | t18);
    t20 = *((unsigned int *)t7);
    t23 = *((unsigned int *)t8);
    t24 = (t20 | t23);
    t25 = (~(t24));
    t26 = (t19 & t25);
    if (t26 != 0)
        goto LAB44;

LAB41:    if (t24 != 0)
        goto LAB43;

LAB42:    *((unsigned int *)t4) = 1;

LAB44:    t15 = (t4 + 4);
    t27 = *((unsigned int *)t15);
    t28 = (~(t27));
    t29 = *((unsigned int *)t4);
    t32 = (t29 & t28);
    t33 = (t32 != 0);
    if (t33 > 0)
        goto LAB45;

LAB46:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng3)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 8, t6, 32);
    t7 = (t0 + 2248);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 8);

LAB47:
LAB39:    goto LAB30;

LAB33:    t61 = (t58 + 4);
    *((unsigned int *)t58) = 1;
    *((unsigned int *)t61) = 1;
    goto LAB35;

LAB37:    xsi_set_current_line(36, ng0);

LAB40:    xsi_set_current_line(37, ng0);
    t68 = ((char*)((ng1)));
    t69 = (t0 + 2248);
    xsi_vlogvar_assign_value(t69, t68, 0, 0, 8);
    xsi_set_current_line(38, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB39;

LAB43:    t14 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB44;

LAB45:    xsi_set_current_line(39, ng0);

LAB48:    xsi_set_current_line(40, ng0);
    t16 = ((char*)((ng3)));
    t21 = (t0 + 2248);
    xsi_vlogvar_assign_value(t21, t16, 0, 0, 8);
    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB47;

}


extern void work_m_18294639667531826071_0313499225_init()
{
	static char *pe[] = {(void *)Always_28_0};
	xsi_register_didat("work_m_18294639667531826071_0313499225", "isim/battleship_isim_beh.exe.sim/work/m_18294639667531826071_0313499225.didat");
	xsi_register_executes(pe);
}
