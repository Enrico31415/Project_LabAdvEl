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
static const char *ng0 = "/home/mat/Documents/repos/Project_LabAdvEl/mouseTest/Module_Counter_8_bit_oneRun.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {1U, 0U};
static int ng3[] = {1, 0};



static void Always_43_0(char *t0)
{
    char t4[8];
    char t17[8];
    char t54[8];
    char t67[8];
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
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    char *t66;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t71;
    char *t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    char *t80;
    char *t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    int t90;
    int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    char *t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    char *t104;
    char *t105;

LAB0:    t1 = (t0 + 3320U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(43, ng0);
    t2 = (t0 + 3640);
    *((int *)t2) = 1;
    t3 = (t0 + 3352);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(43, ng0);

LAB5:    xsi_set_current_line(44, ng0);
    t5 = (t0 + 2408);
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

LAB9:    t15 = (t0 + 1208U);
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

LAB14:
LAB15:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 2248);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 1);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 2408);
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

LAB13:    xsi_set_current_line(44, ng0);

LAB16:    xsi_set_current_line(45, ng0);
    t55 = (t0 + 2248);
    t56 = (t55 + 56U);
    t57 = *((char **)t56);
    memset(t54, 0, 8);
    t58 = (t57 + 4);
    t59 = *((unsigned int *)t58);
    t60 = (~(t59));
    t61 = *((unsigned int *)t57);
    t62 = (t61 & t60);
    t63 = (t62 & 1U);
    if (t63 != 0)
        goto LAB20;

LAB18:    if (*((unsigned int *)t58) == 0)
        goto LAB17;

LAB19:    t64 = (t54 + 4);
    *((unsigned int *)t54) = 1;
    *((unsigned int *)t64) = 1;

LAB20:    t65 = (t0 + 1528U);
    t66 = *((char **)t65);
    t68 = *((unsigned int *)t54);
    t69 = *((unsigned int *)t66);
    t70 = (t68 & t69);
    *((unsigned int *)t67) = t70;
    t65 = (t54 + 4);
    t71 = (t66 + 4);
    t72 = (t67 + 4);
    t73 = *((unsigned int *)t65);
    t74 = *((unsigned int *)t71);
    t75 = (t73 | t74);
    *((unsigned int *)t72) = t75;
    t76 = *((unsigned int *)t72);
    t77 = (t76 != 0);
    if (t77 == 1)
        goto LAB21;

LAB22:
LAB23:    t98 = (t67 + 4);
    t99 = *((unsigned int *)t98);
    t100 = (~(t99));
    t101 = *((unsigned int *)t67);
    t102 = (t101 & t100);
    t103 = (t102 != 0);
    if (t103 > 0)
        goto LAB24;

LAB25:
LAB26:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t9 = *((unsigned int *)t2);
    t10 = (~(t9));
    t11 = *((unsigned int *)t3);
    t12 = (t11 & t10);
    t13 = (t12 != 0);
    if (t13 > 0)
        goto LAB28;

LAB29:    xsi_set_current_line(58, ng0);

LAB50:    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(60, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB30:    goto LAB15;

LAB17:    *((unsigned int *)t54) = 1;
    goto LAB20;

LAB21:    t78 = *((unsigned int *)t67);
    t79 = *((unsigned int *)t72);
    *((unsigned int *)t67) = (t78 | t79);
    t80 = (t54 + 4);
    t81 = (t66 + 4);
    t82 = *((unsigned int *)t54);
    t83 = (~(t82));
    t84 = *((unsigned int *)t80);
    t85 = (~(t84));
    t86 = *((unsigned int *)t66);
    t87 = (~(t86));
    t88 = *((unsigned int *)t81);
    t89 = (~(t88));
    t90 = (t83 & t85);
    t91 = (t87 & t89);
    t92 = (~(t90));
    t93 = (~(t91));
    t94 = *((unsigned int *)t72);
    *((unsigned int *)t72) = (t94 & t92);
    t95 = *((unsigned int *)t72);
    *((unsigned int *)t72) = (t95 & t93);
    t96 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t96 & t92);
    t97 = *((unsigned int *)t67);
    *((unsigned int *)t67) = (t97 & t93);
    goto LAB23;

LAB24:    xsi_set_current_line(45, ng0);

LAB27:    xsi_set_current_line(46, ng0);
    t104 = ((char*)((ng1)));
    t105 = (t0 + 1928);
    xsi_vlogvar_assign_value(t105, t104, 0, 0, 8);
    xsi_set_current_line(47, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB26;

LAB28:    xsi_set_current_line(49, ng0);

LAB31:    xsi_set_current_line(50, ng0);
    t5 = (t0 + 1928);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t0 + 1368U);
    t14 = *((char **)t8);
    t8 = ((char*)((ng2)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_minus(t4, 8, t14, 8, t8, 8);
    memset(t17, 0, 8);
    t15 = (t7 + 4);
    if (*((unsigned int *)t15) != 0)
        goto LAB33;

LAB32:    t16 = (t4 + 4);
    if (*((unsigned int *)t16) != 0)
        goto LAB33;

LAB36:    if (*((unsigned int *)t7) < *((unsigned int *)t4))
        goto LAB35;

LAB34:    *((unsigned int *)t17) = 1;

LAB35:    t22 = (t17 + 4);
    t18 = *((unsigned int *)t22);
    t19 = (~(t18));
    t20 = *((unsigned int *)t17);
    t23 = (t20 & t19);
    t24 = (t23 != 0);
    if (t24 > 0)
        goto LAB37;

LAB38:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1928);
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

LAB46:    xsi_set_current_line(55, ng0);

LAB49:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng3)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 8, t6, 32);
    t7 = (t0 + 1928);
    xsi_vlogvar_assign_value(t7, t4, 0, 0, 8);

LAB47:
LAB39:    goto LAB30;

LAB33:    t21 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB35;

LAB37:    xsi_set_current_line(50, ng0);

LAB40:    xsi_set_current_line(51, ng0);
    t30 = ((char*)((ng3)));
    t31 = (t0 + 2088);
    xsi_vlogvar_assign_value(t31, t30, 0, 0, 1);
    goto LAB39;

LAB43:    t14 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t14) = 1;
    goto LAB44;

LAB45:    xsi_set_current_line(52, ng0);

LAB48:    xsi_set_current_line(53, ng0);
    t16 = ((char*)((ng3)));
    t21 = (t0 + 1928);
    xsi_vlogvar_assign_value(t21, t16, 0, 0, 8);
    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB47;

}


extern void work_m_00189025634896824945_1392856140_init()
{
	static char *pe[] = {(void *)Always_43_0};
	xsi_register_didat("work_m_00189025634896824945_1392856140", "isim/sim_test_battleship_isim_beh.exe.sim/work/m_00189025634896824945_1392856140.didat");
	xsi_register_executes(pe);
}
