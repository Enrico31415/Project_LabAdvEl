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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_18294639667531826071_0313499225_init();
    work_m_00189025634896824945_1392856140_init();
    work_m_06447495627542123670_3778543668_init();
    work_m_05336119822540883597_0690888314_init();
    work_m_11979370045691794291_2556795907_init();
    work_m_06787346243676236108_1283832085_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_06787346243676236108_1283832085");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
