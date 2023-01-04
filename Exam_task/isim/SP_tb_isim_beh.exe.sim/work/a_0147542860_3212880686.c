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
static const char *ng0 = "C:/Users/Ivan/Documents/git/TSI_FPGA/Exam_task/SP.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_0147542860_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(92, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5416);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5320);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0147542860_3212880686_p_1(char *t0)
{
    char t22[16];
    char t23[16];
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
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 1792U);
    t2 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5336);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(97, ng0);
    t3 = (t0 + 1672U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(98, ng0);
    t3 = (t0 + 1992U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t9 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t8);
    t3 = (t0 + 5480);
    t10 = (t3 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t9;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(101, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t14 = (0 - 7);
    t15 = (t14 * -1);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t1 = (t3 + t17);
    t2 = *((unsigned char *)t1);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t14 = (11 - 11);
    t15 = (t14 * -1);
    t16 = (1U * t15);
    t17 = (0 + t16);
    t1 = (t3 + t17);
    t2 = *((unsigned char *)t1);
    t5 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t2);
    t4 = (t0 + 2632U);
    t7 = *((char **)t4);
    t19 = (11 - 10);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t4 = (t7 + t21);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t23 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 10;
    t13 = (t12 + 4U);
    *((int *)t13) = 0;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t24 = (0 - 10);
    t25 = (t24 * -1);
    t25 = (t25 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t25;
    t10 = xsi_base_array_concat(t10, t22, t11, (char)99, t5, (char)97, t4, t23, (char)101);
    t25 = (1U + 11U);
    t6 = (12U != t25);
    if (t6 == 1)
        goto LAB13;

LAB14:    t13 = (t0 + 5544);
    t18 = (t13 + 56U);
    t26 = *((char **)t18);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t10, 12U);
    xsi_driver_first_trans_delta(t13, 0U, 12U, 0LL);
    xsi_set_current_line(106, ng0);
    t1 = (t0 + 5608);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB9:    xsi_set_current_line(108, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t15 = (7 - 6);
    t16 = (t15 * 1U);
    t17 = (0 + t16);
    t1 = (t3 + t17);
    t7 = ((IEEE_P_2592010699) + 4024);
    t10 = (t23 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 6;
    t11 = (t10 + 4U);
    *((int *)t11) = 0;
    t11 = (t10 + 8U);
    *((int *)t11) = -1;
    t14 = (0 - 6);
    t19 = (t14 * -1);
    t19 = (t19 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t19;
    t4 = xsi_base_array_concat(t4, t22, t7, (char)97, t1, t23, (char)99, (unsigned char)2, (char)101);
    t19 = (7U + 1U);
    t2 = (8U != t19);
    if (t2 == 1)
        goto LAB15;

LAB16:    t11 = (t0 + 5672);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t18 = (t13 + 56U);
    t26 = *((char **)t18);
    memcpy(t26, t4, 8U);
    xsi_driver_first_trans_delta(t11, 0U, 8U, 0LL);
    goto LAB6;

LAB8:    xsi_set_current_line(102, ng0);
    t4 = (t0 + 9409);
    t6 = (12U != 12U);
    if (t6 == 1)
        goto LAB11;

LAB12:    t10 = (t0 + 5544);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t18 = *((char **)t13);
    memcpy(t18, t4, 12U);
    xsi_driver_first_trans_delta(t10, 0U, 12U, 0LL);
    xsi_set_current_line(103, ng0);
    t1 = (t0 + 5608);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB9;

LAB11:    xsi_size_not_matching(12U, 12U, 0);
    goto LAB12;

LAB13:    xsi_size_not_matching(12U, t25, 0);
    goto LAB14;

LAB15:    xsi_size_not_matching(8U, t19, 0);
    goto LAB16;

}


extern void work_a_0147542860_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0147542860_3212880686_p_0,(void *)work_a_0147542860_3212880686_p_1};
	xsi_register_didat("work_a_0147542860_3212880686", "isim/SP_tb_isim_beh.exe.sim/work/a_0147542860_3212880686.didat");
	xsi_register_executes(pe);
}
