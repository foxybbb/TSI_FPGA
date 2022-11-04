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
static const char *ng0 = "C:/Users/Ivan/Documents/FPGA/Prac_2/cnt4bit.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );


static void work_a_1474199958_1181938964_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2992);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 1512U);
    t7 = *((char **)t3);
    t8 = (0 - 3);
    t9 = (t8 * -1);
    t10 = (1U * t9);
    t11 = (0 + t10);
    t3 = (t7 + t11);
    t12 = *((unsigned char *)t3);
    t13 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t12);
    t14 = (t0 + 3072);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = t13;
    xsi_driver_first_trans_delta(t14, 3U, 1, 0LL);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t8 = (0 - 3);
    t9 = (t8 * -1);
    t10 = (1U * t9);
    t11 = (0 + t10);
    t1 = (t3 + t11);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 1512U);
    t7 = *((char **)t4);
    t19 = (1 - 3);
    t20 = (t19 * -1);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t4 = (t7 + t22);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t2, t5);
    t14 = (t0 + 3072);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = t6;
    xsi_driver_first_trans_delta(t14, 2U, 1, 0LL);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t8 = (1 - 3);
    t9 = (t8 * -1);
    t10 = (1U * t9);
    t11 = (0 + t10);
    t1 = (t3 + t11);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 1512U);
    t7 = *((char **)t4);
    t19 = (0 - 3);
    t20 = (t19 * -1);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t4 = (t7 + t22);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t2, t5);
    t14 = (t0 + 1512U);
    t15 = *((char **)t14);
    t23 = (2 - 3);
    t24 = (t23 * -1);
    t25 = (1U * t24);
    t26 = (0 + t25);
    t14 = (t15 + t26);
    t12 = *((unsigned char *)t14);
    t13 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t6, t12);
    t16 = (t0 + 3072);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t27 = (t18 + 56U);
    t28 = *((char **)t27);
    *((unsigned char *)t28) = t13;
    xsi_driver_first_trans_delta(t16, 1U, 1, 0LL);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t8 = (2 - 3);
    t9 = (t8 * -1);
    t10 = (1U * t9);
    t11 = (0 + t10);
    t1 = (t3 + t11);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 1512U);
    t7 = *((char **)t4);
    t19 = (1 - 3);
    t20 = (t19 * -1);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t4 = (t7 + t22);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t2, t5);
    t14 = (t0 + 1512U);
    t15 = *((char **)t14);
    t23 = (3 - 3);
    t24 = (t23 * -1);
    t25 = (1U * t24);
    t26 = (0 + t25);
    t14 = (t15 + t26);
    t12 = *((unsigned char *)t14);
    t13 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t6, t12);
    t16 = (t0 + 3072);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t27 = (t18 + 56U);
    t28 = *((char **)t27);
    *((unsigned char *)t28) = t13;
    xsi_driver_first_trans_delta(t16, 0U, 1, 0LL);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t9 = (3 - 3);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t3 + t11);
    t4 = (t0 + 3136);
    t7 = (t4 + 56U);
    t14 = *((char **)t7);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t1, 4U);
    xsi_driver_first_trans_delta(t4, 0U, 4U, 0LL);
    goto LAB6;

}


extern void work_a_1474199958_1181938964_init()
{
	static char *pe[] = {(void *)work_a_1474199958_1181938964_p_0};
	xsi_register_didat("work_a_1474199958_1181938964", "isim/Prac_2_top_isim_beh.exe.sim/work/a_1474199958_1181938964.didat");
	xsi_register_executes(pe);
}
