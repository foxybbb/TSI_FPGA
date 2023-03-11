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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Ivan/Documents/FPGA/LFSR/eLCeLL.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );


static void work_a_2858154854_1181938964_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned char t14;

LAB0:    t1 = (t0 + 1896U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1028U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t2, 0U, 0U);
    if (t3 != 0)
        goto LAB4;

LAB6:
LAB5:    goto LAB2;

LAB4:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 592U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    if (t7 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1144U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)3);
    if (t6 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1236U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t2 = (t0 + 2164);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t10 = (t8 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t3;
    xsi_driver_first_trans_fast_port(t2);

LAB11:
LAB8:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1144U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t6 = (t3 == (unsigned char)3);
    if (t6 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1236U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t2 = (t0 + 2164);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t10 = (t8 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t3;
    xsi_driver_first_trans_fast_port(t2);

LAB14:    goto LAB5;

LAB7:    xsi_set_current_line(51, ng0);
    t4 = (t0 + 776U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t4 = (t0 + 2128);
    t10 = (t4 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t9;
    xsi_driver_first_trans_fast(t4);
    goto LAB8;

LAB10:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1236U);
    t5 = *((char **)t2);
    t7 = *((unsigned char *)t5);
    t2 = (t0 + 960U);
    t8 = *((char **)t2);
    t9 = *((unsigned char *)t8);
    t14 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t7, t9);
    t2 = (t0 + 2164);
    t10 = (t2 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t14;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB11;

LAB13:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1236U);
    t5 = *((char **)t2);
    t7 = *((unsigned char *)t5);
    t2 = (t0 + 960U);
    t8 = *((char **)t2);
    t9 = *((unsigned char *)t8);
    t14 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t7, t9);
    t2 = (t0 + 2164);
    t10 = (t2 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t14;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB14;

LAB1:    return;
}


extern void work_a_2858154854_1181938964_init()
{
	static char *pe[] = {(void *)work_a_2858154854_1181938964_p_0};
	xsi_register_didat("work_a_2858154854_1181938964", "isim/test_isim_beh.exe.sim/work/a_2858154854_1181938964.didat");
	xsi_register_executes(pe);
}
