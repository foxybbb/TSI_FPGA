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
static const char *ng0 = "C:/Users/Ivan/Documents/git/TSI_FPGA/Exam_task/signalMod.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547270861_1035706684(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1806736435_1181938964_p_0(char *t0)
{
    char t15[16];
    char t16[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3152);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(28, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(29, ng0);
    t3 = (t0 + 1352U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 5115);
    t7 = ((IEEE_P_2592010699) + 4024);
    t2 = xsi_vhdl_lessthan(t7, t3, 12U, t1, 12U);
    if (t2 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 3232);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t3, 12U);
    xsi_driver_first_trans_fast_port(t1);

LAB12:
LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(30, ng0);
    t3 = (t0 + 1512U);
    t10 = *((char **)t3);
    t3 = (t0 + 3232);
    t11 = (t3 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t10, 12U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

LAB11:    xsi_set_current_line(33, ng0);
    t10 = (t0 + 5127);
    t12 = (t16 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 11;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t17 = (11 - 0);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t18;
    t13 = (t0 + 1512U);
    t14 = *((char **)t13);
    t13 = (t0 + 5060U);
    t19 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t15, t10, t16, t14, t13);
    t20 = (t0 + 3232);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t19, 12U);
    xsi_driver_first_trans_fast_port(t20);
    goto LAB12;

}


extern void work_a_1806736435_1181938964_init()
{
	static char *pe[] = {(void *)work_a_1806736435_1181938964_p_0};
	xsi_register_didat("work_a_1806736435_1181938964", "isim/SP2_tb_isim_beh.exe.sim/work/a_1806736435_1181938964.didat");
	xsi_register_executes(pe);
}
