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
static const char *ng0 = "C:/Users/Ivan/Documents/git/TSI_FPGA/Exam_signal_processing/signalMod.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547270861_1035706684(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1806736435_1181938964_p_0(char *t0)
{
    char t12[16];
    char t13[16];
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
    int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2992);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(26, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 4994);
    t7 = ((IEEE_P_2592010699) + 4024);
    t2 = xsi_vhdl_lessthan(t7, t3, 12U, t1, 12U);
    if (t2 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 3072);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 12U);
    xsi_driver_first_trans_fast_port(t1);

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(27, ng0);
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

LAB8:    xsi_set_current_line(30, ng0);
    t8 = (t0 + 5006);
    t10 = (t13 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 11;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t14 = (11 - 0);
    t15 = (t14 * 1);
    t15 = (t15 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t15;
    t11 = (t0 + 1352U);
    t16 = *((char **)t11);
    t11 = (t0 + 4940U);
    t17 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t12, t8, t13, t16, t11);
    t18 = (t0 + 3072);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t17, 12U);
    xsi_driver_first_trans_fast_port(t18);
    goto LAB9;

}


extern void work_a_1806736435_1181938964_init()
{
	static char *pe[] = {(void *)work_a_1806736435_1181938964_p_0};
	xsi_register_didat("work_a_1806736435_1181938964", "isim/sigproc_tb_isim_beh.exe.sim/work/a_1806736435_1181938964.didat");
	xsi_register_executes(pe);
}
