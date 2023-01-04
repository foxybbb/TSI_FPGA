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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Ivan/Documents/git/TSI_FPGA/Exam/sigPr02.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1053409658_1181938964_p_0(char *t0)
{
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
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2992);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(28, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 4814);
    t7 = ((IEEE_P_2592010699) + 4024);
    t2 = xsi_vhdl_greater(t7, t3, 12U, t1, 12U);
    if (t2 != 0)
        goto LAB8;

LAB10:    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 4838);
    t7 = ((IEEE_P_2592010699) + 4024);
    t2 = xsi_vhdl_lessthan(t7, t3, 12U, t1, 12U);
    if (t2 != 0)
        goto LAB11;

LAB12:
LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(29, ng0);
    t3 = (t0 + 1352U);
    t7 = *((char **)t3);
    t3 = (t0 + 3072);
    t8 = (t3 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t7, 12U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB6;

LAB8:    xsi_set_current_line(32, ng0);
    t8 = (t0 + 4826);
    t10 = (t0 + 3072);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 12U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB9;

LAB11:    xsi_set_current_line(34, ng0);
    t8 = (t0 + 4850);
    t10 = (t0 + 3072);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 12U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB9;

}


extern void work_a_1053409658_1181938964_init()
{
	static char *pe[] = {(void *)work_a_1053409658_1181938964_p_0};
	xsi_register_didat("work_a_1053409658_1181938964", "isim/sigproc_tb_isim_beh.exe.sim/work/a_1053409658_1181938964.didat");
	xsi_register_executes(pe);
}
