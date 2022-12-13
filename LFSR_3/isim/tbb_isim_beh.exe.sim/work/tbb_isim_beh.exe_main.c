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

char *STD_STANDARD;
char *UNISIM_P_0947159679;
char *IEEE_P_2592010699;
char *IEEE_P_3499444699;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    unisim_p_0947159679_init();
    work_a_1363565807_1181938964_init();
    work_a_3307269773_1181938964_init();
    work_a_2858154854_1181938964_init();
    work_a_2704071536_1181938964_init();
    work_a_0683865223_1181938964_init();
    unisim_a_1490675510_1976025627_init();
    work_a_1984555134_3212880686_init();
    work_a_2781443972_2372691052_init();


    xsi_register_tops("work_a_2781443972_2372691052");

    STD_STANDARD = xsi_get_engine_memory("std_standard");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");

    return xsi_run_simulation(argc, argv);

}
