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
static const char *ng0 = "C:/Users/Ivan/Documents/FPGA/LFSR_3/eLCeLL.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );


static void work_a_2858154854_1181938964_p_0(char *t0)
{
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
    unsigned char t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(19, ng0);
    t1 = (t0 + 1472U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3312);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(20, ng0);
    t3 = (t0 + 1672U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(21, ng0);
    t3 = (t0 + 1352U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 3392);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t10 = (t7 + 56U);
    t12 = *((char **)t10);
    *((unsigned char *)t12) = t2;
    xsi_driver_first_trans_fast_port(t1);

LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(22, ng0);
    t3 = (t0 + 1032U);
    t10 = *((char **)t3);
    t11 = *((unsigned char *)t10);
    t3 = (t0 + 1832U);
    t12 = *((char **)t3);
    t13 = *((unsigned char *)t12);
    t14 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t11, t13);
    t3 = (t0 + 3392);
    t15 = (t3 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = t14;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB9;

}


extern void work_a_2858154854_1181938964_init()
{
	static char *pe[] = {(void *)work_a_2858154854_1181938964_p_0};
	xsi_register_didat("work_a_2858154854_1181938964", "isim/tbb_isim_beh.exe.sim/work/a_2858154854_1181938964.didat");
	xsi_register_executes(pe);
}
