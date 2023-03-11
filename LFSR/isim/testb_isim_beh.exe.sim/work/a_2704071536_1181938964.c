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
static const char *ng0 = "C:/Users/Ivan/Documents/FPGA/LFSR/LFSR.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2704071536_1181938964_p_0(char *t0)
{
    char t10[16];
    char t12[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t11;
    char *t13;
    char *t14;
    int t15;
    unsigned int t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    t1 = (t0 + 3068U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 568U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t2, 0U, 0U);
    if (t3 != 0)
        goto LAB4;

LAB6:
LAB5:    goto LAB2;

LAB4:    xsi_set_current_line(61, ng0);
    t4 = (t0 + 960U);
    t5 = *((char **)t4);
    t6 = (6 - 5);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t4 = (t5 + t8);
    t11 = ((IEEE_P_2592010699) + 2332);
    t13 = (t12 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 5;
    t14 = (t13 + 4U);
    *((int *)t14) = 0;
    t14 = (t13 + 8U);
    *((int *)t14) = -1;
    t15 = (0 - 5);
    t16 = (t15 * -1);
    t16 = (t16 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t16;
    t9 = xsi_base_array_concat(t9, t10, t11, (char)97, t4, t12, (char)99, (unsigned char)3, (char)101);
    t16 = (6U + 1U);
    t17 = (7U != t16);
    if (t17 == 1)
        goto LAB7;

LAB8:    t14 = (t0 + 3452);
    t18 = (t14 + 32U);
    t19 = *((char **)t18);
    t20 = (t19 + 40U);
    t21 = *((char **)t20);
    memcpy(t21, t9, 7U);
    xsi_driver_first_trans_delta(t14, 0U, 7U, 0LL);
    goto LAB5;

LAB7:    xsi_size_not_matching(7U, t16, 0);
    goto LAB8;

LAB1:    return;
}

static void work_a_2704071536_1181938964_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(65, ng0);

LAB3:    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 3488);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 7U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 3408);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2704071536_1181938964_init()
{
	static char *pe[] = {(void *)work_a_2704071536_1181938964_p_0,(void *)work_a_2704071536_1181938964_p_1};
	xsi_register_didat("work_a_2704071536_1181938964", "isim/testb_isim_beh.exe.sim/work/a_2704071536_1181938964.didat");
	xsi_register_executes(pe);
}
