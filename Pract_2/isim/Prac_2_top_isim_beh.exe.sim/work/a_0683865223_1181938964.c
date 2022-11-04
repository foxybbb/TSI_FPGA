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
static const char *ng0 = "C:/Users/Ivan/Documents/FPGA/Pract_2/sgm.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0683865223_1181938964_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    char *t11;
    int t12;
    char *t13;
    int t15;
    char *t16;
    int t18;
    char *t19;
    int t21;
    char *t22;
    int t24;
    char *t25;
    int t27;
    char *t28;
    int t30;
    char *t31;
    int t33;
    char *t34;
    int t36;
    char *t37;
    int t39;
    char *t40;
    int t42;
    char *t43;
    int t45;
    char *t46;
    int t48;
    char *t49;
    int t51;
    char *t52;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;

LAB0:    xsi_set_current_line(30, ng0);
    t1 = (t0 + 1152U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2992);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(31, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(33, ng0);
    t3 = (t0 + 1032U);
    t7 = *((char **)t3);
    t3 = (t0 + 4774);
    t9 = xsi_mem_cmp(t3, t7, 4U);
    if (t9 == 1)
        goto LAB9;

LAB25:    t10 = (t0 + 4778);
    t12 = xsi_mem_cmp(t10, t7, 4U);
    if (t12 == 1)
        goto LAB10;

LAB26:    t13 = (t0 + 4782);
    t15 = xsi_mem_cmp(t13, t7, 4U);
    if (t15 == 1)
        goto LAB11;

LAB27:    t16 = (t0 + 4786);
    t18 = xsi_mem_cmp(t16, t7, 4U);
    if (t18 == 1)
        goto LAB12;

LAB28:    t19 = (t0 + 4790);
    t21 = xsi_mem_cmp(t19, t7, 4U);
    if (t21 == 1)
        goto LAB13;

LAB29:    t22 = (t0 + 4794);
    t24 = xsi_mem_cmp(t22, t7, 4U);
    if (t24 == 1)
        goto LAB14;

LAB30:    t25 = (t0 + 4798);
    t27 = xsi_mem_cmp(t25, t7, 4U);
    if (t27 == 1)
        goto LAB15;

LAB31:    t28 = (t0 + 4802);
    t30 = xsi_mem_cmp(t28, t7, 4U);
    if (t30 == 1)
        goto LAB16;

LAB32:    t31 = (t0 + 4806);
    t33 = xsi_mem_cmp(t31, t7, 4U);
    if (t33 == 1)
        goto LAB17;

LAB33:    t34 = (t0 + 4810);
    t36 = xsi_mem_cmp(t34, t7, 4U);
    if (t36 == 1)
        goto LAB18;

LAB34:    t37 = (t0 + 4814);
    t39 = xsi_mem_cmp(t37, t7, 4U);
    if (t39 == 1)
        goto LAB19;

LAB35:    t40 = (t0 + 4818);
    t42 = xsi_mem_cmp(t40, t7, 4U);
    if (t42 == 1)
        goto LAB20;

LAB36:    t43 = (t0 + 4822);
    t45 = xsi_mem_cmp(t43, t7, 4U);
    if (t45 == 1)
        goto LAB21;

LAB37:    t46 = (t0 + 4826);
    t48 = xsi_mem_cmp(t46, t7, 4U);
    if (t48 == 1)
        goto LAB22;

LAB38:    t49 = (t0 + 4830);
    t51 = xsi_mem_cmp(t49, t7, 4U);
    if (t51 == 1)
        goto LAB23;

LAB39:
LAB24:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 4939);
    t4 = (t0 + 3072);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 7U);
    xsi_driver_first_trans_fast_port(t4);

LAB8:    goto LAB6;

LAB9:    xsi_set_current_line(34, ng0);
    t52 = (t0 + 4834);
    t54 = (t0 + 3072);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    t57 = (t56 + 56U);
    t58 = *((char **)t57);
    memcpy(t58, t52, 7U);
    xsi_driver_first_trans_fast_port(t54);
    goto LAB8;

LAB10:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 4841);
    t4 = (t0 + 3072);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB11:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 4848);
    t4 = (t0 + 3072);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB12:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 4855);
    t4 = (t0 + 3072);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB13:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 4862);
    t4 = (t0 + 3072);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB14:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 4869);
    t4 = (t0 + 3072);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB15:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 4876);
    t4 = (t0 + 3072);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB16:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 4883);
    t4 = (t0 + 3072);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB17:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 4890);
    t4 = (t0 + 3072);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB18:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 4897);
    t4 = (t0 + 3072);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB19:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 4904);
    t4 = (t0 + 3072);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB20:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 4911);
    t4 = (t0 + 3072);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB21:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 4918);
    t4 = (t0 + 3072);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB22:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 4925);
    t4 = (t0 + 3072);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB23:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 4932);
    t4 = (t0 + 3072);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 7U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB8;

LAB40:;
}


extern void work_a_0683865223_1181938964_init()
{
	static char *pe[] = {(void *)work_a_0683865223_1181938964_p_0};
	xsi_register_didat("work_a_0683865223_1181938964", "isim/Prac_2_top_isim_beh.exe.sim/work/a_0683865223_1181938964.didat");
	xsi_register_executes(pe);
}
