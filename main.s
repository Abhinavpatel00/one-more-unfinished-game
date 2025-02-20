	.file	"main.c"
	.text
.Ltext0:
	.file 0 "/home/lka/practice/mygames/myplatformer" "main.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Couldn't initialize SDL: %s"
.LC1:
	.string	"Hello SDL"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"Couldn't create window and renderer: %s"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL0:
.LFB18:
	.file 1 "main.c"
	.loc 1 9 30 view -0
	.cfi_startproc
	.loc 1 9 30 is_stmt 0 view .LVU1
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$184, %rsp
	.cfi_def_cfa_offset 224
	.loc 1 16 10 view .LVU2
	movq	%fs:40, %rdi
	movq	%rdi, 168(%rsp)
	movl	$16416, %edi
.LVL1:
	.loc 1 16 10 view .LVU3
	call	SDL_Init@PLT
.LVL2:
	.loc 1 16 8 discriminator 1 view .LVU4
	testb	%al, %al
	je	.L23
	.loc 1 21 5 is_stmt 1 view .LVU5
	.loc 1 21 10 is_stmt 0 view .LVU6
	leaq	24(%rsp), %r9
	leaq	16(%rsp), %r8
	movl	$32, %ecx
	movl	$240, %edx
	movl	$800, %esi
	leaq	32(%rsp), %rbp
.LBB2:
	.loc 1 39 9 view .LVU7
	leaq	8(%rsp), %r12
.LBE2:
	.loc 1 21 10 view .LVU8
	leaq	.LC1(%rip), %rdi
	call	SDL_CreateWindowAndRenderer@PLT
.LVL3:
	.loc 1 21 8 discriminator 1 view .LVU9
	testb	%al, %al
	je	.L24
	.p2align 4
	.p2align 3
.L4:
	.loc 1 28 5 is_stmt 1 view .LVU10
.LBB7:
	.loc 1 29 9 view .LVU11
	movq	%rbp, %rdi
	call	SDL_PollEvent@PLT
.LVL4:
	.loc 1 30 9 view .LVU12
	.loc 1 30 12 is_stmt 0 view .LVU13
	cmpl	$256, 32(%rsp)
	je	.L6
	.loc 1 34 9 is_stmt 1 view .LVU14
	movq	24(%rsp), %rdi
	xorl	%ecx, %ecx
	movl	$255, %r8d
	xorl	%edx, %edx
	xorl	%esi, %esi
	call	SDL_SetRenderDrawColor@PLT
.LVL5:
	.loc 1 35 9 view .LVU15
	movq	24(%rsp), %rdi
	call	SDL_RenderClear@PLT
.LVL6:
	.loc 1 37 9 view .LVU16
	.loc 1 39 9 is_stmt 0 view .LVU17
	movq	16(%rsp), %rdi
	movq	%r12, %rdx
	leaq	12(%rsp), %rsi
	.loc 1 37 13 view .LVU18
	movl	$0, 8(%rsp)
	.loc 1 38 9 is_stmt 1 view .LVU19
	.loc 1 38 13 is_stmt 0 view .LVU20
	movl	$0, 12(%rsp)
	.loc 1 39 9 is_stmt 1 view .LVU21
	call	SDL_GetWindowSize@PLT
.LVL7:
	.loc 1 40 9 view .LVU22
	movq	24(%rsp), %rdi
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	$255, %r8d
	movl	$255, %ecx
	call	SDL_SetRenderDrawColor@PLT
.LVL8:
	.loc 1 41 9 view .LVU23
	.loc 1 41 13 is_stmt 0 view .LVU24
	movl	8(%rsp), %eax
	.loc 1 41 13 discriminator 3 view .LVU25
	testl	%eax, %eax
	leal	15(%rax), %r13d
	cmovns	%eax, %r13d
.LBB3:
	.loc 1 42 18 view .LVU26
	xorl	%ebx, %ebx
.LBE3:
	.loc 1 41 13 discriminator 3 view .LVU27
	sarl	$4, %r13d
.LVL9:
	.loc 1 42 9 is_stmt 1 view .LVU28
.LBB4:
	.loc 1 42 14 view .LVU29
	.loc 1 42 31 discriminator 1 view .LVU30
	cmpl	$15, %eax
	jle	.L10
.LVL10:
	.p2align 4
	.p2align 3
.L7:
	.loc 1 44 13 view .LVU31
	.loc 1 44 77 is_stmt 0 view .LVU32
	addl	$1, %ebx
.LVL11:
	.loc 1 44 13 view .LVU33
	pxor	%xmm1, %xmm1
	pxor	%xmm2, %xmm2
	movq	24(%rsp), %rdi
	.loc 1 44 82 view .LVU34
	movl	%ebx, %eax
	.loc 1 44 13 view .LVU35
	cvtsi2ssl	12(%rsp), %xmm2
	pxor	%xmm0, %xmm0
	.loc 1 44 82 view .LVU36
	sall	$4, %eax
	.loc 1 44 13 view .LVU37
	cvtsi2ssl	%eax, %xmm1
	movaps	%xmm1, %xmm3
	call	SDL_RenderLine@PLT
.LVL12:
	.loc 1 42 45 is_stmt 1 discriminator 3 view .LVU38
	.loc 1 42 31 discriminator 1 view .LVU39
	cmpl	%r13d, %ebx
	jl	.L7
.LVL13:
.L10:
	.loc 1 42 31 is_stmt 0 discriminator 1 view .LVU40
.LBE4:
.LBB5:
	.loc 1 46 31 is_stmt 1 discriminator 1 view .LVU41
	.loc 1 46 18 is_stmt 0 view .LVU42
	xorl	%ebx, %ebx
	.loc 1 46 31 discriminator 5 view .LVU43
	cmpl	$15, 12(%rsp)
	movl	$16, %eax
	jg	.L8
	jmp	.L9
.LVL14:
	.p2align 4,,10
	.p2align 3
.L26:
	.loc 1 47 62 view .LVU44
	leal	2(%rbx), %eax
	.loc 1 47 67 view .LVU45
	imull	$16, %eax, %ebx
	jo	.L25
.L11:
	movl	%ebx, %eax
	movl	%r13d, %ebx
.LVL15:
.L8:
	.loc 1 47 13 is_stmt 1 view .LVU46
	pxor	%xmm2, %xmm2
	pxor	%xmm3, %xmm3
	movq	24(%rsp), %rdi
	pxor	%xmm1, %xmm1
	cvtsi2ssl	%eax, %xmm2
	.loc 1 47 62 is_stmt 0 view .LVU47
	leal	1(%rbx), %r13d
	.loc 1 47 13 view .LVU48
	cvtsi2ssl	8(%rsp), %xmm3
	movaps	%xmm2, %xmm0
	call	SDL_RenderLine@PLT
.LVL16:
	.loc 1 46 52 is_stmt 1 discriminator 6 view .LVU49
	.loc 1 46 31 discriminator 1 view .LVU50
	.loc 1 46 46 is_stmt 0 discriminator 5 view .LVU51
	movl	12(%rsp), %edx
	testl	%edx, %edx
	leal	15(%rdx), %eax
	cmovns	%edx, %eax
	sarl	$4, %eax
	.loc 1 46 31 discriminator 5 view .LVU52
	cmpl	%eax, %r13d
	jl	.L26
.LVL17:
.L9:
	.loc 1 46 31 discriminator 5 view .LVU53
.LBE5:
	.loc 1 50 9 is_stmt 1 view .LVU54
	movq	24(%rsp), %rdi
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	call	SDL_RenderTexture@PLT
.LVL18:
	.loc 1 51 9 view .LVU55
	movq	24(%rsp), %rdi
	call	SDL_RenderPresent@PLT
.LVL19:
.LBE7:
	.loc 1 28 11 view .LVU56
	.loc 1 28 15 is_stmt 0 view .LVU57
	jmp	.L4
.LVL20:
	.p2align 4,,10
	.p2align 3
.L6:
	.loc 1 54 5 is_stmt 1 view .LVU58
	xorl	%edi, %edi
	call	SDL_DestroyTexture@PLT
.LVL21:
	.loc 1 55 5 view .LVU59
	movq	24(%rsp), %rdi
	call	SDL_DestroyRenderer@PLT
.LVL22:
	.loc 1 56 5 view .LVU60
	movq	16(%rsp), %rdi
	call	SDL_DestroyWindow@PLT
.LVL23:
	.loc 1 58 5 view .LVU61
	call	SDL_Quit@PLT
.LVL24:
	.loc 1 60 5 view .LVU62
	.loc 1 60 12 is_stmt 0 view .LVU63
	xorl	%eax, %eax
.L1:
	.loc 1 61 1 view .LVU64
	movq	168(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L27
	addq	$184, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L23:
	.cfi_restore_state
	.loc 1 17 9 is_stmt 1 view .LVU65
	call	SDL_GetError@PLT
.LVL25:
	.loc 1 17 9 is_stmt 0 discriminator 1 view .LVU66
	leaq	.LC0(%rip), %rsi
	xorl	%edi, %edi
	.loc 1 17 9 view .LVU67
	movq	%rax, %rdx
	.loc 1 17 9 discriminator 1 view .LVU68
	xorl	%eax, %eax
	call	SDL_LogError@PLT
.LVL26:
	.loc 1 18 9 is_stmt 1 view .LVU69
.L3:
	.loc 1 18 16 is_stmt 0 view .LVU70
	movl	$3, %eax
	jmp	.L1
.L24:
	.loc 1 22 9 is_stmt 1 view .LVU71
	call	SDL_GetError@PLT
.LVL27:
	.loc 1 22 9 is_stmt 0 discriminator 1 view .LVU72
	leaq	.LC2(%rip), %rsi
	xorl	%edi, %edi
	.loc 1 22 9 view .LVU73
	movq	%rax, %rdx
	.loc 1 22 9 discriminator 1 view .LVU74
	xorl	%eax, %eax
	call	SDL_LogError@PLT
.LVL28:
	.loc 1 23 9 is_stmt 1 view .LVU75
	.loc 1 23 16 is_stmt 0 view .LVU76
	jmp	.L3
.LVL29:
.L25:
.LBB8:
.LBB6:
	.loc 1 47 67 view .LVU77
	movslq	%eax, %rsi
	movl	$16, %edx
	leaq	.Lubsan_data3(%rip), %rdi
	call	__ubsan_handle_mul_overflow@PLT
.LVL30:
	jmp	.L11
.LVL31:
.L27:
	.loc 1 47 67 view .LVU78
.LBE6:
.LBE8:
	.loc 1 61 1 view .LVU79
	call	__stack_chk_fail@PLT
.LVL32:
	.cfi_endproc
.LFE18:
	.size	main, .-main
	.section	.rodata.str1.1
.LC4:
	.string	"main.c"
	.section	.data.rel.local,"aw"
	.align 16
	.type	.Lubsan_data3, @object
	.size	.Lubsan_data3, 24
.Lubsan_data3:
	.quad	.LC4
	.long	47
	.long	67
	.quad	.Lubsan_type2
	.data
	.align 2
	.type	.Lubsan_type2, @object
	.size	.Lubsan_type2, 10
.Lubsan_type2:
	.value	0
	.value	11
	.string	"'int'"
	.text
.Letext0:
	.file 2 "/usr/include/bits/types.h"
	.file 3 "/usr/include/bits/stdint-intn.h"
	.file 4 "/usr/include/bits/stdint-uintn.h"
	.file 5 "/usr/include/SDL3/SDL_stdinc.h"
	.file 6 "/usr/include/SDL3/SDL_audio.h"
	.file 7 "/usr/include/SDL3/SDL_pixels.h"
	.file 8 "/usr/include/SDL3/SDL_rect.h"
	.file 9 "/usr/include/SDL3/SDL_surface.h"
	.file 10 "/usr/include/SDL3/SDL_camera.h"
	.file 11 "/usr/include/SDL3/SDL_video.h"
	.file 12 "/usr/include/SDL3/SDL_power.h"
	.file 13 "/usr/include/SDL3/SDL_sensor.h"
	.file 14 "/usr/include/SDL3/SDL_joystick.h"
	.file 15 "/usr/include/SDL3/SDL_scancode.h"
	.file 16 "/usr/include/SDL3/SDL_keycode.h"
	.file 17 "/usr/include/SDL3/SDL_keyboard.h"
	.file 18 "/usr/include/SDL3/SDL_mouse.h"
	.file 19 "/usr/include/SDL3/SDL_touch.h"
	.file 20 "/usr/include/SDL3/SDL_pen.h"
	.file 21 "/usr/include/SDL3/SDL_events.h"
	.file 22 "/usr/include/SDL3/SDL_init.h"
	.file 23 "/usr/include/SDL3/SDL_log.h"
	.file 24 "/usr/include/SDL3/SDL_render.h"
	.file 25 "/usr/include/SDL3/SDL_error.h"
	.file 26 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x295a
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x21
	.long	.LASF3449
	.byte	0xc
	.long	.LASF0
	.long	.LASF1
	.long	.LLRL8
	.quad	0
	.long	.Ldebug_line0
	.long	.Ldebug_macro0
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.long	.LASF2766
	.uleb128 0xe
	.byte	0x8
	.byte	0x7
	.long	.LASF2767
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.long	.LASF2768
	.uleb128 0x22
	.byte	0x8
	.uleb128 0xe
	.byte	0x1
	.byte	0x8
	.long	.LASF2769
	.uleb128 0xe
	.byte	0x2
	.byte	0x7
	.long	.LASF2770
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.long	.LASF2771
	.uleb128 0x8
	.long	.LASF2772
	.byte	0x2
	.byte	0x26
	.byte	0x17
	.long	0x45
	.uleb128 0x8
	.long	.LASF2773
	.byte	0x2
	.byte	0x27
	.byte	0x1a
	.long	0x72
	.uleb128 0xe
	.byte	0x2
	.byte	0x5
	.long	.LASF2774
	.uleb128 0x8
	.long	.LASF2775
	.byte	0x2
	.byte	0x28
	.byte	0x1c
	.long	0x4c
	.uleb128 0x8
	.long	.LASF2776
	.byte	0x2
	.byte	0x29
	.byte	0x14
	.long	0x91
	.uleb128 0x23
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x8
	.long	.LASF2777
	.byte	0x2
	.byte	0x2a
	.byte	0x16
	.long	0x3c
	.uleb128 0xe
	.byte	0x8
	.byte	0x5
	.long	.LASF2778
	.uleb128 0x8
	.long	.LASF2779
	.byte	0x2
	.byte	0x2d
	.byte	0x1b
	.long	0x35
	.uleb128 0xc
	.long	0xbc
	.uleb128 0xe
	.byte	0x1
	.byte	0x6
	.long	.LASF2780
	.uleb128 0x16
	.long	0xbc
	.uleb128 0x8
	.long	.LASF2781
	.byte	0x3
	.byte	0x19
	.byte	0x13
	.long	0x66
	.uleb128 0x8
	.long	.LASF2782
	.byte	0x3
	.byte	0x1a
	.byte	0x13
	.long	0x85
	.uleb128 0x8
	.long	.LASF2783
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.long	0x5a
	.uleb128 0x8
	.long	.LASF2784
	.byte	0x4
	.byte	0x19
	.byte	0x14
	.long	0x79
	.uleb128 0x8
	.long	.LASF2785
	.byte	0x4
	.byte	0x1a
	.byte	0x14
	.long	0x98
	.uleb128 0x8
	.long	.LASF2786
	.byte	0x4
	.byte	0x1b
	.byte	0x14
	.long	0xab
	.uleb128 0x5
	.long	.LASF2787
	.byte	0x5
	.value	0x1a9
	.byte	0x11
	.long	0xe0
	.uleb128 0x5
	.long	.LASF2788
	.byte	0x5
	.value	0x1b2
	.byte	0x11
	.long	0xc8
	.uleb128 0x5
	.long	.LASF2789
	.byte	0x5
	.value	0x1bb
	.byte	0x12
	.long	0xec
	.uleb128 0x5
	.long	.LASF2790
	.byte	0x5
	.value	0x1c4
	.byte	0x11
	.long	0xd4
	.uleb128 0x5
	.long	.LASF2791
	.byte	0x5
	.value	0x1cd
	.byte	0x12
	.long	0xf8
	.uleb128 0x5
	.long	.LASF2792
	.byte	0x5
	.value	0x1e3
	.byte	0x12
	.long	0x104
	.uleb128 0xe
	.byte	0x1
	.byte	0x2
	.long	.LASF2793
	.uleb128 0xc
	.long	0xc3
	.uleb128 0x16
	.long	0x165
	.uleb128 0x5
	.long	.LASF2794
	.byte	0x6
	.value	0x176
	.byte	0x10
	.long	0x144
	.uleb128 0x24
	.long	.LASF2868
	.byte	0x7
	.byte	0x4
	.long	0x3c
	.byte	0x7
	.value	0x224
	.byte	0xe
	.long	0x41e
	.uleb128 0x1
	.long	.LASF2795
	.byte	0
	.uleb128 0x4
	.long	.LASF2796
	.long	0x11100100
	.uleb128 0x4
	.long	.LASF2797
	.long	0x11200100
	.uleb128 0x4
	.long	.LASF2798
	.long	0x1c100200
	.uleb128 0x4
	.long	.LASF2799
	.long	0x1c200200
	.uleb128 0x4
	.long	.LASF2800
	.long	0x12100400
	.uleb128 0x4
	.long	.LASF2801
	.long	0x12200400
	.uleb128 0x4
	.long	.LASF2802
	.long	0x13000801
	.uleb128 0x4
	.long	.LASF2803
	.long	0x14110801
	.uleb128 0x4
	.long	.LASF2804
	.long	0x15120c02
	.uleb128 0x4
	.long	.LASF2805
	.long	0x15520c02
	.uleb128 0x4
	.long	.LASF2806
	.long	0x15130f02
	.uleb128 0x4
	.long	.LASF2807
	.long	0x15530f02
	.uleb128 0x4
	.long	.LASF2808
	.long	0x15321002
	.uleb128 0x4
	.long	.LASF2809
	.long	0x15421002
	.uleb128 0x4
	.long	.LASF2810
	.long	0x15721002
	.uleb128 0x4
	.long	.LASF2811
	.long	0x15821002
	.uleb128 0x4
	.long	.LASF2812
	.long	0x15331002
	.uleb128 0x4
	.long	.LASF2813
	.long	0x15441002
	.uleb128 0x4
	.long	.LASF2814
	.long	0x15731002
	.uleb128 0x4
	.long	.LASF2815
	.long	0x15841002
	.uleb128 0x4
	.long	.LASF2816
	.long	0x15151002
	.uleb128 0x4
	.long	.LASF2817
	.long	0x15551002
	.uleb128 0x4
	.long	.LASF2818
	.long	0x17101803
	.uleb128 0x4
	.long	.LASF2819
	.long	0x17401803
	.uleb128 0x4
	.long	.LASF2820
	.long	0x16161804
	.uleb128 0x4
	.long	.LASF2821
	.long	0x16261804
	.uleb128 0x4
	.long	.LASF2822
	.long	0x16561804
	.uleb128 0x4
	.long	.LASF2823
	.long	0x16661804
	.uleb128 0x4
	.long	.LASF2824
	.long	0x16362004
	.uleb128 0x4
	.long	.LASF2825
	.long	0x16462004
	.uleb128 0x4
	.long	.LASF2826
	.long	0x16762004
	.uleb128 0x4
	.long	.LASF2827
	.long	0x16862004
	.uleb128 0x4
	.long	.LASF2828
	.long	0x16172004
	.uleb128 0x4
	.long	.LASF2829
	.long	0x16572004
	.uleb128 0x4
	.long	.LASF2830
	.long	0x16372004
	.uleb128 0x4
	.long	.LASF2831
	.long	0x16772004
	.uleb128 0x4
	.long	.LASF2832
	.long	0x18103006
	.uleb128 0x4
	.long	.LASF2833
	.long	0x18403006
	.uleb128 0x4
	.long	.LASF2834
	.long	0x18204008
	.uleb128 0x4
	.long	.LASF2835
	.long	0x18304008
	.uleb128 0x4
	.long	.LASF2836
	.long	0x18504008
	.uleb128 0x4
	.long	.LASF2837
	.long	0x18604008
	.uleb128 0x4
	.long	.LASF2838
	.long	0x1a103006
	.uleb128 0x4
	.long	.LASF2839
	.long	0x1a403006
	.uleb128 0x4
	.long	.LASF2840
	.long	0x1a204008
	.uleb128 0x4
	.long	.LASF2841
	.long	0x1a304008
	.uleb128 0x4
	.long	.LASF2842
	.long	0x1a504008
	.uleb128 0x4
	.long	.LASF2843
	.long	0x1a604008
	.uleb128 0x4
	.long	.LASF2844
	.long	0x1b10600c
	.uleb128 0x4
	.long	.LASF2845
	.long	0x1b40600c
	.uleb128 0x4
	.long	.LASF2846
	.long	0x1b208010
	.uleb128 0x4
	.long	.LASF2847
	.long	0x1b308010
	.uleb128 0x4
	.long	.LASF2848
	.long	0x1b508010
	.uleb128 0x4
	.long	.LASF2849
	.long	0x1b608010
	.uleb128 0x4
	.long	.LASF2850
	.long	0x32315659
	.uleb128 0x4
	.long	.LASF2851
	.long	0x56555949
	.uleb128 0x4
	.long	.LASF2852
	.long	0x32595559
	.uleb128 0x4
	.long	.LASF2853
	.long	0x59565955
	.uleb128 0x4
	.long	.LASF2854
	.long	0x55595659
	.uleb128 0x4
	.long	.LASF2855
	.long	0x3231564e
	.uleb128 0x4
	.long	.LASF2856
	.long	0x3132564e
	.uleb128 0x4
	.long	.LASF2857
	.long	0x30313050
	.uleb128 0x4
	.long	.LASF2858
	.long	0x2053454f
	.uleb128 0x4
	.long	.LASF2859
	.long	0x47504a4d
	.uleb128 0x4
	.long	.LASF2860
	.long	0x16762004
	.uleb128 0x4
	.long	.LASF2861
	.long	0x16862004
	.uleb128 0x4
	.long	.LASF2862
	.long	0x16362004
	.uleb128 0x4
	.long	.LASF2863
	.long	0x16462004
	.uleb128 0x4
	.long	.LASF2864
	.long	0x16561804
	.uleb128 0x4
	.long	.LASF2865
	.long	0x16661804
	.uleb128 0x4
	.long	.LASF2866
	.long	0x16161804
	.uleb128 0x4
	.long	.LASF2867
	.long	0x16261804
	.byte	0
	.uleb128 0x5
	.long	.LASF2868
	.byte	0x7
	.value	0x2be
	.byte	0x3
	.long	0x17c
	.uleb128 0x17
	.long	.LASF2869
	.byte	0x10
	.byte	0x8
	.byte	0x6a
	.byte	0x10
	.long	0x465
	.uleb128 0xf
	.string	"x"
	.byte	0x8
	.byte	0x6c
	.byte	0xb
	.long	0x2e
	.byte	0
	.uleb128 0xf
	.string	"y"
	.byte	0x8
	.byte	0x6d
	.byte	0xb
	.long	0x2e
	.byte	0x4
	.uleb128 0xf
	.string	"w"
	.byte	0x8
	.byte	0x6e
	.byte	0xb
	.long	0x2e
	.byte	0x8
	.uleb128 0xf
	.string	"h"
	.byte	0x8
	.byte	0x6f
	.byte	0xb
	.long	0x2e
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.long	.LASF2869
	.byte	0x8
	.byte	0x70
	.byte	0x3
	.long	0x42b
	.uleb128 0x16
	.long	0x465
	.uleb128 0x8
	.long	.LASF2870
	.byte	0x9
	.byte	0x40
	.byte	0x10
	.long	0x144
	.uleb128 0x17
	.long	.LASF2871
	.byte	0x30
	.byte	0x9
	.byte	0x80
	.byte	0x8
	.long	0x4f4
	.uleb128 0x10
	.long	.LASF2872
	.byte	0x9
	.byte	0x82
	.byte	0x16
	.long	0x476
	.byte	0
	.uleb128 0x10
	.long	.LASF2873
	.byte	0x9
	.byte	0x83
	.byte	0x15
	.long	0x41e
	.byte	0x4
	.uleb128 0xf
	.string	"w"
	.byte	0x9
	.byte	0x84
	.byte	0x9
	.long	0x91
	.byte	0x8
	.uleb128 0xf
	.string	"h"
	.byte	0x9
	.byte	0x85
	.byte	0x9
	.long	0x91
	.byte	0xc
	.uleb128 0x10
	.long	.LASF2874
	.byte	0x9
	.byte	0x86
	.byte	0x9
	.long	0x91
	.byte	0x10
	.uleb128 0x10
	.long	.LASF2875
	.byte	0x9
	.byte	0x87
	.byte	0xb
	.long	0x43
	.byte	0x18
	.uleb128 0x10
	.long	.LASF2876
	.byte	0x9
	.byte	0x89
	.byte	0x9
	.long	0x91
	.byte	0x20
	.uleb128 0x10
	.long	.LASF2877
	.byte	0x9
	.byte	0x8b
	.byte	0xb
	.long	0x43
	.byte	0x28
	.byte	0
	.uleb128 0x8
	.long	.LASF2871
	.byte	0x9
	.byte	0x8f
	.byte	0x1c
	.long	0x482
	.uleb128 0x8
	.long	.LASF2878
	.byte	0xa
	.byte	0x5f
	.byte	0x10
	.long	0x144
	.uleb128 0x8
	.long	.LASF2879
	.byte	0xb
	.byte	0x4b
	.byte	0x10
	.long	0x144
	.uleb128 0x8
	.long	.LASF2880
	.byte	0xb
	.byte	0x54
	.byte	0x10
	.long	0x144
	.uleb128 0x8
	.long	.LASF2881
	.byte	0xb
	.byte	0xad
	.byte	0x1b
	.long	0x530
	.uleb128 0x1b
	.long	.LASF2881
	.uleb128 0x8
	.long	.LASF2882
	.byte	0xb
	.byte	0xbb
	.byte	0x10
	.long	0x151
	.uleb128 0xc
	.long	0x524
	.uleb128 0xc
	.long	0x16a
	.uleb128 0x13
	.long	.LASF2883
	.byte	0x5
	.long	0x91
	.byte	0xc
	.byte	0x38
	.long	0x580
	.uleb128 0x25
	.long	.LASF2884
	.sleb128 -1
	.uleb128 0x1
	.long	.LASF2885
	.byte	0
	.uleb128 0x1
	.long	.LASF2886
	.byte	0x1
	.uleb128 0x1
	.long	.LASF2887
	.byte	0x2
	.uleb128 0x1
	.long	.LASF2888
	.byte	0x3
	.uleb128 0x1
	.long	.LASF2889
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.long	.LASF2883
	.byte	0xc
	.byte	0x40
	.byte	0x3
	.long	0x54b
	.uleb128 0x8
	.long	.LASF2890
	.byte	0xd
	.byte	0x40
	.byte	0x10
	.long	0x144
	.uleb128 0x8
	.long	.LASF2891
	.byte	0xe
	.byte	0x62
	.byte	0x10
	.long	0x144
	.uleb128 0x13
	.long	.LASF2892
	.byte	0x7
	.long	0x3c
	.byte	0xf
	.byte	0x34
	.long	0xbaf
	.uleb128 0x1
	.long	.LASF2893
	.byte	0
	.uleb128 0x1
	.long	.LASF2894
	.byte	0x4
	.uleb128 0x1
	.long	.LASF2895
	.byte	0x5
	.uleb128 0x1
	.long	.LASF2896
	.byte	0x6
	.uleb128 0x1
	.long	.LASF2897
	.byte	0x7
	.uleb128 0x1
	.long	.LASF2898
	.byte	0x8
	.uleb128 0x1
	.long	.LASF2899
	.byte	0x9
	.uleb128 0x1
	.long	.LASF2900
	.byte	0xa
	.uleb128 0x1
	.long	.LASF2901
	.byte	0xb
	.uleb128 0x1
	.long	.LASF2902
	.byte	0xc
	.uleb128 0x1
	.long	.LASF2903
	.byte	0xd
	.uleb128 0x1
	.long	.LASF2904
	.byte	0xe
	.uleb128 0x1
	.long	.LASF2905
	.byte	0xf
	.uleb128 0x1
	.long	.LASF2906
	.byte	0x10
	.uleb128 0x1
	.long	.LASF2907
	.byte	0x11
	.uleb128 0x1
	.long	.LASF2908
	.byte	0x12
	.uleb128 0x1
	.long	.LASF2909
	.byte	0x13
	.uleb128 0x1
	.long	.LASF2910
	.byte	0x14
	.uleb128 0x1
	.long	.LASF2911
	.byte	0x15
	.uleb128 0x1
	.long	.LASF2912
	.byte	0x16
	.uleb128 0x1
	.long	.LASF2913
	.byte	0x17
	.uleb128 0x1
	.long	.LASF2914
	.byte	0x18
	.uleb128 0x1
	.long	.LASF2915
	.byte	0x19
	.uleb128 0x1
	.long	.LASF2916
	.byte	0x1a
	.uleb128 0x1
	.long	.LASF2917
	.byte	0x1b
	.uleb128 0x1
	.long	.LASF2918
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF2919
	.byte	0x1d
	.uleb128 0x1
	.long	.LASF2920
	.byte	0x1e
	.uleb128 0x1
	.long	.LASF2921
	.byte	0x1f
	.uleb128 0x1
	.long	.LASF2922
	.byte	0x20
	.uleb128 0x1
	.long	.LASF2923
	.byte	0x21
	.uleb128 0x1
	.long	.LASF2924
	.byte	0x22
	.uleb128 0x1
	.long	.LASF2925
	.byte	0x23
	.uleb128 0x1
	.long	.LASF2926
	.byte	0x24
	.uleb128 0x1
	.long	.LASF2927
	.byte	0x25
	.uleb128 0x1
	.long	.LASF2928
	.byte	0x26
	.uleb128 0x1
	.long	.LASF2929
	.byte	0x27
	.uleb128 0x1
	.long	.LASF2930
	.byte	0x28
	.uleb128 0x1
	.long	.LASF2931
	.byte	0x29
	.uleb128 0x1
	.long	.LASF2932
	.byte	0x2a
	.uleb128 0x1
	.long	.LASF2933
	.byte	0x2b
	.uleb128 0x1
	.long	.LASF2934
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF2935
	.byte	0x2d
	.uleb128 0x1
	.long	.LASF2936
	.byte	0x2e
	.uleb128 0x1
	.long	.LASF2937
	.byte	0x2f
	.uleb128 0x1
	.long	.LASF2938
	.byte	0x30
	.uleb128 0x1
	.long	.LASF2939
	.byte	0x31
	.uleb128 0x1
	.long	.LASF2940
	.byte	0x32
	.uleb128 0x1
	.long	.LASF2941
	.byte	0x33
	.uleb128 0x1
	.long	.LASF2942
	.byte	0x34
	.uleb128 0x1
	.long	.LASF2943
	.byte	0x35
	.uleb128 0x1
	.long	.LASF2944
	.byte	0x36
	.uleb128 0x1
	.long	.LASF2945
	.byte	0x37
	.uleb128 0x1
	.long	.LASF2946
	.byte	0x38
	.uleb128 0x1
	.long	.LASF2947
	.byte	0x39
	.uleb128 0x1
	.long	.LASF2948
	.byte	0x3a
	.uleb128 0x1
	.long	.LASF2949
	.byte	0x3b
	.uleb128 0x1
	.long	.LASF2950
	.byte	0x3c
	.uleb128 0x1
	.long	.LASF2951
	.byte	0x3d
	.uleb128 0x1
	.long	.LASF2952
	.byte	0x3e
	.uleb128 0x1
	.long	.LASF2953
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF2954
	.byte	0x40
	.uleb128 0x1
	.long	.LASF2955
	.byte	0x41
	.uleb128 0x1
	.long	.LASF2956
	.byte	0x42
	.uleb128 0x1
	.long	.LASF2957
	.byte	0x43
	.uleb128 0x1
	.long	.LASF2958
	.byte	0x44
	.uleb128 0x1
	.long	.LASF2959
	.byte	0x45
	.uleb128 0x1
	.long	.LASF2960
	.byte	0x46
	.uleb128 0x1
	.long	.LASF2961
	.byte	0x47
	.uleb128 0x1
	.long	.LASF2962
	.byte	0x48
	.uleb128 0x1
	.long	.LASF2963
	.byte	0x49
	.uleb128 0x1
	.long	.LASF2964
	.byte	0x4a
	.uleb128 0x1
	.long	.LASF2965
	.byte	0x4b
	.uleb128 0x1
	.long	.LASF2966
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF2967
	.byte	0x4d
	.uleb128 0x1
	.long	.LASF2968
	.byte	0x4e
	.uleb128 0x1
	.long	.LASF2969
	.byte	0x4f
	.uleb128 0x1
	.long	.LASF2970
	.byte	0x50
	.uleb128 0x1
	.long	.LASF2971
	.byte	0x51
	.uleb128 0x1
	.long	.LASF2972
	.byte	0x52
	.uleb128 0x1
	.long	.LASF2973
	.byte	0x53
	.uleb128 0x1
	.long	.LASF2974
	.byte	0x54
	.uleb128 0x1
	.long	.LASF2975
	.byte	0x55
	.uleb128 0x1
	.long	.LASF2976
	.byte	0x56
	.uleb128 0x1
	.long	.LASF2977
	.byte	0x57
	.uleb128 0x1
	.long	.LASF2978
	.byte	0x58
	.uleb128 0x1
	.long	.LASF2979
	.byte	0x59
	.uleb128 0x1
	.long	.LASF2980
	.byte	0x5a
	.uleb128 0x1
	.long	.LASF2981
	.byte	0x5b
	.uleb128 0x1
	.long	.LASF2982
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF2983
	.byte	0x5d
	.uleb128 0x1
	.long	.LASF2984
	.byte	0x5e
	.uleb128 0x1
	.long	.LASF2985
	.byte	0x5f
	.uleb128 0x1
	.long	.LASF2986
	.byte	0x60
	.uleb128 0x1
	.long	.LASF2987
	.byte	0x61
	.uleb128 0x1
	.long	.LASF2988
	.byte	0x62
	.uleb128 0x1
	.long	.LASF2989
	.byte	0x63
	.uleb128 0x1
	.long	.LASF2990
	.byte	0x64
	.uleb128 0x1
	.long	.LASF2991
	.byte	0x65
	.uleb128 0x1
	.long	.LASF2992
	.byte	0x66
	.uleb128 0x1
	.long	.LASF2993
	.byte	0x67
	.uleb128 0x1
	.long	.LASF2994
	.byte	0x68
	.uleb128 0x1
	.long	.LASF2995
	.byte	0x69
	.uleb128 0x1
	.long	.LASF2996
	.byte	0x6a
	.uleb128 0x1
	.long	.LASF2997
	.byte	0x6b
	.uleb128 0x1
	.long	.LASF2998
	.byte	0x6c
	.uleb128 0x1
	.long	.LASF2999
	.byte	0x6d
	.uleb128 0x1
	.long	.LASF3000
	.byte	0x6e
	.uleb128 0x1
	.long	.LASF3001
	.byte	0x6f
	.uleb128 0x1
	.long	.LASF3002
	.byte	0x70
	.uleb128 0x1
	.long	.LASF3003
	.byte	0x71
	.uleb128 0x1
	.long	.LASF3004
	.byte	0x72
	.uleb128 0x1
	.long	.LASF3005
	.byte	0x73
	.uleb128 0x1
	.long	.LASF3006
	.byte	0x74
	.uleb128 0x1
	.long	.LASF3007
	.byte	0x75
	.uleb128 0x1
	.long	.LASF3008
	.byte	0x76
	.uleb128 0x1
	.long	.LASF3009
	.byte	0x77
	.uleb128 0x1
	.long	.LASF3010
	.byte	0x78
	.uleb128 0x1
	.long	.LASF3011
	.byte	0x79
	.uleb128 0x1
	.long	.LASF3012
	.byte	0x7a
	.uleb128 0x1
	.long	.LASF3013
	.byte	0x7b
	.uleb128 0x1
	.long	.LASF3014
	.byte	0x7c
	.uleb128 0x1
	.long	.LASF3015
	.byte	0x7d
	.uleb128 0x1
	.long	.LASF3016
	.byte	0x7e
	.uleb128 0x1
	.long	.LASF3017
	.byte	0x7f
	.uleb128 0x1
	.long	.LASF3018
	.byte	0x80
	.uleb128 0x1
	.long	.LASF3019
	.byte	0x81
	.uleb128 0x1
	.long	.LASF3020
	.byte	0x85
	.uleb128 0x1
	.long	.LASF3021
	.byte	0x86
	.uleb128 0x1
	.long	.LASF3022
	.byte	0x87
	.uleb128 0x1
	.long	.LASF3023
	.byte	0x88
	.uleb128 0x1
	.long	.LASF3024
	.byte	0x89
	.uleb128 0x1
	.long	.LASF3025
	.byte	0x8a
	.uleb128 0x1
	.long	.LASF3026
	.byte	0x8b
	.uleb128 0x1
	.long	.LASF3027
	.byte	0x8c
	.uleb128 0x1
	.long	.LASF3028
	.byte	0x8d
	.uleb128 0x1
	.long	.LASF3029
	.byte	0x8e
	.uleb128 0x1
	.long	.LASF3030
	.byte	0x8f
	.uleb128 0x1
	.long	.LASF3031
	.byte	0x90
	.uleb128 0x1
	.long	.LASF3032
	.byte	0x91
	.uleb128 0x1
	.long	.LASF3033
	.byte	0x92
	.uleb128 0x1
	.long	.LASF3034
	.byte	0x93
	.uleb128 0x1
	.long	.LASF3035
	.byte	0x94
	.uleb128 0x1
	.long	.LASF3036
	.byte	0x95
	.uleb128 0x1
	.long	.LASF3037
	.byte	0x96
	.uleb128 0x1
	.long	.LASF3038
	.byte	0x97
	.uleb128 0x1
	.long	.LASF3039
	.byte	0x98
	.uleb128 0x1
	.long	.LASF3040
	.byte	0x99
	.uleb128 0x1
	.long	.LASF3041
	.byte	0x9a
	.uleb128 0x1
	.long	.LASF3042
	.byte	0x9b
	.uleb128 0x1
	.long	.LASF3043
	.byte	0x9c
	.uleb128 0x1
	.long	.LASF3044
	.byte	0x9d
	.uleb128 0x1
	.long	.LASF3045
	.byte	0x9e
	.uleb128 0x1
	.long	.LASF3046
	.byte	0x9f
	.uleb128 0x1
	.long	.LASF3047
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF3048
	.byte	0xa1
	.uleb128 0x1
	.long	.LASF3049
	.byte	0xa2
	.uleb128 0x1
	.long	.LASF3050
	.byte	0xa3
	.uleb128 0x1
	.long	.LASF3051
	.byte	0xa4
	.uleb128 0x1
	.long	.LASF3052
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF3053
	.byte	0xb1
	.uleb128 0x1
	.long	.LASF3054
	.byte	0xb2
	.uleb128 0x1
	.long	.LASF3055
	.byte	0xb3
	.uleb128 0x1
	.long	.LASF3056
	.byte	0xb4
	.uleb128 0x1
	.long	.LASF3057
	.byte	0xb5
	.uleb128 0x1
	.long	.LASF3058
	.byte	0xb6
	.uleb128 0x1
	.long	.LASF3059
	.byte	0xb7
	.uleb128 0x1
	.long	.LASF3060
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF3061
	.byte	0xb9
	.uleb128 0x1
	.long	.LASF3062
	.byte	0xba
	.uleb128 0x1
	.long	.LASF3063
	.byte	0xbb
	.uleb128 0x1
	.long	.LASF3064
	.byte	0xbc
	.uleb128 0x1
	.long	.LASF3065
	.byte	0xbd
	.uleb128 0x1
	.long	.LASF3066
	.byte	0xbe
	.uleb128 0x1
	.long	.LASF3067
	.byte	0xbf
	.uleb128 0x1
	.long	.LASF3068
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF3069
	.byte	0xc1
	.uleb128 0x1
	.long	.LASF3070
	.byte	0xc2
	.uleb128 0x1
	.long	.LASF3071
	.byte	0xc3
	.uleb128 0x1
	.long	.LASF3072
	.byte	0xc4
	.uleb128 0x1
	.long	.LASF3073
	.byte	0xc5
	.uleb128 0x1
	.long	.LASF3074
	.byte	0xc6
	.uleb128 0x1
	.long	.LASF3075
	.byte	0xc7
	.uleb128 0x1
	.long	.LASF3076
	.byte	0xc8
	.uleb128 0x1
	.long	.LASF3077
	.byte	0xc9
	.uleb128 0x1
	.long	.LASF3078
	.byte	0xca
	.uleb128 0x1
	.long	.LASF3079
	.byte	0xcb
	.uleb128 0x1
	.long	.LASF3080
	.byte	0xcc
	.uleb128 0x1
	.long	.LASF3081
	.byte	0xcd
	.uleb128 0x1
	.long	.LASF3082
	.byte	0xce
	.uleb128 0x1
	.long	.LASF3083
	.byte	0xcf
	.uleb128 0x1
	.long	.LASF3084
	.byte	0xd0
	.uleb128 0x1
	.long	.LASF3085
	.byte	0xd1
	.uleb128 0x1
	.long	.LASF3086
	.byte	0xd2
	.uleb128 0x1
	.long	.LASF3087
	.byte	0xd3
	.uleb128 0x1
	.long	.LASF3088
	.byte	0xd4
	.uleb128 0x1
	.long	.LASF3089
	.byte	0xd5
	.uleb128 0x1
	.long	.LASF3090
	.byte	0xd6
	.uleb128 0x1
	.long	.LASF3091
	.byte	0xd7
	.uleb128 0x1
	.long	.LASF3092
	.byte	0xd8
	.uleb128 0x1
	.long	.LASF3093
	.byte	0xd9
	.uleb128 0x1
	.long	.LASF3094
	.byte	0xda
	.uleb128 0x1
	.long	.LASF3095
	.byte	0xdb
	.uleb128 0x1
	.long	.LASF3096
	.byte	0xdc
	.uleb128 0x1
	.long	.LASF3097
	.byte	0xdd
	.uleb128 0x1
	.long	.LASF3098
	.byte	0xe0
	.uleb128 0x1
	.long	.LASF3099
	.byte	0xe1
	.uleb128 0x1
	.long	.LASF3100
	.byte	0xe2
	.uleb128 0x1
	.long	.LASF3101
	.byte	0xe3
	.uleb128 0x1
	.long	.LASF3102
	.byte	0xe4
	.uleb128 0x1
	.long	.LASF3103
	.byte	0xe5
	.uleb128 0x1
	.long	.LASF3104
	.byte	0xe6
	.uleb128 0x1
	.long	.LASF3105
	.byte	0xe7
	.uleb128 0x3
	.long	.LASF3106
	.value	0x101
	.uleb128 0x3
	.long	.LASF3107
	.value	0x102
	.uleb128 0x3
	.long	.LASF3108
	.value	0x103
	.uleb128 0x3
	.long	.LASF3109
	.value	0x104
	.uleb128 0x3
	.long	.LASF3110
	.value	0x105
	.uleb128 0x3
	.long	.LASF3111
	.value	0x106
	.uleb128 0x3
	.long	.LASF3112
	.value	0x107
	.uleb128 0x3
	.long	.LASF3113
	.value	0x108
	.uleb128 0x3
	.long	.LASF3114
	.value	0x109
	.uleb128 0x3
	.long	.LASF3115
	.value	0x10a
	.uleb128 0x3
	.long	.LASF3116
	.value	0x10b
	.uleb128 0x3
	.long	.LASF3117
	.value	0x10c
	.uleb128 0x3
	.long	.LASF3118
	.value	0x10d
	.uleb128 0x3
	.long	.LASF3119
	.value	0x10e
	.uleb128 0x3
	.long	.LASF3120
	.value	0x10f
	.uleb128 0x3
	.long	.LASF3121
	.value	0x110
	.uleb128 0x3
	.long	.LASF3122
	.value	0x111
	.uleb128 0x3
	.long	.LASF3123
	.value	0x112
	.uleb128 0x3
	.long	.LASF3124
	.value	0x113
	.uleb128 0x3
	.long	.LASF3125
	.value	0x114
	.uleb128 0x3
	.long	.LASF3126
	.value	0x115
	.uleb128 0x3
	.long	.LASF3127
	.value	0x116
	.uleb128 0x3
	.long	.LASF3128
	.value	0x117
	.uleb128 0x3
	.long	.LASF3129
	.value	0x118
	.uleb128 0x3
	.long	.LASF3130
	.value	0x119
	.uleb128 0x3
	.long	.LASF3131
	.value	0x11a
	.uleb128 0x3
	.long	.LASF3132
	.value	0x11b
	.uleb128 0x3
	.long	.LASF3133
	.value	0x11c
	.uleb128 0x3
	.long	.LASF3134
	.value	0x11d
	.uleb128 0x3
	.long	.LASF3135
	.value	0x11e
	.uleb128 0x3
	.long	.LASF3136
	.value	0x11f
	.uleb128 0x3
	.long	.LASF3137
	.value	0x120
	.uleb128 0x3
	.long	.LASF3138
	.value	0x121
	.uleb128 0x3
	.long	.LASF3139
	.value	0x122
	.uleb128 0x3
	.long	.LASF3140
	.value	0x190
	.uleb128 0x3
	.long	.LASF3141
	.value	0x200
	.byte	0
	.uleb128 0x5
	.long	.LASF2892
	.byte	0xf
	.value	0x1ab
	.byte	0x3
	.long	0x5a4
	.uleb128 0x8
	.long	.LASF3142
	.byte	0x10
	.byte	0x37
	.byte	0x10
	.long	0x144
	.uleb128 0x5
	.long	.LASF3143
	.byte	0x10
	.value	0x142
	.byte	0x10
	.long	0x12a
	.uleb128 0x8
	.long	.LASF3144
	.byte	0x11
	.byte	0x3c
	.byte	0x10
	.long	0x144
	.uleb128 0x8
	.long	.LASF3145
	.byte	0x12
	.byte	0x51
	.byte	0x10
	.long	0x144
	.uleb128 0x13
	.long	.LASF3146
	.byte	0x7
	.long	0x3c
	.byte	0x12
	.byte	0x7f
	.long	0xc0a
	.uleb128 0x1
	.long	.LASF3147
	.byte	0
	.uleb128 0x1
	.long	.LASF3148
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.long	.LASF3146
	.byte	0x12
	.byte	0x83
	.byte	0x3
	.long	0xbed
	.uleb128 0x8
	.long	.LASF3149
	.byte	0x12
	.byte	0x94
	.byte	0x10
	.long	0x144
	.uleb128 0x8
	.long	.LASF3150
	.byte	0x13
	.byte	0x3e
	.byte	0x10
	.long	0x151
	.uleb128 0x8
	.long	.LASF3151
	.byte	0x13
	.byte	0x4c
	.byte	0x10
	.long	0x151
	.uleb128 0x8
	.long	.LASF3152
	.byte	0x14
	.byte	0x3e
	.byte	0x10
	.long	0x144
	.uleb128 0x8
	.long	.LASF3153
	.byte	0x14
	.byte	0x54
	.byte	0x10
	.long	0x144
	.uleb128 0x13
	.long	.LASF3154
	.byte	0x7
	.long	0x3c
	.byte	0x14
	.byte	0x6d
	.long	0xc93
	.uleb128 0x1
	.long	.LASF3155
	.byte	0
	.uleb128 0x1
	.long	.LASF3156
	.byte	0x1
	.uleb128 0x1
	.long	.LASF3157
	.byte	0x2
	.uleb128 0x1
	.long	.LASF3158
	.byte	0x3
	.uleb128 0x1
	.long	.LASF3159
	.byte	0x4
	.uleb128 0x1
	.long	.LASF3160
	.byte	0x5
	.uleb128 0x1
	.long	.LASF3161
	.byte	0x6
	.uleb128 0x1
	.long	.LASF3162
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.long	.LASF3154
	.byte	0x14
	.byte	0x77
	.byte	0x3
	.long	0xc52
	.uleb128 0x13
	.long	.LASF3163
	.byte	0x7
	.long	0x3c
	.byte	0x15
	.byte	0x54
	.long	0xfeb
	.uleb128 0x1
	.long	.LASF3164
	.byte	0
	.uleb128 0x3
	.long	.LASF3165
	.value	0x100
	.uleb128 0x3
	.long	.LASF3166
	.value	0x101
	.uleb128 0x3
	.long	.LASF3167
	.value	0x102
	.uleb128 0x3
	.long	.LASF3168
	.value	0x103
	.uleb128 0x3
	.long	.LASF3169
	.value	0x104
	.uleb128 0x3
	.long	.LASF3170
	.value	0x105
	.uleb128 0x3
	.long	.LASF3171
	.value	0x106
	.uleb128 0x3
	.long	.LASF3172
	.value	0x107
	.uleb128 0x3
	.long	.LASF3173
	.value	0x108
	.uleb128 0x3
	.long	.LASF3174
	.value	0x151
	.uleb128 0x3
	.long	.LASF3175
	.value	0x152
	.uleb128 0x3
	.long	.LASF3176
	.value	0x153
	.uleb128 0x3
	.long	.LASF3177
	.value	0x154
	.uleb128 0x3
	.long	.LASF3178
	.value	0x155
	.uleb128 0x3
	.long	.LASF3179
	.value	0x156
	.uleb128 0x3
	.long	.LASF3180
	.value	0x157
	.uleb128 0x3
	.long	.LASF3181
	.value	0x151
	.uleb128 0x3
	.long	.LASF3182
	.value	0x157
	.uleb128 0x3
	.long	.LASF3183
	.value	0x202
	.uleb128 0x3
	.long	.LASF3184
	.value	0x203
	.uleb128 0x3
	.long	.LASF3185
	.value	0x204
	.uleb128 0x3
	.long	.LASF3186
	.value	0x205
	.uleb128 0x3
	.long	.LASF3187
	.value	0x206
	.uleb128 0x3
	.long	.LASF3188
	.value	0x207
	.uleb128 0x3
	.long	.LASF3189
	.value	0x208
	.uleb128 0x3
	.long	.LASF3190
	.value	0x209
	.uleb128 0x3
	.long	.LASF3191
	.value	0x20a
	.uleb128 0x3
	.long	.LASF3192
	.value	0x20b
	.uleb128 0x3
	.long	.LASF3193
	.value	0x20c
	.uleb128 0x3
	.long	.LASF3194
	.value	0x20d
	.uleb128 0x3
	.long	.LASF3195
	.value	0x20e
	.uleb128 0x3
	.long	.LASF3196
	.value	0x20f
	.uleb128 0x3
	.long	.LASF3197
	.value	0x210
	.uleb128 0x3
	.long	.LASF3198
	.value	0x211
	.uleb128 0x3
	.long	.LASF3199
	.value	0x212
	.uleb128 0x3
	.long	.LASF3200
	.value	0x213
	.uleb128 0x3
	.long	.LASF3201
	.value	0x214
	.uleb128 0x3
	.long	.LASF3202
	.value	0x215
	.uleb128 0x3
	.long	.LASF3203
	.value	0x216
	.uleb128 0x3
	.long	.LASF3204
	.value	0x217
	.uleb128 0x3
	.long	.LASF3205
	.value	0x218
	.uleb128 0x3
	.long	.LASF3206
	.value	0x219
	.uleb128 0x3
	.long	.LASF3207
	.value	0x21a
	.uleb128 0x3
	.long	.LASF3208
	.value	0x202
	.uleb128 0x3
	.long	.LASF3209
	.value	0x21a
	.uleb128 0x3
	.long	.LASF3210
	.value	0x300
	.uleb128 0x3
	.long	.LASF3211
	.value	0x301
	.uleb128 0x3
	.long	.LASF3212
	.value	0x302
	.uleb128 0x3
	.long	.LASF3213
	.value	0x303
	.uleb128 0x3
	.long	.LASF3214
	.value	0x304
	.uleb128 0x3
	.long	.LASF3215
	.value	0x305
	.uleb128 0x3
	.long	.LASF3216
	.value	0x306
	.uleb128 0x3
	.long	.LASF3217
	.value	0x307
	.uleb128 0x3
	.long	.LASF3218
	.value	0x400
	.uleb128 0x3
	.long	.LASF3219
	.value	0x401
	.uleb128 0x3
	.long	.LASF3220
	.value	0x402
	.uleb128 0x3
	.long	.LASF3221
	.value	0x403
	.uleb128 0x3
	.long	.LASF3222
	.value	0x404
	.uleb128 0x3
	.long	.LASF3223
	.value	0x405
	.uleb128 0x3
	.long	.LASF3224
	.value	0x600
	.uleb128 0x3
	.long	.LASF3225
	.value	0x601
	.uleb128 0x3
	.long	.LASF3226
	.value	0x602
	.uleb128 0x3
	.long	.LASF3227
	.value	0x603
	.uleb128 0x3
	.long	.LASF3228
	.value	0x604
	.uleb128 0x3
	.long	.LASF3229
	.value	0x605
	.uleb128 0x3
	.long	.LASF3230
	.value	0x606
	.uleb128 0x3
	.long	.LASF3231
	.value	0x607
	.uleb128 0x3
	.long	.LASF3232
	.value	0x608
	.uleb128 0x3
	.long	.LASF3233
	.value	0x650
	.uleb128 0x3
	.long	.LASF3234
	.value	0x651
	.uleb128 0x3
	.long	.LASF3235
	.value	0x652
	.uleb128 0x3
	.long	.LASF3236
	.value	0x653
	.uleb128 0x3
	.long	.LASF3237
	.value	0x654
	.uleb128 0x3
	.long	.LASF3238
	.value	0x655
	.uleb128 0x3
	.long	.LASF3239
	.value	0x656
	.uleb128 0x3
	.long	.LASF3240
	.value	0x657
	.uleb128 0x3
	.long	.LASF3241
	.value	0x658
	.uleb128 0x3
	.long	.LASF3242
	.value	0x659
	.uleb128 0x3
	.long	.LASF3243
	.value	0x65a
	.uleb128 0x3
	.long	.LASF3244
	.value	0x65b
	.uleb128 0x3
	.long	.LASF3245
	.value	0x700
	.uleb128 0x3
	.long	.LASF3246
	.value	0x701
	.uleb128 0x3
	.long	.LASF3247
	.value	0x702
	.uleb128 0x3
	.long	.LASF3248
	.value	0x703
	.uleb128 0x3
	.long	.LASF3249
	.value	0x900
	.uleb128 0x3
	.long	.LASF3250
	.value	0x1000
	.uleb128 0x3
	.long	.LASF3251
	.value	0x1001
	.uleb128 0x3
	.long	.LASF3252
	.value	0x1002
	.uleb128 0x3
	.long	.LASF3253
	.value	0x1003
	.uleb128 0x3
	.long	.LASF3254
	.value	0x1004
	.uleb128 0x3
	.long	.LASF3255
	.value	0x1100
	.uleb128 0x3
	.long	.LASF3256
	.value	0x1101
	.uleb128 0x3
	.long	.LASF3257
	.value	0x1102
	.uleb128 0x3
	.long	.LASF3258
	.value	0x1200
	.uleb128 0x3
	.long	.LASF3259
	.value	0x1300
	.uleb128 0x3
	.long	.LASF3260
	.value	0x1301
	.uleb128 0x3
	.long	.LASF3261
	.value	0x1302
	.uleb128 0x3
	.long	.LASF3262
	.value	0x1303
	.uleb128 0x3
	.long	.LASF3263
	.value	0x1304
	.uleb128 0x3
	.long	.LASF3264
	.value	0x1305
	.uleb128 0x3
	.long	.LASF3265
	.value	0x1306
	.uleb128 0x3
	.long	.LASF3266
	.value	0x1307
	.uleb128 0x3
	.long	.LASF3267
	.value	0x1400
	.uleb128 0x3
	.long	.LASF3268
	.value	0x1401
	.uleb128 0x3
	.long	.LASF3269
	.value	0x1402
	.uleb128 0x3
	.long	.LASF3270
	.value	0x1403
	.uleb128 0x3
	.long	.LASF3271
	.value	0x2000
	.uleb128 0x3
	.long	.LASF3272
	.value	0x2001
	.uleb128 0x3
	.long	.LASF3273
	.value	0x2002
	.uleb128 0x3
	.long	.LASF3274
	.value	0x4000
	.uleb128 0x3
	.long	.LASF3275
	.value	0x4001
	.uleb128 0x3
	.long	.LASF3276
	.value	0x4002
	.uleb128 0x3
	.long	.LASF3277
	.value	0x4003
	.uleb128 0x3
	.long	.LASF3278
	.value	0x7f00
	.uleb128 0x3
	.long	.LASF3279
	.value	0x8000
	.uleb128 0x3
	.long	.LASF3280
	.value	0xffff
	.uleb128 0x4
	.long	.LASF3281
	.long	0x7fffffff
	.byte	0
	.uleb128 0x5
	.long	.LASF3163
	.byte	0x15
	.value	0x118
	.byte	0x3
	.long	0xc9f
	.uleb128 0x7
	.long	.LASF3282
	.byte	0x10
	.value	0x11f
	.long	0x102c
	.uleb128 0x2
	.long	.LASF3283
	.value	0x121
	.byte	0xc
	.long	0x144
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x122
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x123
	.byte	0xc
	.long	0x151
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF3282
	.byte	0x15
	.value	0x124
	.byte	0x3
	.long	0xff8
	.uleb128 0x7
	.long	.LASF3285
	.byte	0x20
	.value	0x12b
	.long	0x1094
	.uleb128 0x2
	.long	.LASF3283
	.value	0x12d
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x12e
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x12f
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3286
	.value	0x130
	.byte	0x13
	.long	0x50c
	.byte	0x10
	.uleb128 0x2
	.long	.LASF3287
	.value	0x131
	.byte	0xc
	.long	0x137
	.byte	0x14
	.uleb128 0x2
	.long	.LASF3288
	.value	0x132
	.byte	0xc
	.long	0x137
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF3285
	.byte	0x15
	.value	0x133
	.byte	0x3
	.long	0x1039
	.uleb128 0x7
	.long	.LASF3289
	.byte	0x20
	.value	0x13a
	.long	0x10fc
	.uleb128 0x2
	.long	.LASF3283
	.value	0x13c
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x13d
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x13e
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3290
	.value	0x13f
	.byte	0x12
	.long	0x518
	.byte	0x10
	.uleb128 0x2
	.long	.LASF3287
	.value	0x140
	.byte	0xc
	.long	0x137
	.byte	0x14
	.uleb128 0x2
	.long	.LASF3288
	.value	0x141
	.byte	0xc
	.long	0x137
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF3289
	.byte	0x15
	.value	0x142
	.byte	0x3
	.long	0x10a1
	.uleb128 0x7
	.long	.LASF3291
	.byte	0x18
	.value	0x149
	.long	0x114a
	.uleb128 0x2
	.long	.LASF3283
	.value	0x14b
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x14c
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x14d
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3292
	.value	0x14e
	.byte	0x14
	.long	0xbd5
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF3291
	.byte	0x15
	.value	0x14f
	.byte	0x3
	.long	0x1109
	.uleb128 0x7
	.long	.LASF3293
	.byte	0x28
	.value	0x15f
	.long	0x11f3
	.uleb128 0x2
	.long	.LASF3283
	.value	0x161
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x162
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x163
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3290
	.value	0x164
	.byte	0x12
	.long	0x518
	.byte	0x10
	.uleb128 0x2
	.long	.LASF3292
	.value	0x165
	.byte	0x14
	.long	0xbd5
	.byte	0x14
	.uleb128 0x2
	.long	.LASF3294
	.value	0x166
	.byte	0x12
	.long	0xbaf
	.byte	0x18
	.uleb128 0xb
	.string	"key"
	.value	0x167
	.byte	0x11
	.long	0xbbc
	.byte	0x1c
	.uleb128 0xb
	.string	"mod"
	.value	0x168
	.byte	0x10
	.long	0xbc8
	.byte	0x20
	.uleb128 0xb
	.string	"raw"
	.value	0x169
	.byte	0xc
	.long	0x12a
	.byte	0x22
	.uleb128 0x2
	.long	.LASF3295
	.value	0x16a
	.byte	0xb
	.long	0x15e
	.byte	0x24
	.uleb128 0x2
	.long	.LASF3296
	.value	0x16b
	.byte	0xb
	.long	0x15e
	.byte	0x25
	.byte	0
	.uleb128 0x5
	.long	.LASF3293
	.byte	0x15
	.value	0x16c
	.byte	0x3
	.long	0x1157
	.uleb128 0x7
	.long	.LASF3297
	.byte	0x28
	.value	0x177
	.long	0x1268
	.uleb128 0x2
	.long	.LASF3283
	.value	0x179
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x17a
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x17b
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3290
	.value	0x17c
	.byte	0x12
	.long	0x518
	.byte	0x10
	.uleb128 0x2
	.long	.LASF3298
	.value	0x17d
	.byte	0x11
	.long	0x165
	.byte	0x18
	.uleb128 0x2
	.long	.LASF3299
	.value	0x17e
	.byte	0xc
	.long	0x137
	.byte	0x20
	.uleb128 0x2
	.long	.LASF3300
	.value	0x17f
	.byte	0xc
	.long	0x137
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.long	.LASF3297
	.byte	0x15
	.value	0x180
	.byte	0x3
	.long	0x1200
	.uleb128 0x7
	.long	.LASF3301
	.byte	0x30
	.value	0x187
	.long	0x1311
	.uleb128 0x2
	.long	.LASF3283
	.value	0x189
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x18a
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x18b
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3290
	.value	0x18c
	.byte	0x12
	.long	0x518
	.byte	0x10
	.uleb128 0x2
	.long	.LASF3302
	.value	0x18d
	.byte	0x19
	.long	0x546
	.byte	0x18
	.uleb128 0x2
	.long	.LASF3303
	.value	0x18e
	.byte	0xc
	.long	0x137
	.byte	0x20
	.uleb128 0x2
	.long	.LASF3304
	.value	0x18f
	.byte	0xc
	.long	0x137
	.byte	0x24
	.uleb128 0x2
	.long	.LASF3305
	.value	0x190
	.byte	0xb
	.long	0x15e
	.byte	0x28
	.uleb128 0x2
	.long	.LASF3306
	.value	0x191
	.byte	0xb
	.long	0x110
	.byte	0x29
	.uleb128 0x2
	.long	.LASF3307
	.value	0x192
	.byte	0xb
	.long	0x110
	.byte	0x2a
	.uleb128 0x2
	.long	.LASF3308
	.value	0x193
	.byte	0xb
	.long	0x110
	.byte	0x2b
	.byte	0
	.uleb128 0x5
	.long	.LASF3301
	.byte	0x15
	.value	0x194
	.byte	0x3
	.long	0x1275
	.uleb128 0x7
	.long	.LASF3309
	.byte	0x20
	.value	0x1a1
	.long	0x136c
	.uleb128 0x2
	.long	.LASF3283
	.value	0x1a3
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x1a4
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x1a5
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3290
	.value	0x1a6
	.byte	0x12
	.long	0x518
	.byte	0x10
	.uleb128 0x2
	.long	.LASF3298
	.value	0x1a7
	.byte	0x11
	.long	0x165
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF3309
	.byte	0x15
	.value	0x1a8
	.byte	0x3
	.long	0x131e
	.uleb128 0x7
	.long	.LASF3310
	.byte	0x18
	.value	0x1af
	.long	0x13ba
	.uleb128 0x2
	.long	.LASF3283
	.value	0x1b1
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x1b2
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x1b3
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3292
	.value	0x1b4
	.byte	0x11
	.long	0xbe1
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF3310
	.byte	0x15
	.value	0x1b5
	.byte	0x3
	.long	0x1379
	.uleb128 0x7
	.long	.LASF3311
	.byte	0x30
	.value	0x1bc
	.long	0x1452
	.uleb128 0x2
	.long	.LASF3283
	.value	0x1be
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x1bf
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x1c0
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3290
	.value	0x1c1
	.byte	0x12
	.long	0x518
	.byte	0x10
	.uleb128 0x2
	.long	.LASF3292
	.value	0x1c2
	.byte	0x11
	.long	0xbe1
	.byte	0x14
	.uleb128 0x2
	.long	.LASF3312
	.value	0x1c3
	.byte	0x1a
	.long	0xc16
	.byte	0x18
	.uleb128 0xb
	.string	"x"
	.value	0x1c4
	.byte	0xb
	.long	0x2e
	.byte	0x1c
	.uleb128 0xb
	.string	"y"
	.value	0x1c5
	.byte	0xb
	.long	0x2e
	.byte	0x20
	.uleb128 0x2
	.long	.LASF3313
	.value	0x1c6
	.byte	0xb
	.long	0x2e
	.byte	0x24
	.uleb128 0x2
	.long	.LASF3314
	.value	0x1c7
	.byte	0xb
	.long	0x2e
	.byte	0x28
	.byte	0
	.uleb128 0x5
	.long	.LASF3311
	.byte	0x15
	.value	0x1c8
	.byte	0x3
	.long	0x13c7
	.uleb128 0x7
	.long	.LASF3315
	.byte	0x28
	.value	0x1cf
	.long	0x14f7
	.uleb128 0x2
	.long	.LASF3283
	.value	0x1d1
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x1d2
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x1d3
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3290
	.value	0x1d4
	.byte	0x12
	.long	0x518
	.byte	0x10
	.uleb128 0x2
	.long	.LASF3292
	.value	0x1d5
	.byte	0x11
	.long	0xbe1
	.byte	0x14
	.uleb128 0x2
	.long	.LASF3316
	.value	0x1d6
	.byte	0xb
	.long	0x110
	.byte	0x18
	.uleb128 0x2
	.long	.LASF3295
	.value	0x1d7
	.byte	0xb
	.long	0x15e
	.byte	0x19
	.uleb128 0x2
	.long	.LASF3317
	.value	0x1d8
	.byte	0xb
	.long	0x110
	.byte	0x1a
	.uleb128 0x2
	.long	.LASF3318
	.value	0x1d9
	.byte	0xb
	.long	0x110
	.byte	0x1b
	.uleb128 0xb
	.string	"x"
	.value	0x1da
	.byte	0xb
	.long	0x2e
	.byte	0x1c
	.uleb128 0xb
	.string	"y"
	.value	0x1db
	.byte	0xb
	.long	0x2e
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.long	.LASF3315
	.byte	0x15
	.value	0x1dc
	.byte	0x3
	.long	0x145f
	.uleb128 0x7
	.long	.LASF3319
	.byte	0x30
	.value	0x1e3
	.long	0x158f
	.uleb128 0x2
	.long	.LASF3283
	.value	0x1e5
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x1e6
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x1e7
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3290
	.value	0x1e8
	.byte	0x12
	.long	0x518
	.byte	0x10
	.uleb128 0x2
	.long	.LASF3292
	.value	0x1e9
	.byte	0x11
	.long	0xbe1
	.byte	0x14
	.uleb128 0xb
	.string	"x"
	.value	0x1ea
	.byte	0xb
	.long	0x2e
	.byte	0x18
	.uleb128 0xb
	.string	"y"
	.value	0x1eb
	.byte	0xb
	.long	0x2e
	.byte	0x1c
	.uleb128 0x2
	.long	.LASF3320
	.value	0x1ec
	.byte	0x1d
	.long	0xc0a
	.byte	0x20
	.uleb128 0x2
	.long	.LASF3321
	.value	0x1ed
	.byte	0xb
	.long	0x2e
	.byte	0x24
	.uleb128 0x2
	.long	.LASF3322
	.value	0x1ee
	.byte	0xb
	.long	0x2e
	.byte	0x28
	.byte	0
	.uleb128 0x5
	.long	.LASF3319
	.byte	0x15
	.value	0x1ef
	.byte	0x3
	.long	0x1504
	.uleb128 0x7
	.long	.LASF3323
	.byte	0x20
	.value	0x1f6
	.long	0x162b
	.uleb128 0x2
	.long	.LASF3283
	.value	0x1f8
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x1f9
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x1fa
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3292
	.value	0x1fb
	.byte	0x14
	.long	0x598
	.byte	0x10
	.uleb128 0x2
	.long	.LASF3324
	.value	0x1fc
	.byte	0xb
	.long	0x110
	.byte	0x14
	.uleb128 0x2
	.long	.LASF3306
	.value	0x1fd
	.byte	0xb
	.long	0x110
	.byte	0x15
	.uleb128 0x2
	.long	.LASF3307
	.value	0x1fe
	.byte	0xb
	.long	0x110
	.byte	0x16
	.uleb128 0x2
	.long	.LASF3308
	.value	0x1ff
	.byte	0xb
	.long	0x110
	.byte	0x17
	.uleb128 0x2
	.long	.LASF3325
	.value	0x200
	.byte	0xc
	.long	0x11d
	.byte	0x18
	.uleb128 0x2
	.long	.LASF3326
	.value	0x201
	.byte	0xc
	.long	0x12a
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.long	.LASF3323
	.byte	0x15
	.value	0x202
	.byte	0x3
	.long	0x159c
	.uleb128 0x7
	.long	.LASF3327
	.byte	0x20
	.value	0x209
	.long	0x16c7
	.uleb128 0x2
	.long	.LASF3283
	.value	0x20b
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x20c
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x20d
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3292
	.value	0x20e
	.byte	0x14
	.long	0x598
	.byte	0x10
	.uleb128 0x2
	.long	.LASF3328
	.value	0x20f
	.byte	0xb
	.long	0x110
	.byte	0x14
	.uleb128 0x2
	.long	.LASF3306
	.value	0x210
	.byte	0xb
	.long	0x110
	.byte	0x15
	.uleb128 0x2
	.long	.LASF3307
	.value	0x211
	.byte	0xb
	.long	0x110
	.byte	0x16
	.uleb128 0x2
	.long	.LASF3308
	.value	0x212
	.byte	0xb
	.long	0x110
	.byte	0x17
	.uleb128 0x2
	.long	.LASF3313
	.value	0x213
	.byte	0xc
	.long	0x11d
	.byte	0x18
	.uleb128 0x2
	.long	.LASF3314
	.value	0x214
	.byte	0xc
	.long	0x11d
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.long	.LASF3327
	.byte	0x15
	.value	0x215
	.byte	0x3
	.long	0x1638
	.uleb128 0x7
	.long	.LASF3329
	.byte	0x18
	.value	0x21c
	.long	0x1749
	.uleb128 0x2
	.long	.LASF3283
	.value	0x21e
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x21f
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x220
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3292
	.value	0x221
	.byte	0x14
	.long	0x598
	.byte	0x10
	.uleb128 0xb
	.string	"hat"
	.value	0x222
	.byte	0xb
	.long	0x110
	.byte	0x14
	.uleb128 0x2
	.long	.LASF3325
	.value	0x223
	.byte	0xb
	.long	0x110
	.byte	0x15
	.uleb128 0x2
	.long	.LASF3306
	.value	0x22a
	.byte	0xb
	.long	0x110
	.byte	0x16
	.uleb128 0x2
	.long	.LASF3307
	.value	0x22b
	.byte	0xb
	.long	0x110
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF3329
	.byte	0x15
	.value	0x22c
	.byte	0x3
	.long	0x16d4
	.uleb128 0x7
	.long	.LASF3330
	.byte	0x18
	.value	0x233
	.long	0x17cb
	.uleb128 0x2
	.long	.LASF3283
	.value	0x235
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x236
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x237
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3292
	.value	0x238
	.byte	0x14
	.long	0x598
	.byte	0x10
	.uleb128 0x2
	.long	.LASF3316
	.value	0x239
	.byte	0xb
	.long	0x110
	.byte	0x14
	.uleb128 0x2
	.long	.LASF3295
	.value	0x23a
	.byte	0xb
	.long	0x15e
	.byte	0x15
	.uleb128 0x2
	.long	.LASF3306
	.value	0x23b
	.byte	0xb
	.long	0x110
	.byte	0x16
	.uleb128 0x2
	.long	.LASF3307
	.value	0x23c
	.byte	0xb
	.long	0x110
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF3330
	.byte	0x15
	.value	0x23d
	.byte	0x3
	.long	0x1756
	.uleb128 0x7
	.long	.LASF3331
	.byte	0x18
	.value	0x249
	.long	0x1819
	.uleb128 0x2
	.long	.LASF3283
	.value	0x24b
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x24c
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x24d
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3292
	.value	0x24e
	.byte	0x14
	.long	0x598
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF3331
	.byte	0x15
	.value	0x24f
	.byte	0x3
	.long	0x17d8
	.uleb128 0x7
	.long	.LASF3332
	.byte	0x20
	.value	0x256
	.long	0x1881
	.uleb128 0x2
	.long	.LASF3283
	.value	0x258
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x259
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x25a
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3292
	.value	0x25b
	.byte	0x14
	.long	0x598
	.byte	0x10
	.uleb128 0x2
	.long	.LASF3312
	.value	0x25c
	.byte	0x14
	.long	0x580
	.byte	0x14
	.uleb128 0x2
	.long	.LASF3333
	.value	0x25d
	.byte	0x9
	.long	0x91
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.long	.LASF3332
	.byte	0x15
	.value	0x25e
	.byte	0x3
	.long	0x1826
	.uleb128 0x7
	.long	.LASF3334
	.byte	0x20
	.value	0x265
	.long	0x191d
	.uleb128 0x2
	.long	.LASF3283
	.value	0x267
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x268
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x269
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3292
	.value	0x26a
	.byte	0x14
	.long	0x598
	.byte	0x10
	.uleb128 0x2
	.long	.LASF3324
	.value	0x26b
	.byte	0xb
	.long	0x110
	.byte	0x14
	.uleb128 0x2
	.long	.LASF3306
	.value	0x26c
	.byte	0xb
	.long	0x110
	.byte	0x15
	.uleb128 0x2
	.long	.LASF3307
	.value	0x26d
	.byte	0xb
	.long	0x110
	.byte	0x16
	.uleb128 0x2
	.long	.LASF3308
	.value	0x26e
	.byte	0xb
	.long	0x110
	.byte	0x17
	.uleb128 0x2
	.long	.LASF3325
	.value	0x26f
	.byte	0xc
	.long	0x11d
	.byte	0x18
	.uleb128 0x2
	.long	.LASF3326
	.value	0x270
	.byte	0xc
	.long	0x12a
	.byte	0x1a
	.byte	0
	.uleb128 0x5
	.long	.LASF3334
	.byte	0x15
	.value	0x271
	.byte	0x3
	.long	0x188e
	.uleb128 0x7
	.long	.LASF3335
	.byte	0x18
	.value	0x279
	.long	0x199f
	.uleb128 0x2
	.long	.LASF3283
	.value	0x27b
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x27c
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x27d
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3292
	.value	0x27e
	.byte	0x14
	.long	0x598
	.byte	0x10
	.uleb128 0x2
	.long	.LASF3316
	.value	0x27f
	.byte	0xb
	.long	0x110
	.byte	0x14
	.uleb128 0x2
	.long	.LASF3295
	.value	0x280
	.byte	0xb
	.long	0x15e
	.byte	0x15
	.uleb128 0x2
	.long	.LASF3306
	.value	0x281
	.byte	0xb
	.long	0x110
	.byte	0x16
	.uleb128 0x2
	.long	.LASF3307
	.value	0x282
	.byte	0xb
	.long	0x110
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF3335
	.byte	0x15
	.value	0x283
	.byte	0x3
	.long	0x192a
	.uleb128 0x7
	.long	.LASF3336
	.byte	0x18
	.value	0x294
	.long	0x19ed
	.uleb128 0x2
	.long	.LASF3283
	.value	0x296
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x297
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x298
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3292
	.value	0x299
	.byte	0x14
	.long	0x598
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF3336
	.byte	0x15
	.value	0x29a
	.byte	0x3
	.long	0x19ac
	.uleb128 0x7
	.long	.LASF3337
	.byte	0x28
	.value	0x2a1
	.long	0x1a78
	.uleb128 0x2
	.long	.LASF3283
	.value	0x2a3
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x2a4
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x2a5
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3292
	.value	0x2a6
	.byte	0x14
	.long	0x598
	.byte	0x10
	.uleb128 0x2
	.long	.LASF3338
	.value	0x2a7
	.byte	0xc
	.long	0x137
	.byte	0x14
	.uleb128 0x2
	.long	.LASF3339
	.value	0x2a8
	.byte	0xc
	.long	0x137
	.byte	0x18
	.uleb128 0xb
	.string	"x"
	.value	0x2a9
	.byte	0xb
	.long	0x2e
	.byte	0x1c
	.uleb128 0xb
	.string	"y"
	.value	0x2aa
	.byte	0xb
	.long	0x2e
	.byte	0x20
	.uleb128 0x2
	.long	.LASF3340
	.value	0x2ab
	.byte	0xb
	.long	0x2e
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.long	.LASF3337
	.byte	0x15
	.value	0x2ac
	.byte	0x3
	.long	0x19fa
	.uleb128 0x7
	.long	.LASF3341
	.byte	0x30
	.value	0x2b3
	.long	0x1aed
	.uleb128 0x2
	.long	.LASF3283
	.value	0x2b5
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x2b6
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x2b7
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3292
	.value	0x2b8
	.byte	0x14
	.long	0x598
	.byte	0x10
	.uleb128 0x2
	.long	.LASF3342
	.value	0x2b9
	.byte	0xc
	.long	0x137
	.byte	0x14
	.uleb128 0x2
	.long	.LASF3343
	.value	0x2ba
	.byte	0xb
	.long	0x1aed
	.byte	0x18
	.uleb128 0x2
	.long	.LASF3344
	.value	0x2bb
	.byte	0xc
	.long	0x151
	.byte	0x28
	.byte	0
	.uleb128 0x18
	.long	0x2e
	.long	0x1afd
	.uleb128 0x19
	.long	0x35
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.long	.LASF3341
	.byte	0x15
	.value	0x2bc
	.byte	0x3
	.long	0x1a85
	.uleb128 0x7
	.long	.LASF3345
	.byte	0x18
	.value	0x2c3
	.long	0x1b7f
	.uleb128 0x2
	.long	.LASF3283
	.value	0x2c5
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x2c6
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x2c7
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3292
	.value	0x2c8
	.byte	0x17
	.long	0x16f
	.byte	0x10
	.uleb128 0x2
	.long	.LASF3346
	.value	0x2c9
	.byte	0xb
	.long	0x15e
	.byte	0x14
	.uleb128 0x2
	.long	.LASF3306
	.value	0x2ca
	.byte	0xb
	.long	0x110
	.byte	0x15
	.uleb128 0x2
	.long	.LASF3307
	.value	0x2cb
	.byte	0xb
	.long	0x110
	.byte	0x16
	.uleb128 0x2
	.long	.LASF3308
	.value	0x2cc
	.byte	0xb
	.long	0x110
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.long	.LASF3345
	.byte	0x15
	.value	0x2cd
	.byte	0x3
	.long	0x1b0a
	.uleb128 0x7
	.long	.LASF3347
	.byte	0x18
	.value	0x2d4
	.long	0x1bcd
	.uleb128 0x2
	.long	.LASF3283
	.value	0x2d6
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x2d7
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x2d8
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3292
	.value	0x2d9
	.byte	0x12
	.long	0x500
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF3347
	.byte	0x15
	.value	0x2da
	.byte	0x3
	.long	0x1b8c
	.uleb128 0x7
	.long	.LASF3348
	.byte	0x18
	.value	0x2e2
	.long	0x1c1b
	.uleb128 0x2
	.long	.LASF3283
	.value	0x2e4
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x2e5
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x2e6
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3290
	.value	0x2e7
	.byte	0x12
	.long	0x518
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.long	.LASF3348
	.byte	0x15
	.value	0x2e8
	.byte	0x3
	.long	0x1bda
	.uleb128 0x7
	.long	.LASF3349
	.byte	0x38
	.value	0x2fe
	.long	0x1cbe
	.uleb128 0x2
	.long	.LASF3283
	.value	0x300
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x301
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x302
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3350
	.value	0x303
	.byte	0x11
	.long	0xc22
	.byte	0x10
	.uleb128 0x2
	.long	.LASF3351
	.value	0x304
	.byte	0x12
	.long	0xc2e
	.byte	0x18
	.uleb128 0xb
	.string	"x"
	.value	0x305
	.byte	0xb
	.long	0x2e
	.byte	0x20
	.uleb128 0xb
	.string	"y"
	.value	0x306
	.byte	0xb
	.long	0x2e
	.byte	0x24
	.uleb128 0xb
	.string	"dx"
	.value	0x307
	.byte	0xb
	.long	0x2e
	.byte	0x28
	.uleb128 0xb
	.string	"dy"
	.value	0x308
	.byte	0xb
	.long	0x2e
	.byte	0x2c
	.uleb128 0x2
	.long	.LASF3340
	.value	0x309
	.byte	0xb
	.long	0x2e
	.byte	0x30
	.uleb128 0x2
	.long	.LASF3290
	.value	0x30a
	.byte	0x12
	.long	0x518
	.byte	0x34
	.byte	0
	.uleb128 0x5
	.long	.LASF3349
	.byte	0x15
	.value	0x30b
	.byte	0x3
	.long	0x1c28
	.uleb128 0x7
	.long	.LASF3352
	.byte	0x18
	.value	0x31c
	.long	0x1d19
	.uleb128 0x2
	.long	.LASF3283
	.value	0x31e
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x31f
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x320
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3290
	.value	0x321
	.byte	0x12
	.long	0x518
	.byte	0x10
	.uleb128 0x2
	.long	.LASF3292
	.value	0x322
	.byte	0xf
	.long	0xc3a
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.long	.LASF3352
	.byte	0x15
	.value	0x323
	.byte	0x3
	.long	0x1ccb
	.uleb128 0x7
	.long	.LASF3353
	.byte	0x28
	.value	0x330
	.long	0x1d97
	.uleb128 0x2
	.long	.LASF3283
	.value	0x332
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x333
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x334
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3290
	.value	0x335
	.byte	0x12
	.long	0x518
	.byte	0x10
	.uleb128 0x2
	.long	.LASF3292
	.value	0x336
	.byte	0xf
	.long	0xc3a
	.byte	0x14
	.uleb128 0x2
	.long	.LASF3354
	.value	0x337
	.byte	0x17
	.long	0xc46
	.byte	0x18
	.uleb128 0xb
	.string	"x"
	.value	0x338
	.byte	0xb
	.long	0x2e
	.byte	0x1c
	.uleb128 0xb
	.string	"y"
	.value	0x339
	.byte	0xb
	.long	0x2e
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.long	.LASF3353
	.byte	0x15
	.value	0x33a
	.byte	0x3
	.long	0x1d26
	.uleb128 0x7
	.long	.LASF3355
	.byte	0x28
	.value	0x344
	.long	0x1e2f
	.uleb128 0x2
	.long	.LASF3283
	.value	0x346
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x347
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x348
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3290
	.value	0x349
	.byte	0x12
	.long	0x518
	.byte	0x10
	.uleb128 0x2
	.long	.LASF3292
	.value	0x34a
	.byte	0xf
	.long	0xc3a
	.byte	0x14
	.uleb128 0x2
	.long	.LASF3354
	.value	0x34b
	.byte	0x17
	.long	0xc46
	.byte	0x18
	.uleb128 0xb
	.string	"x"
	.value	0x34c
	.byte	0xb
	.long	0x2e
	.byte	0x1c
	.uleb128 0xb
	.string	"y"
	.value	0x34d
	.byte	0xb
	.long	0x2e
	.byte	0x20
	.uleb128 0x2
	.long	.LASF3356
	.value	0x34e
	.byte	0xb
	.long	0x15e
	.byte	0x24
	.uleb128 0x2
	.long	.LASF3295
	.value	0x34f
	.byte	0xb
	.long	0x15e
	.byte	0x25
	.byte	0
	.uleb128 0x5
	.long	.LASF3355
	.byte	0x15
	.value	0x350
	.byte	0x3
	.long	0x1da4
	.uleb128 0x7
	.long	.LASF3357
	.byte	0x28
	.value	0x35a
	.long	0x1ec7
	.uleb128 0x2
	.long	.LASF3283
	.value	0x35c
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x35d
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x35e
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3290
	.value	0x35f
	.byte	0x12
	.long	0x518
	.byte	0x10
	.uleb128 0x2
	.long	.LASF3292
	.value	0x360
	.byte	0xf
	.long	0xc3a
	.byte	0x14
	.uleb128 0x2
	.long	.LASF3354
	.value	0x361
	.byte	0x17
	.long	0xc46
	.byte	0x18
	.uleb128 0xb
	.string	"x"
	.value	0x362
	.byte	0xb
	.long	0x2e
	.byte	0x1c
	.uleb128 0xb
	.string	"y"
	.value	0x363
	.byte	0xb
	.long	0x2e
	.byte	0x20
	.uleb128 0x2
	.long	.LASF3316
	.value	0x364
	.byte	0xb
	.long	0x110
	.byte	0x24
	.uleb128 0x2
	.long	.LASF3295
	.value	0x365
	.byte	0xb
	.long	0x15e
	.byte	0x25
	.byte	0
	.uleb128 0x5
	.long	.LASF3357
	.byte	0x15
	.value	0x366
	.byte	0x3
	.long	0x1e3c
	.uleb128 0x7
	.long	.LASF3358
	.byte	0x30
	.value	0x370
	.long	0x1f5f
	.uleb128 0x2
	.long	.LASF3283
	.value	0x372
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x373
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x374
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3290
	.value	0x375
	.byte	0x12
	.long	0x518
	.byte	0x10
	.uleb128 0x2
	.long	.LASF3292
	.value	0x376
	.byte	0xf
	.long	0xc3a
	.byte	0x14
	.uleb128 0x2
	.long	.LASF3354
	.value	0x377
	.byte	0x17
	.long	0xc46
	.byte	0x18
	.uleb128 0xb
	.string	"x"
	.value	0x378
	.byte	0xb
	.long	0x2e
	.byte	0x1c
	.uleb128 0xb
	.string	"y"
	.value	0x379
	.byte	0xb
	.long	0x2e
	.byte	0x20
	.uleb128 0x2
	.long	.LASF3324
	.value	0x37a
	.byte	0x11
	.long	0xc93
	.byte	0x24
	.uleb128 0x2
	.long	.LASF3325
	.value	0x37b
	.byte	0xb
	.long	0x2e
	.byte	0x28
	.byte	0
	.uleb128 0x5
	.long	.LASF3358
	.byte	0x15
	.value	0x37c
	.byte	0x3
	.long	0x1ed4
	.uleb128 0x7
	.long	.LASF3359
	.byte	0x30
	.value	0x384
	.long	0x1fdd
	.uleb128 0x2
	.long	.LASF3283
	.value	0x386
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x387
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x388
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3290
	.value	0x389
	.byte	0x12
	.long	0x518
	.byte	0x10
	.uleb128 0xb
	.string	"x"
	.value	0x38a
	.byte	0xb
	.long	0x2e
	.byte	0x14
	.uleb128 0xb
	.string	"y"
	.value	0x38b
	.byte	0xb
	.long	0x2e
	.byte	0x18
	.uleb128 0x2
	.long	.LASF3360
	.value	0x38c
	.byte	0x11
	.long	0x165
	.byte	0x20
	.uleb128 0x2
	.long	.LASF3343
	.value	0x38d
	.byte	0x11
	.long	0x165
	.byte	0x28
	.byte	0
	.uleb128 0x5
	.long	.LASF3359
	.byte	0x15
	.value	0x38e
	.byte	0x3
	.long	0x1f6c
	.uleb128 0x7
	.long	.LASF3361
	.byte	0x20
	.value	0x396
	.long	0x2045
	.uleb128 0x2
	.long	.LASF3283
	.value	0x398
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x399
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x39a
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3362
	.value	0x39b
	.byte	0xb
	.long	0x15e
	.byte	0x10
	.uleb128 0x2
	.long	.LASF3363
	.value	0x39c
	.byte	0xc
	.long	0x137
	.byte	0x14
	.uleb128 0x2
	.long	.LASF3364
	.value	0x39d
	.byte	0x12
	.long	0x2045
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.long	0x165
	.uleb128 0x5
	.long	.LASF3361
	.byte	0x15
	.value	0x39e
	.byte	0x3
	.long	0x1fea
	.uleb128 0x7
	.long	.LASF3365
	.byte	0x38
	.value	0x3a5
	.long	0x20b2
	.uleb128 0x2
	.long	.LASF3283
	.value	0x3a7
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x3a8
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x3a9
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3292
	.value	0x3aa
	.byte	0x12
	.long	0x58c
	.byte	0x10
	.uleb128 0x2
	.long	.LASF3343
	.value	0x3ab
	.byte	0xb
	.long	0x20b2
	.byte	0x14
	.uleb128 0x2
	.long	.LASF3344
	.value	0x3ac
	.byte	0xc
	.long	0x151
	.byte	0x30
	.byte	0
	.uleb128 0x18
	.long	0x2e
	.long	0x20c2
	.uleb128 0x19
	.long	0x35
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	.LASF3365
	.byte	0x15
	.value	0x3ad
	.byte	0x3
	.long	0x2057
	.uleb128 0x7
	.long	.LASF3366
	.byte	0x10
	.value	0x3b4
	.long	0x2103
	.uleb128 0x2
	.long	.LASF3283
	.value	0x3b6
	.byte	0x13
	.long	0xfeb
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x3b7
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x3b8
	.byte	0xc
	.long	0x151
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF3366
	.byte	0x15
	.value	0x3b9
	.byte	0x3
	.long	0x20cf
	.uleb128 0x7
	.long	.LASF3367
	.byte	0x28
	.value	0x3c6
	.long	0x2178
	.uleb128 0x2
	.long	.LASF3283
	.value	0x3c8
	.byte	0xc
	.long	0x144
	.byte	0
	.uleb128 0x2
	.long	.LASF2877
	.value	0x3c9
	.byte	0xc
	.long	0x144
	.byte	0x4
	.uleb128 0x2
	.long	.LASF3284
	.value	0x3ca
	.byte	0xc
	.long	0x151
	.byte	0x8
	.uleb128 0x2
	.long	.LASF3290
	.value	0x3cb
	.byte	0x12
	.long	0x518
	.byte	0x10
	.uleb128 0x2
	.long	.LASF3368
	.value	0x3cc
	.byte	0xc
	.long	0x137
	.byte	0x14
	.uleb128 0x2
	.long	.LASF3287
	.value	0x3cd
	.byte	0xb
	.long	0x43
	.byte	0x18
	.uleb128 0x2
	.long	.LASF3288
	.value	0x3ce
	.byte	0xb
	.long	0x43
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.long	.LASF3367
	.byte	0x15
	.value	0x3cf
	.byte	0x3
	.long	0x2110
	.uleb128 0x26
	.long	.LASF3402
	.byte	0x80
	.byte	0x15
	.value	0x3da
	.byte	0xf
	.long	0x2369
	.uleb128 0x6
	.long	.LASF3283
	.value	0x3dc
	.byte	0xc
	.long	0x144
	.uleb128 0x6
	.long	.LASF3369
	.value	0x3dd
	.byte	0x15
	.long	0x102c
	.uleb128 0x6
	.long	.LASF3370
	.value	0x3de
	.byte	0x16
	.long	0x1094
	.uleb128 0x6
	.long	.LASF3371
	.value	0x3df
	.byte	0x15
	.long	0x10fc
	.uleb128 0x6
	.long	.LASF3372
	.value	0x3e0
	.byte	0x1d
	.long	0x114a
	.uleb128 0x27
	.string	"key"
	.byte	0x15
	.value	0x3e1
	.byte	0x17
	.long	0x11f3
	.uleb128 0x6
	.long	.LASF3373
	.value	0x3e2
	.byte	0x1a
	.long	0x1268
	.uleb128 0x6
	.long	.LASF3374
	.value	0x3e3
	.byte	0x24
	.long	0x1311
	.uleb128 0x6
	.long	.LASF3298
	.value	0x3e4
	.byte	0x18
	.long	0x136c
	.uleb128 0x6
	.long	.LASF3375
	.value	0x3e5
	.byte	0x1a
	.long	0x13ba
	.uleb128 0x6
	.long	.LASF3376
	.value	0x3e6
	.byte	0x1a
	.long	0x1452
	.uleb128 0x6
	.long	.LASF3316
	.value	0x3e7
	.byte	0x1a
	.long	0x14f7
	.uleb128 0x6
	.long	.LASF3377
	.value	0x3e8
	.byte	0x19
	.long	0x158f
	.uleb128 0x6
	.long	.LASF3378
	.value	0x3e9
	.byte	0x18
	.long	0x1819
	.uleb128 0x6
	.long	.LASF3379
	.value	0x3ea
	.byte	0x16
	.long	0x162b
	.uleb128 0x6
	.long	.LASF3380
	.value	0x3eb
	.byte	0x16
	.long	0x16c7
	.uleb128 0x6
	.long	.LASF3381
	.value	0x3ec
	.byte	0x15
	.long	0x1749
	.uleb128 0x6
	.long	.LASF3382
	.value	0x3ed
	.byte	0x18
	.long	0x17cb
	.uleb128 0x6
	.long	.LASF3383
	.value	0x3ee
	.byte	0x19
	.long	0x1881
	.uleb128 0x6
	.long	.LASF3384
	.value	0x3ef
	.byte	0x1c
	.long	0x19ed
	.uleb128 0x6
	.long	.LASF3385
	.value	0x3f0
	.byte	0x1a
	.long	0x191d
	.uleb128 0x6
	.long	.LASF3386
	.value	0x3f1
	.byte	0x1c
	.long	0x199f
	.uleb128 0x6
	.long	.LASF3387
	.value	0x3f2
	.byte	0x1e
	.long	0x1a78
	.uleb128 0x6
	.long	.LASF3388
	.value	0x3f3
	.byte	0x1c
	.long	0x1afd
	.uleb128 0x6
	.long	.LASF3389
	.value	0x3f4
	.byte	0x1a
	.long	0x1b7f
	.uleb128 0x6
	.long	.LASF3390
	.value	0x3f5
	.byte	0x1b
	.long	0x1bcd
	.uleb128 0x6
	.long	.LASF3342
	.value	0x3f6
	.byte	0x15
	.long	0x20c2
	.uleb128 0x6
	.long	.LASF3391
	.value	0x3f7
	.byte	0x13
	.long	0x2103
	.uleb128 0x6
	.long	.LASF3392
	.value	0x3f8
	.byte	0x13
	.long	0x2178
	.uleb128 0x6
	.long	.LASF3393
	.value	0x3f9
	.byte	0x1a
	.long	0x1cbe
	.uleb128 0x6
	.long	.LASF3394
	.value	0x3fa
	.byte	0x1b
	.long	0x1d19
	.uleb128 0x6
	.long	.LASF3395
	.value	0x3fb
	.byte	0x17
	.long	0x1e2f
	.uleb128 0x6
	.long	.LASF3396
	.value	0x3fc
	.byte	0x18
	.long	0x1d97
	.uleb128 0x6
	.long	.LASF3397
	.value	0x3fd
	.byte	0x18
	.long	0x1ec7
	.uleb128 0x6
	.long	.LASF3398
	.value	0x3fe
	.byte	0x16
	.long	0x1f5f
	.uleb128 0x6
	.long	.LASF3399
	.value	0x3ff
	.byte	0x15
	.long	0x1c1b
	.uleb128 0x6
	.long	.LASF3400
	.value	0x400
	.byte	0x13
	.long	0x1fdd
	.uleb128 0x6
	.long	.LASF3401
	.value	0x401
	.byte	0x18
	.long	0x204a
	.uleb128 0x6
	.long	.LASF3318
	.value	0x410
	.byte	0xb
	.long	0x2369
	.byte	0
	.uleb128 0x18
	.long	0x110
	.long	0x2379
	.uleb128 0x19
	.long	0x35
	.byte	0x7f
	.byte	0
	.uleb128 0x5
	.long	.LASF3402
	.byte	0x15
	.value	0x411
	.byte	0x3
	.long	0x2185
	.uleb128 0xc
	.long	0x2379
	.uleb128 0x8
	.long	.LASF3403
	.byte	0x16
	.byte	0x4e
	.byte	0x10
	.long	0x144
	.uleb128 0xc
	.long	0xb7
	.uleb128 0x13
	.long	.LASF3404
	.byte	0x7
	.long	0x3c
	.byte	0x17
	.byte	0x5a
	.long	0x2425
	.uleb128 0x1
	.long	.LASF3405
	.byte	0
	.uleb128 0x1
	.long	.LASF3406
	.byte	0x1
	.uleb128 0x1
	.long	.LASF3407
	.byte	0x2
	.uleb128 0x1
	.long	.LASF3408
	.byte	0x3
	.uleb128 0x1
	.long	.LASF3409
	.byte	0x4
	.uleb128 0x1
	.long	.LASF3410
	.byte	0x5
	.uleb128 0x1
	.long	.LASF3411
	.byte	0x6
	.uleb128 0x1
	.long	.LASF3412
	.byte	0x7
	.uleb128 0x1
	.long	.LASF3413
	.byte	0x8
	.uleb128 0x1
	.long	.LASF3414
	.byte	0x9
	.uleb128 0x1
	.long	.LASF3415
	.byte	0xa
	.uleb128 0x1
	.long	.LASF3416
	.byte	0xb
	.uleb128 0x1
	.long	.LASF3417
	.byte	0xc
	.uleb128 0x1
	.long	.LASF3418
	.byte	0xd
	.uleb128 0x1
	.long	.LASF3419
	.byte	0xe
	.uleb128 0x1
	.long	.LASF3420
	.byte	0xf
	.uleb128 0x1
	.long	.LASF3421
	.byte	0x10
	.uleb128 0x1
	.long	.LASF3422
	.byte	0x11
	.uleb128 0x1
	.long	.LASF3423
	.byte	0x12
	.uleb128 0x1
	.long	.LASF3424
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.long	.LASF3425
	.byte	0x18
	.byte	0x77
	.byte	0x1d
	.long	0x2431
	.uleb128 0x1b
	.long	.LASF3425
	.uleb128 0x17
	.long	.LASF3426
	.byte	0x10
	.byte	0x18
	.byte	0x85
	.byte	0x8
	.long	0x2474
	.uleb128 0x10
	.long	.LASF2873
	.byte	0x18
	.byte	0x87
	.byte	0x15
	.long	0x41e
	.byte	0
	.uleb128 0xf
	.string	"w"
	.byte	0x18
	.byte	0x88
	.byte	0x9
	.long	0x91
	.byte	0x4
	.uleb128 0xf
	.string	"h"
	.byte	0x18
	.byte	0x89
	.byte	0x9
	.long	0x91
	.byte	0x8
	.uleb128 0x10
	.long	.LASF2876
	.byte	0x18
	.byte	0x8b
	.byte	0x9
	.long	0x91
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.long	.LASF3426
	.byte	0x18
	.byte	0x8f
	.byte	0x1c
	.long	0x2436
	.uleb128 0x28
	.long	.LASF3450
	.byte	0x16
	.value	0x12c
	.byte	0x35
	.uleb128 0x15
	.long	.LASF3427
	.byte	0xb
	.value	0xafd
	.long	0x249b
	.uleb128 0x9
	.long	0x541
	.byte	0
	.uleb128 0x15
	.long	.LASF3428
	.byte	0x18
	.value	0x92d
	.long	0x24ad
	.uleb128 0x9
	.long	0x24ad
	.byte	0
	.uleb128 0xc
	.long	0x2425
	.uleb128 0x15
	.long	.LASF3429
	.byte	0x18
	.value	0x91d
	.long	0x24c4
	.uleb128 0x9
	.long	0x24c4
	.byte	0
	.uleb128 0xc
	.long	0x2474
	.uleb128 0x12
	.long	.LASF3430
	.byte	0x18
	.value	0x90c
	.long	0x15e
	.long	0x24df
	.uleb128 0x9
	.long	0x24ad
	.byte	0
	.uleb128 0x12
	.long	.LASF3431
	.byte	0x18
	.value	0x80d
	.long	0x15e
	.long	0x2504
	.uleb128 0x9
	.long	0x24ad
	.uleb128 0x9
	.long	0x24c4
	.uleb128 0x9
	.long	0x2504
	.uleb128 0x9
	.long	0x2504
	.byte	0
	.uleb128 0xc
	.long	0x471
	.uleb128 0x12
	.long	.LASF3432
	.byte	0x18
	.value	0x79e
	.long	0x15e
	.long	0x2533
	.uleb128 0x9
	.long	0x24ad
	.uleb128 0x9
	.long	0x2e
	.uleb128 0x9
	.long	0x2e
	.uleb128 0x9
	.long	0x2e
	.uleb128 0x9
	.long	0x2e
	.byte	0
	.uleb128 0x12
	.long	.LASF3433
	.byte	0xb
	.value	0x6db
	.long	0x15e
	.long	0x2553
	.uleb128 0x9
	.long	0x541
	.uleb128 0x9
	.long	0x2553
	.uleb128 0x9
	.long	0x2553
	.byte	0
	.uleb128 0xc
	.long	0x91
	.uleb128 0x12
	.long	.LASF3434
	.byte	0x18
	.value	0x769
	.long	0x15e
	.long	0x256e
	.uleb128 0x9
	.long	0x24ad
	.byte	0
	.uleb128 0x12
	.long	.LASF3435
	.byte	0x18
	.value	0x6c2
	.long	0x15e
	.long	0x2598
	.uleb128 0x9
	.long	0x24ad
	.uleb128 0x9
	.long	0x110
	.uleb128 0x9
	.long	0x110
	.uleb128 0x9
	.long	0x110
	.uleb128 0x9
	.long	0x110
	.byte	0
	.uleb128 0x12
	.long	.LASF3436
	.byte	0x15
	.value	0x4f4
	.long	0x15e
	.long	0x25ae
	.uleb128 0x9
	.long	0x2386
	.byte	0
	.uleb128 0x1c
	.long	.LASF3437
	.byte	0x18
	.byte	0xd3
	.long	0x15e
	.long	0x25dc
	.uleb128 0x9
	.long	0x165
	.uleb128 0x9
	.long	0x91
	.uleb128 0x9
	.long	0x91
	.uleb128 0x9
	.long	0x535
	.uleb128 0x9
	.long	0x25dc
	.uleb128 0x9
	.long	0x25e1
	.byte	0
	.uleb128 0xc
	.long	0x541
	.uleb128 0xc
	.long	0x24ad
	.uleb128 0x15
	.long	.LASF3438
	.byte	0x17
	.value	0x185
	.long	0x25fe
	.uleb128 0x9
	.long	0x91
	.uleb128 0x9
	.long	0x165
	.uleb128 0x29
	.byte	0
	.uleb128 0x2a
	.long	.LASF3451
	.byte	0x19
	.byte	0x9e
	.byte	0x3d
	.long	0x165
	.uleb128 0x1c
	.long	.LASF3439
	.byte	0x16
	.byte	0xec
	.long	0x15e
	.long	0x261f
	.uleb128 0x9
	.long	0x238b
	.byte	0
	.uleb128 0x2b
	.long	.LASF3452
	.byte	0x1
	.byte	0x9
	.byte	0x1
	.long	0x91
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x2944
	.uleb128 0x1d
	.long	.LASF3440
	.byte	0xa
	.long	0x91
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x1d
	.long	.LASF3441
	.byte	0x16
	.long	0x2397
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x14
	.long	.LASF3371
	.byte	0xa
	.byte	0x11
	.long	0x541
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x14
	.long	.LASF3442
	.byte	0xb
	.byte	0x13
	.long	0x24ad
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x1e
	.long	.LASF3443
	.byte	0xc
	.long	0x2944
	.uleb128 0x1e
	.long	.LASF3444
	.byte	0xd
	.long	0x24c4
	.uleb128 0x14
	.long	.LASF3445
	.byte	0xe
	.byte	0xf
	.long	0x2379
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x1a
	.long	.LLRL2
	.long	0x283d
	.uleb128 0x14
	.long	.LASF3446
	.byte	0x25
	.byte	0xd
	.long	0x91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.uleb128 0x14
	.long	.LASF3447
	.byte	0x26
	.byte	0xd
	.long	0x91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x2c
	.long	.LASF3448
	.byte	0x1
	.byte	0x29
	.byte	0xd
	.long	0x91
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x1a
	.long	.LLRL4
	.long	0x2716
	.uleb128 0x1f
	.string	"row"
	.byte	0x2a
	.long	0x91
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x20
	.quad	.LVL12
	.long	0x2509
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x4
	.long	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LLRL6
	.long	0x277b
	.uleb128 0x1f
	.string	"col"
	.byte	0x2e
	.long	0x91
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0xd
	.quad	.LVL16
	.long	0x2509
	.long	0x274e
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x62
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x2e
	.byte	0x4
	.long	0
	.byte	0
	.uleb128 0x20
	.quad	.LVL30
	.long	0x2949
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.Lubsan_data3
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x8
	.byte	0x7d
	.sleb128 1
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0xd
	.quad	.LVL4
	.long	0x2598
	.long	0x2793
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.quad	.LVL5
	.long	0x256e
	.long	0x27ba
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0x11
	.quad	.LVL6
	.long	0x2558
	.uleb128 0xd
	.quad	.LVL7
	.long	0x2533
	.long	0x27e6
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.quad	.LVL8
	.long	0x256e
	.long	0x280e
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0xd
	.quad	.LVL18
	.long	0x24df
	.long	0x282f
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.quad	.LVL19
	.long	0x24c9
	.byte	0
	.uleb128 0xd
	.quad	.LVL2
	.long	0x260a
	.long	0x2856
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x3
	.byte	0xa
	.value	0x4020
	.byte	0
	.uleb128 0xd
	.quad	.LVL3
	.long	0x25ae
	.long	0x2896
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x320
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xf0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.byte	0
	.uleb128 0xd
	.quad	.LVL21
	.long	0x24b2
	.long	0x28ad
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x11
	.quad	.LVL22
	.long	0x249b
	.uleb128 0x11
	.quad	.LVL23
	.long	0x2489
	.uleb128 0x11
	.quad	.LVL24
	.long	0x2480
	.uleb128 0x11
	.quad	.LVL25
	.long	0x25fe
	.uleb128 0xd
	.quad	.LVL26
	.long	0x25e6
	.long	0x2905
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.uleb128 0x11
	.quad	.LVL27
	.long	0x25fe
	.uleb128 0xd
	.quad	.LVL28
	.long	0x25e6
	.long	0x2936
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.uleb128 0x11
	.quad	.LVL32
	.long	0x2954
	.byte	0
	.uleb128 0xc
	.long	0x4f4
	.uleb128 0x2d
	.long	.LASF3453
	.long	.LASF3454
	.byte	0x1a
	.byte	0
	.uleb128 0x2e
	.long	.LASF3455
	.long	.LASF3455
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 54
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 53
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 54
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 18
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 18
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x79
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU3
	.uleb128 .LVU3
	.uleb128 0
.LLST0:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LFE18-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 0
.LLST1:
	.byte	0x6
	.quad	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-1-.LVL0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL2-1-.LVL0
	.uleb128 .LFE18-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 .LVU28
	.uleb128 .LVU44
.LLST3:
	.byte	0x8
	.quad	.LVL9
	.uleb128 .LVL14-.LVL9
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS5:
	.uleb128 .LVU30
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU40
.LLST5:
	.byte	0x6
	.quad	.LVL9
	.byte	0x4
	.uleb128 .LVL9-.LVL9
	.uleb128 .LVL10-.LVL9
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL10-.LVL9
	.uleb128 .LVL11-.LVL9
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL11-.LVL9
	.uleb128 .LVL12-.LVL9
	.uleb128 0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL12-.LVL9
	.uleb128 .LVL13-.LVL9
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS7:
	.uleb128 .LVU40
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 .LVU53
	.uleb128 .LVU77
	.uleb128 .LVU78
.LLST7:
	.byte	0x6
	.quad	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL14-.LVL13
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL14-.LVL13
	.uleb128 .LVL15-.LVL13
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL15-.LVL13
	.uleb128 .LVL16-.LVL13
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL16-.LVL13
	.uleb128 .LVL17-.LVL13
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL29-.LVL13
	.uleb128 .LVL31-.LVL13
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.quad	0
	.quad	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL2:
	.byte	0x5
	.quad	.LBB2
	.byte	0x4
	.uleb128 .LBB2-.LBB2
	.uleb128 .LBE2-.LBB2
	.byte	0x4
	.uleb128 .LBB7-.LBB2
	.uleb128 .LBE7-.LBB2
	.byte	0x4
	.uleb128 .LBB8-.LBB2
	.uleb128 .LBE8-.LBB2
	.byte	0
.LLRL4:
	.byte	0x5
	.quad	.LBB3
	.byte	0x4
	.uleb128 .LBB3-.LBB3
	.uleb128 .LBE3-.LBB3
	.byte	0x4
	.uleb128 .LBB4-.LBB3
	.uleb128 .LBE4-.LBB3
	.byte	0
.LLRL6:
	.byte	0x5
	.quad	.LBB5
	.byte	0x4
	.uleb128 .LBB5-.LBB5
	.uleb128 .LBE5-.LBB5
	.byte	0x4
	.uleb128 .LBB6-.LBB5
	.uleb128 .LBE6-.LBB5
	.byte	0
.LLRL8:
	.byte	0x7
	.quad	.LFB18
	.uleb128 .LFE18-.LFB18
	.byte	0
.Ldebug_ranges3:
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.value	0x5
	.byte	0x2
	.long	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x5
	.uleb128 0
	.long	.LASF2
	.byte	0x5
	.uleb128 0
	.long	.LASF3
	.byte	0x5
	.uleb128 0
	.long	.LASF4
	.byte	0x5
	.uleb128 0
	.long	.LASF5
	.byte	0x5
	.uleb128 0
	.long	.LASF6
	.byte	0x5
	.uleb128 0
	.long	.LASF7
	.byte	0x5
	.uleb128 0
	.long	.LASF8
	.byte	0x5
	.uleb128 0
	.long	.LASF9
	.byte	0x5
	.uleb128 0
	.long	.LASF10
	.byte	0x5
	.uleb128 0
	.long	.LASF11
	.byte	0x5
	.uleb128 0
	.long	.LASF12
	.byte	0x5
	.uleb128 0
	.long	.LASF13
	.byte	0x5
	.uleb128 0
	.long	.LASF14
	.byte	0x5
	.uleb128 0
	.long	.LASF15
	.byte	0x5
	.uleb128 0
	.long	.LASF16
	.byte	0x5
	.uleb128 0
	.long	.LASF17
	.byte	0x5
	.uleb128 0
	.long	.LASF18
	.byte	0x5
	.uleb128 0
	.long	.LASF19
	.byte	0x5
	.uleb128 0
	.long	.LASF20
	.byte	0x5
	.uleb128 0
	.long	.LASF21
	.byte	0x5
	.uleb128 0
	.long	.LASF22
	.byte	0x5
	.uleb128 0
	.long	.LASF23
	.byte	0x5
	.uleb128 0
	.long	.LASF24
	.byte	0x5
	.uleb128 0
	.long	.LASF25
	.byte	0x5
	.uleb128 0
	.long	.LASF26
	.byte	0x5
	.uleb128 0
	.long	.LASF27
	.byte	0x5
	.uleb128 0
	.long	.LASF28
	.byte	0x5
	.uleb128 0
	.long	.LASF29
	.byte	0x5
	.uleb128 0
	.long	.LASF30
	.byte	0x5
	.uleb128 0
	.long	.LASF31
	.byte	0x5
	.uleb128 0
	.long	.LASF32
	.byte	0x5
	.uleb128 0
	.long	.LASF33
	.byte	0x5
	.uleb128 0
	.long	.LASF34
	.byte	0x5
	.uleb128 0
	.long	.LASF35
	.byte	0x5
	.uleb128 0
	.long	.LASF36
	.byte	0x5
	.uleb128 0
	.long	.LASF37
	.byte	0x5
	.uleb128 0
	.long	.LASF38
	.byte	0x5
	.uleb128 0
	.long	.LASF39
	.byte	0x5
	.uleb128 0
	.long	.LASF40
	.byte	0x5
	.uleb128 0
	.long	.LASF41
	.byte	0x5
	.uleb128 0
	.long	.LASF42
	.byte	0x5
	.uleb128 0
	.long	.LASF43
	.byte	0x5
	.uleb128 0
	.long	.LASF44
	.byte	0x5
	.uleb128 0
	.long	.LASF45
	.byte	0x5
	.uleb128 0
	.long	.LASF46
	.byte	0x5
	.uleb128 0
	.long	.LASF47
	.byte	0x5
	.uleb128 0
	.long	.LASF48
	.byte	0x5
	.uleb128 0
	.long	.LASF49
	.byte	0x5
	.uleb128 0
	.long	.LASF50
	.byte	0x5
	.uleb128 0
	.long	.LASF51
	.byte	0x5
	.uleb128 0
	.long	.LASF52
	.byte	0x5
	.uleb128 0
	.long	.LASF53
	.byte	0x5
	.uleb128 0
	.long	.LASF54
	.byte	0x5
	.uleb128 0
	.long	.LASF55
	.byte	0x5
	.uleb128 0
	.long	.LASF56
	.byte	0x5
	.uleb128 0
	.long	.LASF57
	.byte	0x5
	.uleb128 0
	.long	.LASF58
	.byte	0x5
	.uleb128 0
	.long	.LASF59
	.byte	0x5
	.uleb128 0
	.long	.LASF60
	.byte	0x5
	.uleb128 0
	.long	.LASF61
	.byte	0x5
	.uleb128 0
	.long	.LASF62
	.byte	0x5
	.uleb128 0
	.long	.LASF63
	.byte	0x5
	.uleb128 0
	.long	.LASF64
	.byte	0x5
	.uleb128 0
	.long	.LASF65
	.byte	0x5
	.uleb128 0
	.long	.LASF66
	.byte	0x5
	.uleb128 0
	.long	.LASF67
	.byte	0x5
	.uleb128 0
	.long	.LASF68
	.byte	0x5
	.uleb128 0
	.long	.LASF69
	.byte	0x5
	.uleb128 0
	.long	.LASF70
	.byte	0x5
	.uleb128 0
	.long	.LASF71
	.byte	0x5
	.uleb128 0
	.long	.LASF72
	.byte	0x5
	.uleb128 0
	.long	.LASF73
	.byte	0x5
	.uleb128 0
	.long	.LASF74
	.byte	0x5
	.uleb128 0
	.long	.LASF75
	.byte	0x5
	.uleb128 0
	.long	.LASF76
	.byte	0x5
	.uleb128 0
	.long	.LASF77
	.byte	0x5
	.uleb128 0
	.long	.LASF78
	.byte	0x5
	.uleb128 0
	.long	.LASF79
	.byte	0x5
	.uleb128 0
	.long	.LASF80
	.byte	0x5
	.uleb128 0
	.long	.LASF81
	.byte	0x5
	.uleb128 0
	.long	.LASF82
	.byte	0x5
	.uleb128 0
	.long	.LASF83
	.byte	0x5
	.uleb128 0
	.long	.LASF84
	.byte	0x5
	.uleb128 0
	.long	.LASF85
	.byte	0x5
	.uleb128 0
	.long	.LASF86
	.byte	0x5
	.uleb128 0
	.long	.LASF87
	.byte	0x5
	.uleb128 0
	.long	.LASF88
	.byte	0x5
	.uleb128 0
	.long	.LASF89
	.byte	0x5
	.uleb128 0
	.long	.LASF90
	.byte	0x5
	.uleb128 0
	.long	.LASF91
	.byte	0x5
	.uleb128 0
	.long	.LASF92
	.byte	0x5
	.uleb128 0
	.long	.LASF93
	.byte	0x5
	.uleb128 0
	.long	.LASF94
	.byte	0x5
	.uleb128 0
	.long	.LASF95
	.byte	0x5
	.uleb128 0
	.long	.LASF96
	.byte	0x5
	.uleb128 0
	.long	.LASF97
	.byte	0x5
	.uleb128 0
	.long	.LASF98
	.byte	0x5
	.uleb128 0
	.long	.LASF99
	.byte	0x5
	.uleb128 0
	.long	.LASF100
	.byte	0x5
	.uleb128 0
	.long	.LASF101
	.byte	0x5
	.uleb128 0
	.long	.LASF102
	.byte	0x5
	.uleb128 0
	.long	.LASF103
	.byte	0x5
	.uleb128 0
	.long	.LASF104
	.byte	0x5
	.uleb128 0
	.long	.LASF105
	.byte	0x5
	.uleb128 0
	.long	.LASF106
	.byte	0x5
	.uleb128 0
	.long	.LASF107
	.byte	0x5
	.uleb128 0
	.long	.LASF108
	.byte	0x5
	.uleb128 0
	.long	.LASF109
	.byte	0x5
	.uleb128 0
	.long	.LASF110
	.byte	0x5
	.uleb128 0
	.long	.LASF111
	.byte	0x5
	.uleb128 0
	.long	.LASF112
	.byte	0x5
	.uleb128 0
	.long	.LASF113
	.byte	0x5
	.uleb128 0
	.long	.LASF114
	.byte	0x5
	.uleb128 0
	.long	.LASF115
	.byte	0x5
	.uleb128 0
	.long	.LASF116
	.byte	0x5
	.uleb128 0
	.long	.LASF117
	.byte	0x5
	.uleb128 0
	.long	.LASF118
	.byte	0x5
	.uleb128 0
	.long	.LASF119
	.byte	0x5
	.uleb128 0
	.long	.LASF120
	.byte	0x5
	.uleb128 0
	.long	.LASF121
	.byte	0x5
	.uleb128 0
	.long	.LASF122
	.byte	0x5
	.uleb128 0
	.long	.LASF123
	.byte	0x5
	.uleb128 0
	.long	.LASF124
	.byte	0x5
	.uleb128 0
	.long	.LASF125
	.byte	0x5
	.uleb128 0
	.long	.LASF126
	.byte	0x5
	.uleb128 0
	.long	.LASF127
	.byte	0x5
	.uleb128 0
	.long	.LASF128
	.byte	0x5
	.uleb128 0
	.long	.LASF129
	.byte	0x5
	.uleb128 0
	.long	.LASF130
	.byte	0x5
	.uleb128 0
	.long	.LASF131
	.byte	0x5
	.uleb128 0
	.long	.LASF132
	.byte	0x5
	.uleb128 0
	.long	.LASF133
	.byte	0x5
	.uleb128 0
	.long	.LASF134
	.byte	0x5
	.uleb128 0
	.long	.LASF135
	.byte	0x5
	.uleb128 0
	.long	.LASF136
	.byte	0x5
	.uleb128 0
	.long	.LASF137
	.byte	0x5
	.uleb128 0
	.long	.LASF138
	.byte	0x5
	.uleb128 0
	.long	.LASF139
	.byte	0x5
	.uleb128 0
	.long	.LASF140
	.byte	0x5
	.uleb128 0
	.long	.LASF141
	.byte	0x5
	.uleb128 0
	.long	.LASF142
	.byte	0x5
	.uleb128 0
	.long	.LASF143
	.byte	0x5
	.uleb128 0
	.long	.LASF144
	.byte	0x5
	.uleb128 0
	.long	.LASF145
	.byte	0x5
	.uleb128 0
	.long	.LASF146
	.byte	0x5
	.uleb128 0
	.long	.LASF147
	.byte	0x5
	.uleb128 0
	.long	.LASF148
	.byte	0x5
	.uleb128 0
	.long	.LASF149
	.byte	0x5
	.uleb128 0
	.long	.LASF150
	.byte	0x5
	.uleb128 0
	.long	.LASF151
	.byte	0x5
	.uleb128 0
	.long	.LASF152
	.byte	0x5
	.uleb128 0
	.long	.LASF153
	.byte	0x5
	.uleb128 0
	.long	.LASF154
	.byte	0x5
	.uleb128 0
	.long	.LASF155
	.byte	0x5
	.uleb128 0
	.long	.LASF156
	.byte	0x5
	.uleb128 0
	.long	.LASF157
	.byte	0x5
	.uleb128 0
	.long	.LASF158
	.byte	0x5
	.uleb128 0
	.long	.LASF159
	.byte	0x5
	.uleb128 0
	.long	.LASF160
	.byte	0x5
	.uleb128 0
	.long	.LASF161
	.byte	0x5
	.uleb128 0
	.long	.LASF162
	.byte	0x5
	.uleb128 0
	.long	.LASF163
	.byte	0x5
	.uleb128 0
	.long	.LASF164
	.byte	0x5
	.uleb128 0
	.long	.LASF165
	.byte	0x5
	.uleb128 0
	.long	.LASF166
	.byte	0x5
	.uleb128 0
	.long	.LASF167
	.byte	0x5
	.uleb128 0
	.long	.LASF168
	.byte	0x5
	.uleb128 0
	.long	.LASF169
	.byte	0x5
	.uleb128 0
	.long	.LASF170
	.byte	0x5
	.uleb128 0
	.long	.LASF171
	.byte	0x5
	.uleb128 0
	.long	.LASF172
	.byte	0x5
	.uleb128 0
	.long	.LASF173
	.byte	0x5
	.uleb128 0
	.long	.LASF174
	.byte	0x5
	.uleb128 0
	.long	.LASF175
	.byte	0x5
	.uleb128 0
	.long	.LASF176
	.byte	0x5
	.uleb128 0
	.long	.LASF177
	.byte	0x5
	.uleb128 0
	.long	.LASF178
	.byte	0x5
	.uleb128 0
	.long	.LASF179
	.byte	0x5
	.uleb128 0
	.long	.LASF180
	.byte	0x5
	.uleb128 0
	.long	.LASF181
	.byte	0x5
	.uleb128 0
	.long	.LASF182
	.byte	0x5
	.uleb128 0
	.long	.LASF183
	.byte	0x5
	.uleb128 0
	.long	.LASF184
	.byte	0x5
	.uleb128 0
	.long	.LASF185
	.byte	0x5
	.uleb128 0
	.long	.LASF186
	.byte	0x5
	.uleb128 0
	.long	.LASF187
	.byte	0x5
	.uleb128 0
	.long	.LASF188
	.byte	0x5
	.uleb128 0
	.long	.LASF189
	.byte	0x5
	.uleb128 0
	.long	.LASF190
	.byte	0x5
	.uleb128 0
	.long	.LASF191
	.byte	0x5
	.uleb128 0
	.long	.LASF192
	.byte	0x5
	.uleb128 0
	.long	.LASF193
	.byte	0x5
	.uleb128 0
	.long	.LASF194
	.byte	0x5
	.uleb128 0
	.long	.LASF195
	.byte	0x5
	.uleb128 0
	.long	.LASF196
	.byte	0x5
	.uleb128 0
	.long	.LASF197
	.byte	0x5
	.uleb128 0
	.long	.LASF198
	.byte	0x5
	.uleb128 0
	.long	.LASF199
	.byte	0x5
	.uleb128 0
	.long	.LASF200
	.byte	0x5
	.uleb128 0
	.long	.LASF201
	.byte	0x5
	.uleb128 0
	.long	.LASF202
	.byte	0x5
	.uleb128 0
	.long	.LASF203
	.byte	0x5
	.uleb128 0
	.long	.LASF204
	.byte	0x5
	.uleb128 0
	.long	.LASF205
	.byte	0x5
	.uleb128 0
	.long	.LASF206
	.byte	0x5
	.uleb128 0
	.long	.LASF207
	.byte	0x5
	.uleb128 0
	.long	.LASF208
	.byte	0x5
	.uleb128 0
	.long	.LASF209
	.byte	0x5
	.uleb128 0
	.long	.LASF210
	.byte	0x5
	.uleb128 0
	.long	.LASF211
	.byte	0x5
	.uleb128 0
	.long	.LASF212
	.byte	0x5
	.uleb128 0
	.long	.LASF213
	.byte	0x5
	.uleb128 0
	.long	.LASF214
	.byte	0x5
	.uleb128 0
	.long	.LASF215
	.byte	0x5
	.uleb128 0
	.long	.LASF216
	.byte	0x5
	.uleb128 0
	.long	.LASF217
	.byte	0x5
	.uleb128 0
	.long	.LASF218
	.byte	0x5
	.uleb128 0
	.long	.LASF219
	.byte	0x5
	.uleb128 0
	.long	.LASF220
	.byte	0x5
	.uleb128 0
	.long	.LASF221
	.byte	0x5
	.uleb128 0
	.long	.LASF222
	.byte	0x5
	.uleb128 0
	.long	.LASF223
	.byte	0x5
	.uleb128 0
	.long	.LASF224
	.byte	0x5
	.uleb128 0
	.long	.LASF225
	.byte	0x5
	.uleb128 0
	.long	.LASF226
	.byte	0x5
	.uleb128 0
	.long	.LASF227
	.byte	0x5
	.uleb128 0
	.long	.LASF228
	.byte	0x5
	.uleb128 0
	.long	.LASF229
	.byte	0x5
	.uleb128 0
	.long	.LASF230
	.byte	0x5
	.uleb128 0
	.long	.LASF231
	.byte	0x5
	.uleb128 0
	.long	.LASF232
	.byte	0x5
	.uleb128 0
	.long	.LASF233
	.byte	0x5
	.uleb128 0
	.long	.LASF234
	.byte	0x5
	.uleb128 0
	.long	.LASF235
	.byte	0x5
	.uleb128 0
	.long	.LASF236
	.byte	0x5
	.uleb128 0
	.long	.LASF237
	.byte	0x5
	.uleb128 0
	.long	.LASF238
	.byte	0x5
	.uleb128 0
	.long	.LASF239
	.byte	0x5
	.uleb128 0
	.long	.LASF240
	.byte	0x5
	.uleb128 0
	.long	.LASF241
	.byte	0x5
	.uleb128 0
	.long	.LASF242
	.byte	0x5
	.uleb128 0
	.long	.LASF243
	.byte	0x5
	.uleb128 0
	.long	.LASF244
	.byte	0x5
	.uleb128 0
	.long	.LASF245
	.byte	0x5
	.uleb128 0
	.long	.LASF246
	.byte	0x5
	.uleb128 0
	.long	.LASF247
	.byte	0x5
	.uleb128 0
	.long	.LASF248
	.byte	0x5
	.uleb128 0
	.long	.LASF249
	.byte	0x5
	.uleb128 0
	.long	.LASF250
	.byte	0x5
	.uleb128 0
	.long	.LASF251
	.byte	0x5
	.uleb128 0
	.long	.LASF252
	.byte	0x5
	.uleb128 0
	.long	.LASF253
	.byte	0x5
	.uleb128 0
	.long	.LASF254
	.byte	0x5
	.uleb128 0
	.long	.LASF255
	.byte	0x5
	.uleb128 0
	.long	.LASF256
	.byte	0x5
	.uleb128 0
	.long	.LASF257
	.byte	0x5
	.uleb128 0
	.long	.LASF258
	.byte	0x5
	.uleb128 0
	.long	.LASF259
	.byte	0x5
	.uleb128 0
	.long	.LASF260
	.byte	0x5
	.uleb128 0
	.long	.LASF261
	.byte	0x5
	.uleb128 0
	.long	.LASF262
	.byte	0x5
	.uleb128 0
	.long	.LASF263
	.byte	0x5
	.uleb128 0
	.long	.LASF264
	.byte	0x5
	.uleb128 0
	.long	.LASF265
	.byte	0x5
	.uleb128 0
	.long	.LASF266
	.byte	0x5
	.uleb128 0
	.long	.LASF267
	.byte	0x5
	.uleb128 0
	.long	.LASF268
	.byte	0x5
	.uleb128 0
	.long	.LASF269
	.byte	0x5
	.uleb128 0
	.long	.LASF270
	.byte	0x5
	.uleb128 0
	.long	.LASF271
	.byte	0x5
	.uleb128 0
	.long	.LASF272
	.byte	0x5
	.uleb128 0
	.long	.LASF273
	.byte	0x5
	.uleb128 0
	.long	.LASF274
	.byte	0x5
	.uleb128 0
	.long	.LASF275
	.byte	0x5
	.uleb128 0
	.long	.LASF276
	.byte	0x5
	.uleb128 0
	.long	.LASF277
	.byte	0x5
	.uleb128 0
	.long	.LASF278
	.byte	0x5
	.uleb128 0
	.long	.LASF279
	.byte	0x5
	.uleb128 0
	.long	.LASF280
	.byte	0x5
	.uleb128 0
	.long	.LASF281
	.byte	0x5
	.uleb128 0
	.long	.LASF282
	.byte	0x5
	.uleb128 0
	.long	.LASF283
	.byte	0x5
	.uleb128 0
	.long	.LASF284
	.byte	0x5
	.uleb128 0
	.long	.LASF285
	.byte	0x5
	.uleb128 0
	.long	.LASF286
	.byte	0x5
	.uleb128 0
	.long	.LASF287
	.byte	0x5
	.uleb128 0
	.long	.LASF288
	.byte	0x5
	.uleb128 0
	.long	.LASF289
	.byte	0x5
	.uleb128 0
	.long	.LASF290
	.byte	0x5
	.uleb128 0
	.long	.LASF291
	.byte	0x5
	.uleb128 0
	.long	.LASF292
	.byte	0x5
	.uleb128 0
	.long	.LASF293
	.byte	0x5
	.uleb128 0
	.long	.LASF294
	.byte	0x5
	.uleb128 0
	.long	.LASF295
	.byte	0x5
	.uleb128 0
	.long	.LASF296
	.byte	0x5
	.uleb128 0
	.long	.LASF297
	.byte	0x5
	.uleb128 0
	.long	.LASF298
	.byte	0x5
	.uleb128 0
	.long	.LASF299
	.byte	0x5
	.uleb128 0
	.long	.LASF300
	.byte	0x5
	.uleb128 0
	.long	.LASF301
	.byte	0x5
	.uleb128 0
	.long	.LASF302
	.byte	0x5
	.uleb128 0
	.long	.LASF303
	.byte	0x5
	.uleb128 0
	.long	.LASF304
	.byte	0x5
	.uleb128 0
	.long	.LASF305
	.byte	0x5
	.uleb128 0
	.long	.LASF306
	.byte	0x5
	.uleb128 0
	.long	.LASF307
	.byte	0x5
	.uleb128 0
	.long	.LASF308
	.byte	0x5
	.uleb128 0
	.long	.LASF309
	.byte	0x5
	.uleb128 0
	.long	.LASF310
	.byte	0x5
	.uleb128 0
	.long	.LASF311
	.byte	0x5
	.uleb128 0
	.long	.LASF312
	.byte	0x5
	.uleb128 0
	.long	.LASF313
	.byte	0x5
	.uleb128 0
	.long	.LASF314
	.byte	0x5
	.uleb128 0
	.long	.LASF315
	.byte	0x5
	.uleb128 0
	.long	.LASF316
	.byte	0x5
	.uleb128 0
	.long	.LASF317
	.byte	0x5
	.uleb128 0
	.long	.LASF318
	.byte	0x5
	.uleb128 0
	.long	.LASF319
	.byte	0x5
	.uleb128 0
	.long	.LASF320
	.byte	0x5
	.uleb128 0
	.long	.LASF321
	.byte	0x5
	.uleb128 0
	.long	.LASF322
	.byte	0x5
	.uleb128 0
	.long	.LASF323
	.byte	0x5
	.uleb128 0
	.long	.LASF324
	.byte	0x5
	.uleb128 0
	.long	.LASF325
	.byte	0x5
	.uleb128 0
	.long	.LASF326
	.byte	0x5
	.uleb128 0
	.long	.LASF327
	.byte	0x5
	.uleb128 0
	.long	.LASF328
	.byte	0x5
	.uleb128 0
	.long	.LASF329
	.byte	0x5
	.uleb128 0
	.long	.LASF330
	.byte	0x5
	.uleb128 0
	.long	.LASF331
	.byte	0x5
	.uleb128 0
	.long	.LASF332
	.byte	0x5
	.uleb128 0
	.long	.LASF333
	.byte	0x5
	.uleb128 0
	.long	.LASF334
	.byte	0x5
	.uleb128 0
	.long	.LASF335
	.byte	0x5
	.uleb128 0
	.long	.LASF336
	.byte	0x5
	.uleb128 0
	.long	.LASF337
	.byte	0x5
	.uleb128 0
	.long	.LASF338
	.byte	0x5
	.uleb128 0
	.long	.LASF339
	.byte	0x5
	.uleb128 0
	.long	.LASF340
	.byte	0x5
	.uleb128 0
	.long	.LASF341
	.byte	0x5
	.uleb128 0
	.long	.LASF342
	.byte	0x5
	.uleb128 0
	.long	.LASF343
	.byte	0x5
	.uleb128 0
	.long	.LASF344
	.byte	0x5
	.uleb128 0
	.long	.LASF345
	.byte	0x5
	.uleb128 0
	.long	.LASF346
	.byte	0x5
	.uleb128 0
	.long	.LASF347
	.byte	0x5
	.uleb128 0
	.long	.LASF348
	.byte	0x5
	.uleb128 0
	.long	.LASF349
	.byte	0x5
	.uleb128 0
	.long	.LASF350
	.byte	0x5
	.uleb128 0
	.long	.LASF351
	.byte	0x5
	.uleb128 0
	.long	.LASF352
	.byte	0x5
	.uleb128 0
	.long	.LASF353
	.byte	0x5
	.uleb128 0
	.long	.LASF354
	.byte	0x5
	.uleb128 0
	.long	.LASF355
	.byte	0x5
	.uleb128 0
	.long	.LASF356
	.byte	0x5
	.uleb128 0
	.long	.LASF357
	.byte	0x5
	.uleb128 0
	.long	.LASF358
	.byte	0x5
	.uleb128 0
	.long	.LASF359
	.byte	0x5
	.uleb128 0
	.long	.LASF360
	.byte	0x5
	.uleb128 0
	.long	.LASF361
	.byte	0x5
	.uleb128 0
	.long	.LASF362
	.byte	0x5
	.uleb128 0
	.long	.LASF363
	.byte	0x5
	.uleb128 0
	.long	.LASF364
	.byte	0x5
	.uleb128 0
	.long	.LASF365
	.byte	0x5
	.uleb128 0
	.long	.LASF366
	.byte	0x5
	.uleb128 0
	.long	.LASF367
	.byte	0x5
	.uleb128 0
	.long	.LASF368
	.byte	0x5
	.uleb128 0
	.long	.LASF369
	.byte	0x5
	.uleb128 0
	.long	.LASF370
	.byte	0x5
	.uleb128 0
	.long	.LASF371
	.byte	0x5
	.uleb128 0
	.long	.LASF372
	.byte	0x5
	.uleb128 0
	.long	.LASF373
	.byte	0x5
	.uleb128 0
	.long	.LASF374
	.byte	0x5
	.uleb128 0
	.long	.LASF375
	.byte	0x5
	.uleb128 0
	.long	.LASF376
	.byte	0x5
	.uleb128 0
	.long	.LASF377
	.byte	0x5
	.uleb128 0
	.long	.LASF378
	.byte	0x5
	.uleb128 0
	.long	.LASF379
	.byte	0x5
	.uleb128 0
	.long	.LASF380
	.byte	0x5
	.uleb128 0
	.long	.LASF381
	.byte	0x5
	.uleb128 0
	.long	.LASF382
	.byte	0x5
	.uleb128 0
	.long	.LASF383
	.byte	0x5
	.uleb128 0
	.long	.LASF384
	.byte	0x5
	.uleb128 0
	.long	.LASF385
	.byte	0x5
	.uleb128 0
	.long	.LASF386
	.byte	0x5
	.uleb128 0
	.long	.LASF387
	.byte	0x5
	.uleb128 0
	.long	.LASF388
	.byte	0x5
	.uleb128 0
	.long	.LASF389
	.byte	0x5
	.uleb128 0
	.long	.LASF390
	.byte	0x5
	.uleb128 0
	.long	.LASF391
	.byte	0x5
	.uleb128 0
	.long	.LASF392
	.byte	0x5
	.uleb128 0
	.long	.LASF393
	.byte	0x5
	.uleb128 0
	.long	.LASF394
	.file 27 "/usr/include/stdc-predef.h"
	.byte	0x3
	.uleb128 0
	.uleb128 0x1b
	.byte	0x7
	.long	.Ldebug_macro2
	.byte	0x4
	.file 28 "/usr/include/SDL3/SDL.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x1c
	.byte	0x5
	.uleb128 0x20
	.long	.LASF401
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF402
	.file 29 "/usr/include/SDL3/SDL_platform_defines.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x1d
	.byte	0x7
	.long	.Ldebug_macro3
	.byte	0x4
	.file 30 "/usr/lib/gcc/x86_64-pc-linux-gnu/14.2.1/include/stdarg.h"
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x1e
	.byte	0x7
	.long	.Ldebug_macro4
	.byte	0x4
	.file 31 "/usr/lib/gcc/x86_64-pc-linux-gnu/14.2.1/include/stdint.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x1f
	.file 32 "/usr/include/stdint.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x20
	.byte	0x7
	.long	.Ldebug_macro5
	.file 33 "/usr/include/bits/libc-header-start.h"
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0x6
	.uleb128 0x1f
	.long	.LASF422
	.file 34 "/usr/include/features.h"
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x22
	.byte	0x7
	.long	.Ldebug_macro6
	.file 35 "/usr/include/features-time64.h"
	.byte	0x3
	.uleb128 0x19f
	.uleb128 0x23
	.file 36 "/usr/include/bits/wordsize.h"
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x24
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.file 37 "/usr/include/bits/timesize.h"
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x25
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x24
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF464
	.byte	0x4
	.byte	0x5
	.uleb128 0x25
	.long	.LASF465
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro8
	.file 38 "/usr/include/sys/cdefs.h"
	.byte	0x3
	.uleb128 0x20c
	.uleb128 0x26
	.byte	0x7
	.long	.Ldebug_macro9
	.byte	0x3
	.uleb128 0x2da
	.uleb128 0x24
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.file 39 "/usr/include/bits/long-double.h"
	.byte	0x3
	.uleb128 0x2db
	.uleb128 0x27
	.byte	0x5
	.uleb128 0x15
	.long	.LASF542
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro10
	.byte	0x4
	.byte	0x5
	.uleb128 0x21c
	.long	.LASF561
	.file 40 "/usr/include/gnu/stubs.h"
	.byte	0x3
	.uleb128 0x224
	.uleb128 0x28
	.file 41 "/usr/include/gnu/stubs-64.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x29
	.byte	0x7
	.long	.Ldebug_macro11
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro12
	.byte	0x4
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x18
	.long	.LASF584
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x24
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x25
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x24
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF464
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro13
	.file 42 "/usr/include/bits/typesizes.h"
	.byte	0x3
	.uleb128 0x8d
	.uleb128 0x2a
	.byte	0x7
	.long	.Ldebug_macro14
	.byte	0x4
	.file 43 "/usr/include/bits/time64.h"
	.byte	0x3
	.uleb128 0x8e
	.uleb128 0x2b
	.byte	0x7
	.long	.Ldebug_macro15
	.byte	0x4
	.byte	0x6
	.uleb128 0xe2
	.long	.LASF644
	.byte	0x4
	.file 44 "/usr/include/bits/wchar.h"
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x2c
	.byte	0x7
	.long	.Ldebug_macro16
	.byte	0x4
	.byte	0x3
	.uleb128 0x1d
	.uleb128 0x24
	.byte	0x7
	.long	.Ldebug_macro7
	.byte	0x4
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x3
	.byte	0x5
	.uleb128 0x14
	.long	.LASF648
	.byte	0x4
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x14
	.long	.LASF649
	.byte	0x4
	.file 45 "/usr/include/bits/stdint-least.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x2d
	.byte	0x5
	.uleb128 0x14
	.long	.LASF650
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro17
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.long	.LASF713
	.byte	0x4
	.file 46 "/usr/include/string.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0x7
	.long	.Ldebug_macro18
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0x7
	.long	.Ldebug_macro19
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro20
	.file 47 "/usr/lib/gcc/x86_64-pc-linux-gnu/14.2.1/include/stddef.h"
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x2f
	.byte	0x7
	.long	.Ldebug_macro21
	.byte	0x4
	.byte	0x4
	.file 48 "/usr/include/wchar.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x30
	.byte	0x7
	.long	.Ldebug_macro22
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0x7
	.long	.Ldebug_macro19
	.byte	0x4
	.file 49 "/usr/include/bits/floatn.h"
	.byte	0x3
	.uleb128 0x1e
	.uleb128 0x31
	.byte	0x7
	.long	.Ldebug_macro23
	.file 50 "/usr/include/bits/floatn-common.h"
	.byte	0x3
	.uleb128 0x7f
	.uleb128 0x32
	.byte	0x5
	.uleb128 0x15
	.long	.LASF747
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x27
	.byte	0x5
	.uleb128 0x15
	.long	.LASF542
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro24
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro25
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x2f
	.byte	0x7
	.long	.Ldebug_macro26
	.byte	0x4
	.byte	0x5
	.uleb128 0x25
	.long	.LASF788
	.file 51 "/usr/include/bits/types/wint_t.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x33
	.byte	0x7
	.long	.Ldebug_macro27
	.byte	0x4
	.file 52 "/usr/include/bits/types/mbstate_t.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x34
	.byte	0x5
	.uleb128 0x2
	.long	.LASF791
	.file 53 "/usr/include/bits/types/__mbstate_t.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x35
	.byte	0x5
	.uleb128 0x2
	.long	.LASF792
	.byte	0x4
	.byte	0x4
	.file 54 "/usr/include/bits/types/__FILE.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x36
	.byte	0x5
	.uleb128 0x2
	.long	.LASF793
	.byte	0x4
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF794
	.byte	0x4
	.file 55 "/usr/include/inttypes.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x37
	.byte	0x7
	.long	.Ldebug_macro28
	.byte	0x4
	.byte	0x5
	.uleb128 0x40
	.long	.LASF953
	.file 56 "/usr/lib/gcc/x86_64-pc-linux-gnu/14.2.1/include/stdbool.h"
	.byte	0x3
	.uleb128 0x46
	.uleb128 0x38
	.byte	0x7
	.long	.Ldebug_macro29
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro30
	.file 57 "/usr/include/SDL3/SDL_begin_code.h"
	.byte	0x3
	.uleb128 0x4a7
	.uleb128 0x39
	.byte	0x7
	.long	.Ldebug_macro31
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro32
	.file 58 "/usr/include/SDL3/SDL_close_code.h"
	.byte	0x3
	.uleb128 0x17e8
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 59 "/usr/include/SDL3/SDL_assert.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x3b
	.byte	0x5
	.uleb128 0x41
	.long	.LASF1060
	.byte	0x3
	.uleb128 0x45
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro33
	.byte	0x3
	.uleb128 0x292
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 60 "/usr/include/SDL3/SDL_asyncio.h"
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x3c
	.byte	0x5
	.uleb128 0x68
	.long	.LASF1074
	.byte	0x3
	.uleb128 0x6c
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x3
	.uleb128 0x220
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 61 "/usr/include/SDL3/SDL_atomic.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x3d
	.byte	0x5
	.uleb128 0x33
	.long	.LASF1075
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro34
	.byte	0x3
	.uleb128 0x296
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x26
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x81
	.long	.LASF1082
	.file 62 "/usr/include/SDL3/SDL_endian.h"
	.byte	0x3
	.uleb128 0x84
	.uleb128 0x3e
	.byte	0x7
	.long	.Ldebug_macro35
	.file 63 "/usr/include/endian.h"
	.byte	0x3
	.uleb128 0x84
	.uleb128 0x3f
	.byte	0x5
	.uleb128 0x13
	.long	.LASF1086
	.file 64 "/usr/include/bits/endian.h"
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x40
	.byte	0x7
	.long	.Ldebug_macro36
	.file 65 "/usr/include/bits/endianness.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x41
	.byte	0x7
	.long	.Ldebug_macro37
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro38
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro39
	.byte	0x3
	.uleb128 0xd7
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro40
	.byte	0x3
	.uleb128 0x283
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x85
	.uleb128 0x19
	.byte	0x5
	.uleb128 0x31
	.long	.LASF1116
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro41
	.byte	0x3
	.uleb128 0xe0
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 66 "/usr/include/SDL3/SDL_mutex.h"
	.byte	0x3
	.uleb128 0x86
	.uleb128 0x42
	.byte	0x5
	.uleb128 0x17
	.long	.LASF1119
	.file 67 "/usr/include/SDL3/SDL_thread.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x43
	.byte	0x5
	.uleb128 0x17
	.long	.LASF1120
	.file 68 "/usr/include/SDL3/SDL_properties.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x44
	.byte	0x5
	.uleb128 0x32
	.long	.LASF1121
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x3
	.uleb128 0x21d
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro42
	.byte	0x3
	.uleb128 0x240
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro43
	.byte	0x3
	.uleb128 0x111
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x3
	.uleb128 0x42f
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 69 "/usr/include/SDL3/SDL_iostream.h"
	.byte	0x3
	.uleb128 0x88
	.uleb128 0x45
	.byte	0x5
	.uleb128 0x24
	.long	.LASF1151
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro44
	.byte	0x3
	.uleb128 0x548
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x8a
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro45
	.byte	0x3
	.uleb128 0x896
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 70 "/usr/include/SDL3/SDL_bits.h"
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x46
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF1176
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x3
	.uleb128 0x91
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 71 "/usr/include/SDL3/SDL_blendmode.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x47
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF1177
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro46
	.byte	0x3
	.uleb128 0xc8
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x29
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x45
	.long	.LASF1186
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x51
	.long	.LASF1187
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro47
	.byte	0x3
	.uleb128 0x59f
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x4b
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x29
	.long	.LASF1219
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF1220
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x3
	.uleb128 0x1f9
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro48
	.byte	0x3
	.uleb128 0x5b1
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x4d
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x3
	.uleb128 0x205
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 72 "/usr/include/SDL3/SDL_clipboard.h"
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x48
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF1231
	.byte	0x3
	.uleb128 0x52
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x3
	.uleb128 0x149
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 73 "/usr/include/SDL3/SDL_cpuinfo.h"
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x49
	.byte	0x5
	.uleb128 0x29
	.long	.LASF1232
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF1233
	.byte	0x3
	.uleb128 0x15f
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 74 "/usr/include/SDL3/SDL_dialog.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x4a
	.byte	0x5
	.uleb128 0x26
	.long	.LASF1234
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x32
	.long	.LASF1235
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro49
	.byte	0x3
	.uleb128 0xcd4
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro50
	.byte	0x3
	.uleb128 0x153
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x15
	.byte	0x5
	.uleb128 0x35
	.long	.LASF1362
	.file 75 "/usr/include/SDL3/SDL_gamepad.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x4b
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF1363
	.file 76 "/usr/include/SDL3/SDL_guid.h"
	.byte	0x3
	.uleb128 0x4f
	.uleb128 0x4c
	.byte	0x5
	.uleb128 0x22
	.long	.LASF1364
	.byte	0x3
	.uleb128 0x26
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x3
	.uleb128 0x68
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x51
	.uleb128 0xe
	.byte	0x5
	.uleb128 0x36
	.long	.LASF1365
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x17
	.long	.LASF1366
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x3
	.uleb128 0x64
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0xd
	.byte	0x5
	.uleb128 0x23
	.long	.LASF1367
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF1368
	.byte	0x3
	.uleb128 0x13e
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x40
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro51
	.byte	0x3
	.uleb128 0x4b0
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x56
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro52
	.byte	0x3
	.uleb128 0x5e3
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x11
	.byte	0x5
	.uleb128 0x22
	.long	.LASF1390
	.byte	0x3
	.uleb128 0x26
	.uleb128 0x10
	.byte	0x5
	.uleb128 0x22
	.long	.LASF1391
	.byte	0x3
	.uleb128 0x25
	.uleb128 0xf
	.byte	0x5
	.uleb128 0x22
	.long	.LASF1392
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro53
	.byte	0x4
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro54
	.byte	0x3
	.uleb128 0x25f
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x12
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF1675
	.byte	0x3
	.uleb128 0x41
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro55
	.byte	0x3
	.uleb128 0x2af
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x40
	.uleb128 0x14
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1687
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x13
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1688
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro56
	.byte	0x3
	.uleb128 0xb6
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro57
	.byte	0x4
	.byte	0x3
	.uleb128 0x47
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x3
	.uleb128 0x624
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 77 "/usr/include/SDL3/SDL_filesystem.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x4d
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF1700
	.byte	0x3
	.uleb128 0x32
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x5
	.uleb128 0x110
	.long	.LASF1701
	.byte	0x3
	.uleb128 0x1f5
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 78 "/usr/include/SDL3/SDL_gpu.h"
	.byte	0x3
	.uleb128 0x32
	.uleb128 0x4e
	.byte	0x5
	.uleb128 0x132
	.long	.LASF1702
	.byte	0x3
	.uleb128 0x13b
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro58
	.byte	0x3
	.uleb128 0x1066
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 79 "/usr/include/SDL3/SDL_haptic.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x4f
	.byte	0x5
	.uleb128 0x76
	.long	.LASF1750
	.byte	0x3
	.uleb128 0x7c
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro59
	.byte	0x3
	.uleb128 0x59f
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 80 "/usr/include/SDL3/SDL_hidapi.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x50
	.byte	0x5
	.uleb128 0x36
	.long	.LASF1776
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x3
	.uleb128 0x226
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 81 "/usr/include/SDL3/SDL_hints.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x51
	.byte	0x5
	.uleb128 0x26
	.long	.LASF1777
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro60
	.byte	0x3
	.uleb128 0x115e
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x16
	.byte	0x5
	.uleb128 0x32
	.long	.LASF2014
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro61
	.byte	0x3
	.uleb128 0x1ef
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 82 "/usr/include/SDL3/SDL_loadso.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x52
	.byte	0x5
	.uleb128 0x39
	.long	.LASF2030
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x3
	.uleb128 0x8f
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 83 "/usr/include/SDL3/SDL_locale.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x53
	.byte	0x5
	.uleb128 0x23
	.long	.LASF2031
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x3
	.uleb128 0x73
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x17
	.byte	0x5
	.uleb128 0x47
	.long	.LASF2032
	.byte	0x3
	.uleb128 0x4b
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x3
	.uleb128 0x218
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 84 "/usr/include/SDL3/SDL_messagebox.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x54
	.byte	0x5
	.uleb128 0x28
	.long	.LASF2033
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro62
	.byte	0x3
	.uleb128 0xe0
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 85 "/usr/include/SDL3/SDL_metal.h"
	.byte	0x3
	.uleb128 0x40
	.uleb128 0x55
	.byte	0x5
	.uleb128 0x21
	.long	.LASF2041
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x3
	.uleb128 0x69
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 86 "/usr/include/SDL3/SDL_misc.h"
	.byte	0x3
	.uleb128 0x41
	.uleb128 0x56
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF2042
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x3
	.uleb128 0x4c
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 87 "/usr/include/SDL3/SDL_platform.h"
	.byte	0x3
	.uleb128 0x46
	.uleb128 0x57
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF2043
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 88 "/usr/include/SDL3/SDL_process.h"
	.byte	0x3
	.uleb128 0x48
	.uleb128 0x58
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF2044
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro63
	.byte	0x3
	.uleb128 0x1ac
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x4b
	.uleb128 0x18
	.byte	0x5
	.uleb128 0x33
	.long	.LASF2060
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro64
	.byte	0x3
	.uleb128 0xa19
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 89 "/usr/include/SDL3/SDL_storage.h"
	.byte	0x3
	.uleb128 0x4e
	.uleb128 0x59
	.byte	0x5
	.uleb128 0xf4
	.long	.LASF2149
	.byte	0x3
	.uleb128 0xfb
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x3
	.uleb128 0x2a7
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 90 "/usr/include/SDL3/SDL_system.h"
	.byte	0x3
	.uleb128 0x50
	.uleb128 0x5a
	.byte	0x5
	.uleb128 0x23
	.long	.LASF2150
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x3
	.uleb128 0x330
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 91 "/usr/include/SDL3/SDL_time.h"
	.byte	0x3
	.uleb128 0x52
	.uleb128 0x5b
	.byte	0x5
	.uleb128 0x17
	.long	.LASF2151
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x3
	.uleb128 0xe5
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 92 "/usr/include/SDL3/SDL_timer.h"
	.byte	0x3
	.uleb128 0x53
	.uleb128 0x5c
	.byte	0x5
	.uleb128 0x17
	.long	.LASF2152
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro65
	.byte	0x3
	.uleb128 0x1c0
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 93 "/usr/include/SDL3/SDL_tray.h"
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x5d
	.byte	0x5
	.uleb128 0x21
	.long	.LASF2164
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro66
	.byte	0x3
	.uleb128 0x21e
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 94 "/usr/include/SDL3/SDL_version.h"
	.byte	0x3
	.uleb128 0x56
	.uleb128 0x5e
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF2170
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x39
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x4
	.byte	0x7
	.long	.Ldebug_macro67
	.byte	0x3
	.uleb128 0xb5
	.uleb128 0x3a
	.byte	0x6
	.uleb128 0x21
	.long	.LASF1059
	.byte	0x4
	.byte	0x4
	.file 95 "/usr/include/SDL3/SDL_oldnames.h"
	.byte	0x3
	.uleb128 0x58
	.uleb128 0x5f
	.byte	0x7
	.long	.Ldebug_macro68
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0x4
	.long	.LASF2763
	.byte	0x5
	.uleb128 0x5
	.long	.LASF2764
	.byte	0x5
	.uleb128 0x6
	.long	.LASF2765
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdcpredef.h.19.88fdbfd5cf6f83ed579effc3e425f09b,comdat
.Ldebug_macro2:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF395
	.byte	0x5
	.uleb128 0x26
	.long	.LASF396
	.byte	0x5
	.uleb128 0x27
	.long	.LASF397
	.byte	0x5
	.uleb128 0x30
	.long	.LASF398
	.byte	0x5
	.uleb128 0x31
	.long	.LASF399
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF400
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_platform_defines.h.29.41cd403f5cc090d7aa956e7d1435e5d2,comdat
.Ldebug_macro3:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF403
	.byte	0x5
	.uleb128 0x65
	.long	.LASF404
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF405
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdarg.h.31.f7f4f3bfddce9ed034956076d59396f7,comdat
.Ldebug_macro4:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF406
	.byte	0x5
	.uleb128 0x20
	.long	.LASF407
	.byte	0x6
	.uleb128 0x22
	.long	.LASF408
	.byte	0x5
	.uleb128 0x27
	.long	.LASF409
	.byte	0x5
	.uleb128 0x32
	.long	.LASF410
	.byte	0x5
	.uleb128 0x34
	.long	.LASF411
	.byte	0x5
	.uleb128 0x35
	.long	.LASF412
	.byte	0x5
	.uleb128 0x38
	.long	.LASF413
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF414
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF415
	.byte	0x5
	.uleb128 0x70
	.long	.LASF416
	.byte	0x5
	.uleb128 0x73
	.long	.LASF417
	.byte	0x5
	.uleb128 0x76
	.long	.LASF418
	.byte	0x5
	.uleb128 0x79
	.long	.LASF419
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdint.h.23.022efde71688fcb285fe42cc87d41ee3,comdat
.Ldebug_macro5:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF420
	.byte	0x5
	.uleb128 0x19
	.long	.LASF421
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.features.h.19.56b660a81becee4fca0402aa9ff5af20,comdat
.Ldebug_macro6:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x13
	.long	.LASF423
	.byte	0x6
	.uleb128 0x81
	.long	.LASF424
	.byte	0x6
	.uleb128 0x82
	.long	.LASF425
	.byte	0x6
	.uleb128 0x83
	.long	.LASF426
	.byte	0x6
	.uleb128 0x84
	.long	.LASF427
	.byte	0x6
	.uleb128 0x85
	.long	.LASF428
	.byte	0x6
	.uleb128 0x86
	.long	.LASF429
	.byte	0x6
	.uleb128 0x87
	.long	.LASF430
	.byte	0x6
	.uleb128 0x88
	.long	.LASF431
	.byte	0x6
	.uleb128 0x89
	.long	.LASF432
	.byte	0x6
	.uleb128 0x8a
	.long	.LASF433
	.byte	0x6
	.uleb128 0x8b
	.long	.LASF434
	.byte	0x6
	.uleb128 0x8c
	.long	.LASF435
	.byte	0x6
	.uleb128 0x8d
	.long	.LASF436
	.byte	0x6
	.uleb128 0x8e
	.long	.LASF437
	.byte	0x6
	.uleb128 0x8f
	.long	.LASF438
	.byte	0x6
	.uleb128 0x90
	.long	.LASF439
	.byte	0x6
	.uleb128 0x91
	.long	.LASF440
	.byte	0x6
	.uleb128 0x92
	.long	.LASF441
	.byte	0x6
	.uleb128 0x93
	.long	.LASF442
	.byte	0x6
	.uleb128 0x94
	.long	.LASF443
	.byte	0x6
	.uleb128 0x95
	.long	.LASF444
	.byte	0x6
	.uleb128 0x96
	.long	.LASF445
	.byte	0x6
	.uleb128 0x97
	.long	.LASF446
	.byte	0x6
	.uleb128 0x98
	.long	.LASF447
	.byte	0x6
	.uleb128 0x99
	.long	.LASF448
	.byte	0x6
	.uleb128 0x9a
	.long	.LASF449
	.byte	0x6
	.uleb128 0x9b
	.long	.LASF450
	.byte	0x6
	.uleb128 0x9c
	.long	.LASF451
	.byte	0x6
	.uleb128 0x9d
	.long	.LASF452
	.byte	0x5
	.uleb128 0xa2
	.long	.LASF453
	.byte	0x5
	.uleb128 0xad
	.long	.LASF454
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF455
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF456
	.byte	0x5
	.uleb128 0x102
	.long	.LASF457
	.byte	0x5
	.uleb128 0x10a
	.long	.LASF458
	.byte	0x5
	.uleb128 0x118
	.long	.LASF459
	.byte	0x5
	.uleb128 0x11f
	.long	.LASF460
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.wordsize.h.4.21825217995af4880cdf0ea22ad93ab2,comdat
.Ldebug_macro7:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x4
	.long	.LASF461
	.byte	0x5
	.uleb128 0xb
	.long	.LASF462
	.byte	0x5
	.uleb128 0xf
	.long	.LASF463
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.features.h.455.c649f304f2a487a4d4dcda6e4e183628,comdat
.Ldebug_macro8:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1c7
	.long	.LASF466
	.byte	0x5
	.uleb128 0x1d1
	.long	.LASF467
	.byte	0x5
	.uleb128 0x1e6
	.long	.LASF468
	.byte	0x5
	.uleb128 0x1f1
	.long	.LASF469
	.byte	0x6
	.uleb128 0x1fe
	.long	.LASF470
	.byte	0x5
	.uleb128 0x1ff
	.long	.LASF471
	.byte	0x5
	.uleb128 0x203
	.long	.LASF472
	.byte	0x5
	.uleb128 0x204
	.long	.LASF473
	.byte	0x5
	.uleb128 0x206
	.long	.LASF474
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cdefs.h.20.1dcb6bb1a828aecd18f3580a9047bf6d,comdat
.Ldebug_macro9:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.long	.LASF475
	.byte	0x2
	.uleb128 0x23
	.string	"__P"
	.byte	0x6
	.uleb128 0x24
	.long	.LASF476
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF477
	.byte	0x5
	.uleb128 0x32
	.long	.LASF478
	.byte	0x5
	.uleb128 0x37
	.long	.LASF479
	.byte	0x5
	.uleb128 0x41
	.long	.LASF480
	.byte	0x5
	.uleb128 0x42
	.long	.LASF481
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF482
	.byte	0x5
	.uleb128 0x50
	.long	.LASF483
	.byte	0x5
	.uleb128 0x51
	.long	.LASF484
	.byte	0x5
	.uleb128 0x52
	.long	.LASF485
	.byte	0x5
	.uleb128 0x66
	.long	.LASF486
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF487
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF488
	.byte	0x5
	.uleb128 0x83
	.long	.LASF489
	.byte	0x5
	.uleb128 0x84
	.long	.LASF490
	.byte	0x5
	.uleb128 0x87
	.long	.LASF491
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF492
	.byte	0x5
	.uleb128 0x90
	.long	.LASF493
	.byte	0x5
	.uleb128 0x99
	.long	.LASF494
	.byte	0x5
	.uleb128 0x9d
	.long	.LASF495
	.byte	0x5
	.uleb128 0x9e
	.long	.LASF496
	.byte	0x5
	.uleb128 0xa6
	.long	.LASF497
	.byte	0x5
	.uleb128 0xa7
	.long	.LASF498
	.byte	0x5
	.uleb128 0x16e
	.long	.LASF499
	.byte	0x5
	.uleb128 0x16f
	.long	.LASF500
	.byte	0x5
	.uleb128 0x17b
	.long	.LASF501
	.byte	0x5
	.uleb128 0x17c
	.long	.LASF502
	.byte	0x5
	.uleb128 0x19a
	.long	.LASF503
	.byte	0x5
	.uleb128 0x1a1
	.long	.LASF504
	.byte	0x5
	.uleb128 0x1a3
	.long	.LASF505
	.byte	0x5
	.uleb128 0x1a6
	.long	.LASF506
	.byte	0x5
	.uleb128 0x1a7
	.long	.LASF507
	.byte	0x5
	.uleb128 0x1aa
	.long	.LASF508
	.byte	0x5
	.uleb128 0x1ae
	.long	.LASF509
	.byte	0x5
	.uleb128 0x1c4
	.long	.LASF510
	.byte	0x5
	.uleb128 0x1cc
	.long	.LASF511
	.byte	0x5
	.uleb128 0x1d5
	.long	.LASF512
	.byte	0x5
	.uleb128 0x1df
	.long	.LASF513
	.byte	0x5
	.uleb128 0x1e6
	.long	.LASF514
	.byte	0x5
	.uleb128 0x1ec
	.long	.LASF515
	.byte	0x5
	.uleb128 0x1f5
	.long	.LASF516
	.byte	0x5
	.uleb128 0x1f6
	.long	.LASF517
	.byte	0x5
	.uleb128 0x1fe
	.long	.LASF518
	.byte	0x5
	.uleb128 0x208
	.long	.LASF519
	.byte	0x5
	.uleb128 0x215
	.long	.LASF520
	.byte	0x5
	.uleb128 0x21f
	.long	.LASF521
	.byte	0x5
	.uleb128 0x22b
	.long	.LASF522
	.byte	0x5
	.uleb128 0x231
	.long	.LASF523
	.byte	0x5
	.uleb128 0x238
	.long	.LASF524
	.byte	0x5
	.uleb128 0x241
	.long	.LASF525
	.byte	0x5
	.uleb128 0x24a
	.long	.LASF526
	.byte	0x6
	.uleb128 0x252
	.long	.LASF527
	.byte	0x5
	.uleb128 0x253
	.long	.LASF528
	.byte	0x5
	.uleb128 0x25c
	.long	.LASF529
	.byte	0x5
	.uleb128 0x26e
	.long	.LASF530
	.byte	0x5
	.uleb128 0x26f
	.long	.LASF531
	.byte	0x5
	.uleb128 0x278
	.long	.LASF532
	.byte	0x5
	.uleb128 0x27e
	.long	.LASF533
	.byte	0x5
	.uleb128 0x27f
	.long	.LASF534
	.byte	0x5
	.uleb128 0x29a
	.long	.LASF535
	.byte	0x5
	.uleb128 0x2a9
	.long	.LASF536
	.byte	0x5
	.uleb128 0x2aa
	.long	.LASF537
	.byte	0x5
	.uleb128 0x2bf
	.long	.LASF538
	.byte	0x6
	.uleb128 0x2c5
	.long	.LASF539
	.byte	0x5
	.uleb128 0x2c9
	.long	.LASF540
	.byte	0x5
	.uleb128 0x2d2
	.long	.LASF541
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cdefs.h.788.e8571391c2d896d8f5f77c5a7759b6a3,comdat
.Ldebug_macro10:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x314
	.long	.LASF543
	.byte	0x5
	.uleb128 0x315
	.long	.LASF544
	.byte	0x5
	.uleb128 0x316
	.long	.LASF545
	.byte	0x5
	.uleb128 0x317
	.long	.LASF546
	.byte	0x5
	.uleb128 0x318
	.long	.LASF547
	.byte	0x5
	.uleb128 0x319
	.long	.LASF548
	.byte	0x5
	.uleb128 0x31b
	.long	.LASF549
	.byte	0x5
	.uleb128 0x31c
	.long	.LASF550
	.byte	0x5
	.uleb128 0x327
	.long	.LASF551
	.byte	0x5
	.uleb128 0x328
	.long	.LASF552
	.byte	0x5
	.uleb128 0x33a
	.long	.LASF553
	.byte	0x5
	.uleb128 0x345
	.long	.LASF554
	.byte	0x5
	.uleb128 0x34d
	.long	.LASF555
	.byte	0x5
	.uleb128 0x350
	.long	.LASF556
	.byte	0x5
	.uleb128 0x35d
	.long	.LASF557
	.byte	0x5
	.uleb128 0x35f
	.long	.LASF558
	.byte	0x5
	.uleb128 0x368
	.long	.LASF559
	.byte	0x5
	.uleb128 0x371
	.long	.LASF560
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stubs64.h.10.7865f4f7062bab1c535c1f73f43aa9b9,comdat
.Ldebug_macro11:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xa
	.long	.LASF562
	.byte	0x5
	.uleb128 0xb
	.long	.LASF563
	.byte	0x5
	.uleb128 0xc
	.long	.LASF564
	.byte	0x5
	.uleb128 0xd
	.long	.LASF565
	.byte	0x5
	.uleb128 0xe
	.long	.LASF566
	.byte	0x5
	.uleb128 0xf
	.long	.LASF567
	.byte	0x5
	.uleb128 0x10
	.long	.LASF568
	.byte	0x5
	.uleb128 0x11
	.long	.LASF569
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.libcheaderstart.h.37.54e8d8059c870ac734d329906f602c2b,comdat
.Ldebug_macro12:
	.value	0x5
	.byte	0
	.byte	0x6
	.uleb128 0x25
	.long	.LASF570
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF571
	.byte	0x6
	.uleb128 0x43
	.long	.LASF572
	.byte	0x5
	.uleb128 0x47
	.long	.LASF573
	.byte	0x6
	.uleb128 0x49
	.long	.LASF574
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF575
	.byte	0x6
	.uleb128 0x4f
	.long	.LASF576
	.byte	0x5
	.uleb128 0x53
	.long	.LASF577
	.byte	0x6
	.uleb128 0x5a
	.long	.LASF578
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF579
	.byte	0x6
	.uleb128 0x60
	.long	.LASF580
	.byte	0x5
	.uleb128 0x64
	.long	.LASF581
	.byte	0x6
	.uleb128 0x69
	.long	.LASF582
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF583
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.types.h.109.56eb9ae966b255288cc544f18746a7ff,comdat
.Ldebug_macro13:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF585
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF586
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF587
	.byte	0x5
	.uleb128 0x70
	.long	.LASF588
	.byte	0x5
	.uleb128 0x71
	.long	.LASF589
	.byte	0x5
	.uleb128 0x72
	.long	.LASF590
	.byte	0x5
	.uleb128 0x80
	.long	.LASF591
	.byte	0x5
	.uleb128 0x81
	.long	.LASF592
	.byte	0x5
	.uleb128 0x82
	.long	.LASF593
	.byte	0x5
	.uleb128 0x83
	.long	.LASF594
	.byte	0x5
	.uleb128 0x84
	.long	.LASF595
	.byte	0x5
	.uleb128 0x85
	.long	.LASF596
	.byte	0x5
	.uleb128 0x86
	.long	.LASF597
	.byte	0x5
	.uleb128 0x87
	.long	.LASF598
	.byte	0x5
	.uleb128 0x89
	.long	.LASF599
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.typesizes.h.24.ccf5919b8e01b553263cf8f4ab1d5fde,comdat
.Ldebug_macro14:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x18
	.long	.LASF600
	.byte	0x5
	.uleb128 0x22
	.long	.LASF601
	.byte	0x5
	.uleb128 0x23
	.long	.LASF602
	.byte	0x5
	.uleb128 0x26
	.long	.LASF603
	.byte	0x5
	.uleb128 0x27
	.long	.LASF604
	.byte	0x5
	.uleb128 0x28
	.long	.LASF605
	.byte	0x5
	.uleb128 0x29
	.long	.LASF606
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF607
	.byte	0x5
	.uleb128 0x2b
	.long	.LASF608
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF609
	.byte	0x5
	.uleb128 0x2e
	.long	.LASF610
	.byte	0x5
	.uleb128 0x33
	.long	.LASF611
	.byte	0x5
	.uleb128 0x34
	.long	.LASF612
	.byte	0x5
	.uleb128 0x35
	.long	.LASF613
	.byte	0x5
	.uleb128 0x36
	.long	.LASF614
	.byte	0x5
	.uleb128 0x37
	.long	.LASF615
	.byte	0x5
	.uleb128 0x38
	.long	.LASF616
	.byte	0x5
	.uleb128 0x39
	.long	.LASF617
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF618
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF619
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF620
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF621
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF622
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF623
	.byte	0x5
	.uleb128 0x40
	.long	.LASF624
	.byte	0x5
	.uleb128 0x41
	.long	.LASF625
	.byte	0x5
	.uleb128 0x42
	.long	.LASF626
	.byte	0x5
	.uleb128 0x43
	.long	.LASF627
	.byte	0x5
	.uleb128 0x44
	.long	.LASF628
	.byte	0x5
	.uleb128 0x45
	.long	.LASF629
	.byte	0x5
	.uleb128 0x46
	.long	.LASF630
	.byte	0x5
	.uleb128 0x47
	.long	.LASF631
	.byte	0x5
	.uleb128 0x48
	.long	.LASF632
	.byte	0x5
	.uleb128 0x49
	.long	.LASF633
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF634
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF635
	.byte	0x5
	.uleb128 0x51
	.long	.LASF636
	.byte	0x5
	.uleb128 0x54
	.long	.LASF637
	.byte	0x5
	.uleb128 0x57
	.long	.LASF638
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF639
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF640
	.byte	0x5
	.uleb128 0x67
	.long	.LASF641
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.time64.h.24.a8166ae916ec910dab0d8987098d42ee,comdat
.Ldebug_macro15:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x18
	.long	.LASF642
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF643
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.wchar.h.20.510818a05484290d697a517509bf4b2d,comdat
.Ldebug_macro16:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.long	.LASF645
	.byte	0x5
	.uleb128 0x22
	.long	.LASF646
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF647
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdint.h.77.2c483fb59bdff411b77616f53b8efe8b,comdat
.Ldebug_macro17:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF651
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF124
	.byte	0x5
	.uleb128 0x60
	.long	.LASF133
	.byte	0x5
	.uleb128 0x69
	.long	.LASF652
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF653
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF654
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF655
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF656
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF657
	.byte	0x5
	.uleb128 0x70
	.long	.LASF658
	.byte	0x5
	.uleb128 0x71
	.long	.LASF659
	.byte	0x5
	.uleb128 0x74
	.long	.LASF660
	.byte	0x5
	.uleb128 0x75
	.long	.LASF661
	.byte	0x5
	.uleb128 0x76
	.long	.LASF662
	.byte	0x5
	.uleb128 0x77
	.long	.LASF663
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF664
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF665
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF666
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF667
	.byte	0x5
	.uleb128 0x80
	.long	.LASF668
	.byte	0x5
	.uleb128 0x81
	.long	.LASF669
	.byte	0x5
	.uleb128 0x82
	.long	.LASF670
	.byte	0x5
	.uleb128 0x83
	.long	.LASF671
	.byte	0x5
	.uleb128 0x86
	.long	.LASF672
	.byte	0x5
	.uleb128 0x87
	.long	.LASF673
	.byte	0x5
	.uleb128 0x88
	.long	.LASF674
	.byte	0x5
	.uleb128 0x89
	.long	.LASF675
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF676
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF677
	.byte	0x5
	.uleb128 0x90
	.long	.LASF678
	.byte	0x5
	.uleb128 0x95
	.long	.LASF679
	.byte	0x5
	.uleb128 0x97
	.long	.LASF680
	.byte	0x5
	.uleb128 0x99
	.long	.LASF681
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF682
	.byte	0x5
	.uleb128 0x9f
	.long	.LASF683
	.byte	0x5
	.uleb128 0xa2
	.long	.LASF684
	.byte	0x5
	.uleb128 0xa4
	.long	.LASF685
	.byte	0x5
	.uleb128 0xa5
	.long	.LASF686
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF687
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF688
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF689
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF690
	.byte	0x5
	.uleb128 0xba
	.long	.LASF691
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF692
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF693
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF694
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF695
	.byte	0x5
	.uleb128 0xd3
	.long	.LASF696
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF697
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF698
	.byte	0x5
	.uleb128 0xe4
	.long	.LASF699
	.byte	0x5
	.uleb128 0xe5
	.long	.LASF700
	.byte	0x5
	.uleb128 0xe9
	.long	.LASF701
	.byte	0x5
	.uleb128 0xea
	.long	.LASF702
	.byte	0x5
	.uleb128 0xed
	.long	.LASF703
	.byte	0x5
	.uleb128 0xee
	.long	.LASF704
	.byte	0x5
	.uleb128 0xef
	.long	.LASF705
	.byte	0x5
	.uleb128 0xf1
	.long	.LASF706
	.byte	0x5
	.uleb128 0xf7
	.long	.LASF707
	.byte	0x5
	.uleb128 0xf8
	.long	.LASF708
	.byte	0x5
	.uleb128 0xf9
	.long	.LASF709
	.byte	0x5
	.uleb128 0xfb
	.long	.LASF710
	.byte	0x5
	.uleb128 0x102
	.long	.LASF711
	.byte	0x5
	.uleb128 0x103
	.long	.LASF712
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.string.h.23.93403f89af7dba8212345449bb14b09d,comdat
.Ldebug_macro18:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF714
	.byte	0x5
	.uleb128 0x19
	.long	.LASF421
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.libcheaderstart.h.31.c486d45d0dfd23b377d2be9ea2ca81c6,comdat
.Ldebug_macro19:
	.value	0x5
	.byte	0
	.byte	0x6
	.uleb128 0x1f
	.long	.LASF422
	.byte	0x6
	.uleb128 0x25
	.long	.LASF570
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF571
	.byte	0x6
	.uleb128 0x43
	.long	.LASF572
	.byte	0x5
	.uleb128 0x47
	.long	.LASF573
	.byte	0x6
	.uleb128 0x49
	.long	.LASF574
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF575
	.byte	0x6
	.uleb128 0x4f
	.long	.LASF576
	.byte	0x5
	.uleb128 0x53
	.long	.LASF577
	.byte	0x6
	.uleb128 0x5a
	.long	.LASF578
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF579
	.byte	0x6
	.uleb128 0x60
	.long	.LASF580
	.byte	0x5
	.uleb128 0x64
	.long	.LASF581
	.byte	0x6
	.uleb128 0x69
	.long	.LASF582
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF583
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.string.h.31.e39a94e203ad4e1d978c0fc68ce016ee,comdat
.Ldebug_macro20:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF715
	.byte	0x5
	.uleb128 0x20
	.long	.LASF716
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.185.cbb642e1ccd385e8aa504b15cb7fb086,comdat
.Ldebug_macro21:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF717
	.byte	0x5
	.uleb128 0xba
	.long	.LASF718
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF719
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF720
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF721
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF722
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF723
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF724
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF725
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF726
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF727
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF728
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF729
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF730
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF731
	.byte	0x5
	.uleb128 0xc8
	.long	.LASF732
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF733
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF734
	.byte	0x6
	.uleb128 0xed
	.long	.LASF735
	.byte	0x6
	.uleb128 0x18f
	.long	.LASF736
	.byte	0x5
	.uleb128 0x194
	.long	.LASF737
	.byte	0x6
	.uleb128 0x19a
	.long	.LASF738
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.wchar.h.24.10c1a3649a347ee5acc556316eedb15a,comdat
.Ldebug_macro22:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x18
	.long	.LASF739
	.byte	0x5
	.uleb128 0x1a
	.long	.LASF421
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.floatn.h.20.f5c44cc64e42c547bb9a7956d161290a,comdat
.Ldebug_macro23:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.long	.LASF740
	.byte	0x5
	.uleb128 0x21
	.long	.LASF741
	.byte	0x5
	.uleb128 0x29
	.long	.LASF742
	.byte	0x5
	.uleb128 0x31
	.long	.LASF743
	.byte	0x5
	.uleb128 0x37
	.long	.LASF744
	.byte	0x5
	.uleb128 0x44
	.long	.LASF745
	.byte	0x5
	.uleb128 0x52
	.long	.LASF746
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.floatncommon.h.34.7e1840d7dfb19e9bdb51aeb077d76637,comdat
.Ldebug_macro24:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x22
	.long	.LASF748
	.byte	0x5
	.uleb128 0x23
	.long	.LASF749
	.byte	0x5
	.uleb128 0x24
	.long	.LASF750
	.byte	0x5
	.uleb128 0x25
	.long	.LASF751
	.byte	0x5
	.uleb128 0x26
	.long	.LASF752
	.byte	0x5
	.uleb128 0x34
	.long	.LASF753
	.byte	0x5
	.uleb128 0x35
	.long	.LASF754
	.byte	0x5
	.uleb128 0x36
	.long	.LASF755
	.byte	0x5
	.uleb128 0x37
	.long	.LASF756
	.byte	0x5
	.uleb128 0x38
	.long	.LASF757
	.byte	0x5
	.uleb128 0x39
	.long	.LASF758
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF759
	.byte	0x5
	.uleb128 0x46
	.long	.LASF760
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF761
	.byte	0x5
	.uleb128 0x69
	.long	.LASF762
	.byte	0x5
	.uleb128 0x71
	.long	.LASF763
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF764
	.byte	0x5
	.uleb128 0x97
	.long	.LASF765
	.byte	0x5
	.uleb128 0xa3
	.long	.LASF766
	.byte	0x5
	.uleb128 0xab
	.long	.LASF767
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF768
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.wchar.h.32.859ec9de6e76762773b13581955bbb2b,comdat
.Ldebug_macro25:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x20
	.long	.LASF715
	.byte	0x5
	.uleb128 0x21
	.long	.LASF769
	.byte	0x5
	.uleb128 0x22
	.long	.LASF716
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.237.2a7f4947d4b7296e7e393bf9a618c3c1,comdat
.Ldebug_macro26:
	.value	0x5
	.byte	0
	.byte	0x6
	.uleb128 0xed
	.long	.LASF735
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF770
	.byte	0x5
	.uleb128 0x10c
	.long	.LASF771
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF772
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF773
	.byte	0x5
	.uleb128 0x10f
	.long	.LASF774
	.byte	0x5
	.uleb128 0x110
	.long	.LASF775
	.byte	0x5
	.uleb128 0x111
	.long	.LASF776
	.byte	0x5
	.uleb128 0x112
	.long	.LASF777
	.byte	0x5
	.uleb128 0x113
	.long	.LASF778
	.byte	0x5
	.uleb128 0x114
	.long	.LASF779
	.byte	0x5
	.uleb128 0x115
	.long	.LASF780
	.byte	0x5
	.uleb128 0x116
	.long	.LASF781
	.byte	0x5
	.uleb128 0x117
	.long	.LASF782
	.byte	0x5
	.uleb128 0x118
	.long	.LASF783
	.byte	0x5
	.uleb128 0x119
	.long	.LASF784
	.byte	0x5
	.uleb128 0x11a
	.long	.LASF785
	.byte	0x6
	.uleb128 0x127
	.long	.LASF786
	.byte	0x6
	.uleb128 0x15d
	.long	.LASF787
	.byte	0x6
	.uleb128 0x18f
	.long	.LASF736
	.byte	0x5
	.uleb128 0x194
	.long	.LASF737
	.byte	0x6
	.uleb128 0x19a
	.long	.LASF738
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.wint_t.h.2.b153cb48df5337e6e56fe1404a1b29c5,comdat
.Ldebug_macro27:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.long	.LASF789
	.byte	0x5
	.uleb128 0xa
	.long	.LASF790
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.inttypes.h.23.8083ff23f688348e0ab4b88535886b2c,comdat
.Ldebug_macro28:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x17
	.long	.LASF795
	.byte	0x5
	.uleb128 0x28
	.long	.LASF796
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF797
	.byte	0x5
	.uleb128 0x2d
	.long	.LASF798
	.byte	0x5
	.uleb128 0x36
	.long	.LASF799
	.byte	0x5
	.uleb128 0x37
	.long	.LASF800
	.byte	0x5
	.uleb128 0x38
	.long	.LASF801
	.byte	0x5
	.uleb128 0x39
	.long	.LASF802
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF803
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF804
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF805
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF806
	.byte	0x5
	.uleb128 0x40
	.long	.LASF807
	.byte	0x5
	.uleb128 0x41
	.long	.LASF808
	.byte	0x5
	.uleb128 0x42
	.long	.LASF809
	.byte	0x5
	.uleb128 0x43
	.long	.LASF810
	.byte	0x5
	.uleb128 0x46
	.long	.LASF811
	.byte	0x5
	.uleb128 0x47
	.long	.LASF812
	.byte	0x5
	.uleb128 0x48
	.long	.LASF813
	.byte	0x5
	.uleb128 0x49
	.long	.LASF814
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF815
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF816
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF817
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF818
	.byte	0x5
	.uleb128 0x50
	.long	.LASF819
	.byte	0x5
	.uleb128 0x51
	.long	.LASF820
	.byte	0x5
	.uleb128 0x52
	.long	.LASF821
	.byte	0x5
	.uleb128 0x53
	.long	.LASF822
	.byte	0x5
	.uleb128 0x56
	.long	.LASF823
	.byte	0x5
	.uleb128 0x57
	.long	.LASF824
	.byte	0x5
	.uleb128 0x58
	.long	.LASF825
	.byte	0x5
	.uleb128 0x59
	.long	.LASF826
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF827
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF828
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF829
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF830
	.byte	0x5
	.uleb128 0x60
	.long	.LASF831
	.byte	0x5
	.uleb128 0x61
	.long	.LASF832
	.byte	0x5
	.uleb128 0x62
	.long	.LASF833
	.byte	0x5
	.uleb128 0x63
	.long	.LASF834
	.byte	0x5
	.uleb128 0x66
	.long	.LASF835
	.byte	0x5
	.uleb128 0x67
	.long	.LASF836
	.byte	0x5
	.uleb128 0x68
	.long	.LASF837
	.byte	0x5
	.uleb128 0x69
	.long	.LASF838
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF839
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF840
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF841
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF842
	.byte	0x5
	.uleb128 0x70
	.long	.LASF843
	.byte	0x5
	.uleb128 0x71
	.long	.LASF844
	.byte	0x5
	.uleb128 0x72
	.long	.LASF845
	.byte	0x5
	.uleb128 0x73
	.long	.LASF846
	.byte	0x5
	.uleb128 0x76
	.long	.LASF847
	.byte	0x5
	.uleb128 0x77
	.long	.LASF848
	.byte	0x5
	.uleb128 0x78
	.long	.LASF849
	.byte	0x5
	.uleb128 0x79
	.long	.LASF850
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF851
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF852
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF853
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF854
	.byte	0x5
	.uleb128 0x80
	.long	.LASF855
	.byte	0x5
	.uleb128 0x81
	.long	.LASF856
	.byte	0x5
	.uleb128 0x82
	.long	.LASF857
	.byte	0x5
	.uleb128 0x83
	.long	.LASF858
	.byte	0x5
	.uleb128 0x86
	.long	.LASF859
	.byte	0x5
	.uleb128 0x87
	.long	.LASF860
	.byte	0x5
	.uleb128 0x88
	.long	.LASF861
	.byte	0x5
	.uleb128 0x89
	.long	.LASF862
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF863
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF864
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF865
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF866
	.byte	0x5
	.uleb128 0x90
	.long	.LASF867
	.byte	0x5
	.uleb128 0x91
	.long	.LASF868
	.byte	0x5
	.uleb128 0x92
	.long	.LASF869
	.byte	0x5
	.uleb128 0x93
	.long	.LASF870
	.byte	0x5
	.uleb128 0x97
	.long	.LASF871
	.byte	0x5
	.uleb128 0x98
	.long	.LASF872
	.byte	0x5
	.uleb128 0x99
	.long	.LASF873
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF874
	.byte	0x5
	.uleb128 0x9b
	.long	.LASF875
	.byte	0x5
	.uleb128 0x9c
	.long	.LASF876
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF877
	.byte	0x5
	.uleb128 0xa1
	.long	.LASF878
	.byte	0x5
	.uleb128 0xa2
	.long	.LASF879
	.byte	0x5
	.uleb128 0xa3
	.long	.LASF880
	.byte	0x5
	.uleb128 0xa4
	.long	.LASF881
	.byte	0x5
	.uleb128 0xa5
	.long	.LASF882
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF883
	.byte	0x5
	.uleb128 0xd3
	.long	.LASF884
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF885
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF886
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF887
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF888
	.byte	0x5
	.uleb128 0xd9
	.long	.LASF889
	.byte	0x5
	.uleb128 0xda
	.long	.LASF890
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF891
	.byte	0x5
	.uleb128 0xdd
	.long	.LASF892
	.byte	0x5
	.uleb128 0xde
	.long	.LASF893
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF894
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF895
	.byte	0x5
	.uleb128 0xe3
	.long	.LASF896
	.byte	0x5
	.uleb128 0xe4
	.long	.LASF897
	.byte	0x5
	.uleb128 0xe5
	.long	.LASF898
	.byte	0x5
	.uleb128 0xe7
	.long	.LASF899
	.byte	0x5
	.uleb128 0xe8
	.long	.LASF900
	.byte	0x5
	.uleb128 0xe9
	.long	.LASF901
	.byte	0x5
	.uleb128 0xea
	.long	.LASF902
	.byte	0x5
	.uleb128 0xec
	.long	.LASF903
	.byte	0x5
	.uleb128 0xed
	.long	.LASF904
	.byte	0x5
	.uleb128 0xee
	.long	.LASF905
	.byte	0x5
	.uleb128 0xef
	.long	.LASF906
	.byte	0x5
	.uleb128 0xf2
	.long	.LASF907
	.byte	0x5
	.uleb128 0xf3
	.long	.LASF908
	.byte	0x5
	.uleb128 0xf4
	.long	.LASF909
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF910
	.byte	0x5
	.uleb128 0xf7
	.long	.LASF911
	.byte	0x5
	.uleb128 0xf8
	.long	.LASF912
	.byte	0x5
	.uleb128 0xf9
	.long	.LASF913
	.byte	0x5
	.uleb128 0xfa
	.long	.LASF914
	.byte	0x5
	.uleb128 0xfc
	.long	.LASF915
	.byte	0x5
	.uleb128 0xfd
	.long	.LASF916
	.byte	0x5
	.uleb128 0xfe
	.long	.LASF917
	.byte	0x5
	.uleb128 0xff
	.long	.LASF918
	.byte	0x5
	.uleb128 0x102
	.long	.LASF919
	.byte	0x5
	.uleb128 0x103
	.long	.LASF920
	.byte	0x5
	.uleb128 0x104
	.long	.LASF921
	.byte	0x5
	.uleb128 0x105
	.long	.LASF922
	.byte	0x5
	.uleb128 0x107
	.long	.LASF923
	.byte	0x5
	.uleb128 0x108
	.long	.LASF924
	.byte	0x5
	.uleb128 0x109
	.long	.LASF925
	.byte	0x5
	.uleb128 0x10a
	.long	.LASF926
	.byte	0x5
	.uleb128 0x10c
	.long	.LASF927
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF928
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF929
	.byte	0x5
	.uleb128 0x10f
	.long	.LASF930
	.byte	0x5
	.uleb128 0x112
	.long	.LASF931
	.byte	0x5
	.uleb128 0x113
	.long	.LASF932
	.byte	0x5
	.uleb128 0x114
	.long	.LASF933
	.byte	0x5
	.uleb128 0x115
	.long	.LASF934
	.byte	0x5
	.uleb128 0x117
	.long	.LASF935
	.byte	0x5
	.uleb128 0x118
	.long	.LASF936
	.byte	0x5
	.uleb128 0x119
	.long	.LASF937
	.byte	0x5
	.uleb128 0x11a
	.long	.LASF938
	.byte	0x5
	.uleb128 0x11c
	.long	.LASF939
	.byte	0x5
	.uleb128 0x11d
	.long	.LASF940
	.byte	0x5
	.uleb128 0x11e
	.long	.LASF941
	.byte	0x5
	.uleb128 0x11f
	.long	.LASF942
	.byte	0x5
	.uleb128 0x123
	.long	.LASF943
	.byte	0x5
	.uleb128 0x124
	.long	.LASF944
	.byte	0x5
	.uleb128 0x125
	.long	.LASF945
	.byte	0x5
	.uleb128 0x126
	.long	.LASF946
	.byte	0x5
	.uleb128 0x127
	.long	.LASF947
	.byte	0x5
	.uleb128 0x12a
	.long	.LASF948
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF949
	.byte	0x5
	.uleb128 0x12c
	.long	.LASF950
	.byte	0x5
	.uleb128 0x12d
	.long	.LASF951
	.byte	0x5
	.uleb128 0x12e
	.long	.LASF952
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdbool.h.29.c08aa3eec75cf5b9b5003883f43253f0,comdat
.Ldebug_macro29:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.long	.LASF954
	.byte	0x5
	.uleb128 0x24
	.long	.LASF955
	.byte	0x5
	.uleb128 0x25
	.long	.LASF956
	.byte	0x5
	.uleb128 0x26
	.long	.LASF957
	.byte	0x5
	.uleb128 0x31
	.long	.LASF958
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_stdinc.h.90.634b50c942248592d5c89ad0f05e0c7e,comdat
.Ldebug_macro30:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF959
	.byte	0x5
	.uleb128 0x9b
	.long	.LASF960
	.byte	0x5
	.uleb128 0xd1
	.long	.LASF961
	.byte	0x5
	.uleb128 0xe1
	.long	.LASF962
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF963
	.byte	0x5
	.uleb128 0x143
	.long	.LASF964
	.byte	0x5
	.uleb128 0x144
	.long	.LASF965
	.byte	0x5
	.uleb128 0x145
	.long	.LASF966
	.byte	0x5
	.uleb128 0x158
	.long	.LASF967
	.byte	0x5
	.uleb128 0x17e
	.long	.LASF968
	.byte	0x5
	.uleb128 0x18a
	.long	.LASF969
	.byte	0x5
	.uleb128 0x1a1
	.long	.LASF970
	.byte	0x5
	.uleb128 0x1a2
	.long	.LASF971
	.byte	0x5
	.uleb128 0x1aa
	.long	.LASF972
	.byte	0x5
	.uleb128 0x1ab
	.long	.LASF973
	.byte	0x5
	.uleb128 0x1b3
	.long	.LASF974
	.byte	0x5
	.uleb128 0x1b4
	.long	.LASF975
	.byte	0x5
	.uleb128 0x1bc
	.long	.LASF976
	.byte	0x5
	.uleb128 0x1bd
	.long	.LASF977
	.byte	0x5
	.uleb128 0x1c5
	.long	.LASF978
	.byte	0x5
	.uleb128 0x1c6
	.long	.LASF979
	.byte	0x5
	.uleb128 0x1ce
	.long	.LASF980
	.byte	0x5
	.uleb128 0x1cf
	.long	.LASF981
	.byte	0x5
	.uleb128 0x1d9
	.long	.LASF982
	.byte	0x5
	.uleb128 0x1da
	.long	.LASF983
	.byte	0x5
	.uleb128 0x1e4
	.long	.LASF984
	.byte	0x5
	.uleb128 0x1e5
	.long	.LASF985
	.byte	0x5
	.uleb128 0x1f5
	.long	.LASF986
	.byte	0x5
	.uleb128 0x1f6
	.long	.LASF987
	.byte	0x5
	.uleb128 0x20b
	.long	.LASF988
	.byte	0x5
	.uleb128 0x2c8
	.long	.LASF989
	.byte	0x5
	.uleb128 0x2d3
	.long	.LASF990
	.byte	0x5
	.uleb128 0x2de
	.long	.LASF991
	.byte	0x5
	.uleb128 0x2e9
	.long	.LASF992
	.byte	0x5
	.uleb128 0x2f2
	.long	.LASF993
	.byte	0x5
	.uleb128 0x2f9
	.long	.LASF994
	.byte	0x5
	.uleb128 0x300
	.long	.LASF995
	.byte	0x5
	.uleb128 0x307
	.long	.LASF996
	.byte	0x5
	.uleb128 0x313
	.long	.LASF997
	.byte	0x5
	.uleb128 0x316
	.long	.LASF998
	.byte	0x5
	.uleb128 0x319
	.long	.LASF999
	.byte	0x5
	.uleb128 0x31c
	.long	.LASF1000
	.byte	0x5
	.uleb128 0x31f
	.long	.LASF1001
	.byte	0x5
	.uleb128 0x460
	.long	.LASF1002
	.byte	0x5
	.uleb128 0x461
	.long	.LASF1003
	.byte	0x5
	.uleb128 0x462
	.long	.LASF1004
	.byte	0x5
	.uleb128 0x463
	.long	.LASF1005
	.byte	0x5
	.uleb128 0x464
	.long	.LASF1006
	.byte	0x5
	.uleb128 0x465
	.long	.LASF1007
	.byte	0x5
	.uleb128 0x466
	.long	.LASF1008
	.byte	0x5
	.uleb128 0x467
	.long	.LASF1009
	.byte	0x5
	.uleb128 0x46a
	.long	.LASF1010
	.byte	0x5
	.uleb128 0x46b
	.long	.LASF1011
	.byte	0x5
	.uleb128 0x46c
	.long	.LASF1012
	.byte	0x5
	.uleb128 0x46d
	.long	.LASF1013
	.byte	0x5
	.uleb128 0x46e
	.long	.LASF1014
	.byte	0x5
	.uleb128 0x46f
	.long	.LASF1015
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_begin_code.h.40.8bbc501a92ab6f90c752fd318e86c641,comdat
.Ldebug_macro31:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1016
	.byte	0x5
	.uleb128 0x121
	.long	.LASF1017
	.byte	0x5
	.uleb128 0x129
	.long	.LASF1018
	.byte	0x5
	.uleb128 0x133
	.long	.LASF1019
	.byte	0x5
	.uleb128 0x143
	.long	.LASF1020
	.byte	0x5
	.uleb128 0x14f
	.long	.LASF1021
	.byte	0x5
	.uleb128 0x16c
	.long	.LASF1022
	.byte	0x5
	.uleb128 0x181
	.long	.LASF1023
	.byte	0x5
	.uleb128 0x189
	.long	.LASF1024
	.byte	0x5
	.uleb128 0x198
	.long	.LASF1025
	.byte	0x5
	.uleb128 0x1ac
	.long	.LASF1026
	.byte	0x5
	.uleb128 0x1b3
	.long	.LASF1027
	.byte	0x6
	.uleb128 0x1b7
	.long	.LASF1028
	.byte	0x5
	.uleb128 0x1c0
	.long	.LASF1029
	.byte	0x5
	.uleb128 0x1ca
	.long	.LASF1030
	.byte	0x5
	.uleb128 0x1d6
	.long	.LASF1031
	.byte	0x5
	.uleb128 0x1e0
	.long	.LASF1032
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_stdinc.h.1235.840c143106962c220926f011bc49ef09,comdat
.Ldebug_macro32:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x4d3
	.long	.LASF1033
	.byte	0x5
	.uleb128 0x507
	.long	.LASF1034
	.byte	0x5
	.uleb128 0x508
	.long	.LASF1035
	.byte	0x5
	.uleb128 0x832
	.long	.LASF1036
	.byte	0x5
	.uleb128 0x844
	.long	.LASF1037
	.byte	0x5
	.uleb128 0x85c
	.long	.LASF1038
	.byte	0x5
	.uleb128 0x9a7
	.long	.LASF1039
	.byte	0x5
	.uleb128 0x9c3
	.long	.LASF1040
	.byte	0x5
	.uleb128 0x9df
	.long	.LASF1041
	.byte	0x5
	.uleb128 0xa0f
	.long	.LASF1042
	.byte	0x5
	.uleb128 0xa23
	.long	.LASF1043
	.byte	0x5
	.uleb128 0xa36
	.long	.LASF1044
	.byte	0x5
	.uleb128 0xa49
	.long	.LASF1045
	.byte	0x5
	.uleb128 0xf68
	.long	.LASF1046
	.byte	0x5
	.uleb128 0x1157
	.long	.LASF1047
	.byte	0x5
	.uleb128 0x1163
	.long	.LASF1048
	.byte	0x5
	.uleb128 0x16d8
	.long	.LASF1049
	.byte	0x5
	.uleb128 0x16d9
	.long	.LASF1050
	.byte	0x5
	.uleb128 0x16da
	.long	.LASF1051
	.byte	0x5
	.uleb128 0x16db
	.long	.LASF1052
	.byte	0x5
	.uleb128 0x170a
	.long	.LASF1053
	.byte	0x5
	.uleb128 0x1718
	.long	.LASF1054
	.byte	0x5
	.uleb128 0x1726
	.long	.LASF1055
	.byte	0x5
	.uleb128 0x1734
	.long	.LASF1056
	.byte	0x5
	.uleb128 0x17a1
	.long	.LASF1057
	.byte	0x5
	.uleb128 0x17c7
	.long	.LASF1058
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_assert.h.103.6e3aad712bbcbe7c5a30cf06df90770d,comdat
.Ldebug_macro33:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x67
	.long	.LASF1061
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF1062
	.byte	0x5
	.uleb128 0xad
	.long	.LASF1063
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF1064
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF1065
	.byte	0x5
	.uleb128 0xec
	.long	.LASF1066
	.byte	0x5
	.uleb128 0xfd
	.long	.LASF1067
	.byte	0x5
	.uleb128 0x14f
	.long	.LASF1068
	.byte	0x5
	.uleb128 0x168
	.long	.LASF1069
	.byte	0x5
	.uleb128 0x1dc
	.long	.LASF1070
	.byte	0x5
	.uleb128 0x1dd
	.long	.LASF1071
	.byte	0x5
	.uleb128 0x1de
	.long	.LASF1072
	.byte	0x5
	.uleb128 0x200
	.long	.LASF1073
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_atomic.h.165.9f37fe42b1b2fdcfa983e44606431b0d,comdat
.Ldebug_macro34:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xa5
	.long	.LASF1076
	.byte	0x5
	.uleb128 0x142
	.long	.LASF1077
	.byte	0x5
	.uleb128 0x143
	.long	.LASF1078
	.byte	0x5
	.uleb128 0x15d
	.long	.LASF1079
	.byte	0x5
	.uleb128 0x1eb
	.long	.LASF1080
	.byte	0x5
	.uleb128 0x1ff
	.long	.LASF1081
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_endian.h.42.8fda644f4ebaf78dfa2e838206373929,comdat
.Ldebug_macro35:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x2a
	.long	.LASF1083
	.byte	0x5
	.uleb128 0x56
	.long	.LASF1084
	.byte	0x5
	.uleb128 0x69
	.long	.LASF1085
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.endian.h.20.efabd1018df5d7b4052c27dc6bdd5ce5,comdat
.Ldebug_macro36:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x14
	.long	.LASF1087
	.byte	0x5
	.uleb128 0x1e
	.long	.LASF1088
	.byte	0x5
	.uleb128 0x1f
	.long	.LASF1089
	.byte	0x5
	.uleb128 0x20
	.long	.LASF1090
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.endianness.h.2.2c6a211f7909f3af5e9e9cfa3b6b63c8,comdat
.Ldebug_macro37:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x2
	.long	.LASF1091
	.byte	0x5
	.uleb128 0x9
	.long	.LASF1092
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.endian.h.40.9e5d395adda2f4eb53ae69b69b664084,comdat
.Ldebug_macro38:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x28
	.long	.LASF1093
	.byte	0x5
	.uleb128 0x2c
	.long	.LASF1094
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_endian.h.133.0575d66eefbed36044347d9b066b1320,comdat
.Ldebug_macro39:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x85
	.long	.LASF1095
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF1096
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_endian.h.223.da3b99d09d155cd08f4703065baef942,comdat
.Ldebug_macro40:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF1097
	.byte	0x5
	.uleb128 0xe1
	.long	.LASF1098
	.byte	0x5
	.uleb128 0xe3
	.long	.LASF1099
	.byte	0x5
	.uleb128 0xe7
	.long	.LASF1100
	.byte	0x5
	.uleb128 0xf2
	.long	.LASF1101
	.byte	0x5
	.uleb128 0x121
	.long	.LASF1102
	.byte	0x5
	.uleb128 0x153
	.long	.LASF1103
	.byte	0x6
	.uleb128 0x1a4
	.long	.LASF1104
	.byte	0x6
	.uleb128 0x1a5
	.long	.LASF1105
	.byte	0x6
	.uleb128 0x1a6
	.long	.LASF1106
	.byte	0x6
	.uleb128 0x1a7
	.long	.LASF1107
	.byte	0x5
	.uleb128 0x26c
	.long	.LASF1108
	.byte	0x5
	.uleb128 0x26d
	.long	.LASF1109
	.byte	0x5
	.uleb128 0x26e
	.long	.LASF1110
	.byte	0x5
	.uleb128 0x26f
	.long	.LASF1111
	.byte	0x5
	.uleb128 0x270
	.long	.LASF1112
	.byte	0x5
	.uleb128 0x271
	.long	.LASF1113
	.byte	0x5
	.uleb128 0x272
	.long	.LASF1114
	.byte	0x5
	.uleb128 0x273
	.long	.LASF1115
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_error.h.192.6c9fac1bbb999ca6eea4981d54b04fed,comdat
.Ldebug_macro41:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF1117
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF1118
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_thread.h.307.6fff17536ddf2b24ed05d29a75447ebb,comdat
.Ldebug_macro42:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x133
	.long	.LASF1122
	.byte	0x5
	.uleb128 0x139
	.long	.LASF1123
	.byte	0x5
	.uleb128 0x15d
	.long	.LASF1124
	.byte	0x5
	.uleb128 0x15e
	.long	.LASF1125
	.byte	0x5
	.uleb128 0x15f
	.long	.LASF1126
	.byte	0x5
	.uleb128 0x160
	.long	.LASF1127
	.byte	0x5
	.uleb128 0x161
	.long	.LASF1128
	.byte	0x5
	.uleb128 0x162
	.long	.LASF1129
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_mutex.h.67.e66704f370232cd2edaab255b22b9da4,comdat
.Ldebug_macro43:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x43
	.long	.LASF1130
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF1131
	.byte	0x5
	.uleb128 0x57
	.long	.LASF1132
	.byte	0x5
	.uleb128 0x61
	.long	.LASF1133
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF1134
	.byte	0x5
	.uleb128 0x75
	.long	.LASF1135
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF1136
	.byte	0x5
	.uleb128 0x89
	.long	.LASF1137
	.byte	0x5
	.uleb128 0x93
	.long	.LASF1138
	.byte	0x5
	.uleb128 0x9d
	.long	.LASF1139
	.byte	0x5
	.uleb128 0xa7
	.long	.LASF1140
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF1141
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF1142
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF1143
	.byte	0x5
	.uleb128 0xcf
	.long	.LASF1144
	.byte	0x5
	.uleb128 0xd9
	.long	.LASF1145
	.byte	0x5
	.uleb128 0xe3
	.long	.LASF1146
	.byte	0x5
	.uleb128 0xed
	.long	.LASF1147
	.byte	0x5
	.uleb128 0xf7
	.long	.LASF1148
	.byte	0x5
	.uleb128 0x101
	.long	.LASF1149
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF1150
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_iostream.h.276.2c6d345c5032b415f31089b4518a4c5d,comdat
.Ldebug_macro44:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x114
	.long	.LASF1152
	.byte	0x5
	.uleb128 0x115
	.long	.LASF1153
	.byte	0x5
	.uleb128 0x116
	.long	.LASF1154
	.byte	0x5
	.uleb128 0x117
	.long	.LASF1155
	.byte	0x5
	.uleb128 0x142
	.long	.LASF1156
	.byte	0x5
	.uleb128 0x143
	.long	.LASF1157
	.byte	0x5
	.uleb128 0x18c
	.long	.LASF1158
	.byte	0x5
	.uleb128 0x18d
	.long	.LASF1159
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_audio.h.151.c7ff7a87371efe1e6df3d39851070647,comdat
.Ldebug_macro45:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x97
	.long	.LASF1160
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF1161
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF1162
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF1163
	.byte	0x5
	.uleb128 0xcc
	.long	.LASF1164
	.byte	0x5
	.uleb128 0x10a
	.long	.LASF1165
	.byte	0x5
	.uleb128 0x118
	.long	.LASF1166
	.byte	0x5
	.uleb128 0x126
	.long	.LASF1167
	.byte	0x5
	.uleb128 0x134
	.long	.LASF1168
	.byte	0x5
	.uleb128 0x142
	.long	.LASF1169
	.byte	0x5
	.uleb128 0x150
	.long	.LASF1170
	.byte	0x5
	.uleb128 0x15e
	.long	.LASF1171
	.byte	0x5
	.uleb128 0x16c
	.long	.LASF1172
	.byte	0x5
	.uleb128 0x181
	.long	.LASF1173
	.byte	0x5
	.uleb128 0x18c
	.long	.LASF1174
	.byte	0x5
	.uleb128 0x1a9
	.long	.LASF1175
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_blendmode.h.54.5b0f032714477a80d1de1cea2d31becf,comdat
.Ldebug_macro46:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x36
	.long	.LASF1178
	.byte	0x5
	.uleb128 0x37
	.long	.LASF1179
	.byte	0x5
	.uleb128 0x38
	.long	.LASF1180
	.byte	0x5
	.uleb128 0x39
	.long	.LASF1181
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF1182
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF1183
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF1184
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF1185
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_pixels.h.100.7416bf081f103bf75d5b95cb59741cb9,comdat
.Ldebug_macro47:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x64
	.long	.LASF1188
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF1189
	.byte	0x5
	.uleb128 0x76
	.long	.LASF1190
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF1191
	.byte	0x5
	.uleb128 0xeb
	.long	.LASF1192
	.byte	0x5
	.uleb128 0x103
	.long	.LASF1193
	.byte	0x5
	.uleb128 0x114
	.long	.LASF1194
	.byte	0x5
	.uleb128 0x122
	.long	.LASF1195
	.byte	0x5
	.uleb128 0x131
	.long	.LASF1196
	.byte	0x5
	.uleb128 0x140
	.long	.LASF1197
	.byte	0x5
	.uleb128 0x154
	.long	.LASF1198
	.byte	0x5
	.uleb128 0x169
	.long	.LASF1199
	.byte	0x5
	.uleb128 0x17e
	.long	.LASF1200
	.byte	0x5
	.uleb128 0x192
	.long	.LASF1201
	.byte	0x5
	.uleb128 0x1a5
	.long	.LASF1202
	.byte	0x5
	.uleb128 0x1ba
	.long	.LASF1203
	.byte	0x5
	.uleb128 0x1cc
	.long	.LASF1204
	.byte	0x5
	.uleb128 0x1de
	.long	.LASF1205
	.byte	0x5
	.uleb128 0x1fa
	.long	.LASF1206
	.byte	0x5
	.uleb128 0x357
	.long	.LASF1207
	.byte	0x5
	.uleb128 0x365
	.long	.LASF1208
	.byte	0x5
	.uleb128 0x371
	.long	.LASF1209
	.byte	0x5
	.uleb128 0x37d
	.long	.LASF1210
	.byte	0x5
	.uleb128 0x389
	.long	.LASF1211
	.byte	0x5
	.uleb128 0x395
	.long	.LASF1212
	.byte	0x5
	.uleb128 0x3a1
	.long	.LASF1213
	.byte	0x5
	.uleb128 0x3b1
	.long	.LASF1214
	.byte	0x5
	.uleb128 0x3bd
	.long	.LASF1215
	.byte	0x5
	.uleb128 0x3ca
	.long	.LASF1216
	.byte	0x5
	.uleb128 0x3d6
	.long	.LASF1217
	.byte	0x5
	.uleb128 0x3e2
	.long	.LASF1218
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_surface.h.66.696367d4367064321acacd24850ba840,comdat
.Ldebug_macro48:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x42
	.long	.LASF1221
	.byte	0x5
	.uleb128 0x43
	.long	.LASF1222
	.byte	0x5
	.uleb128 0x44
	.long	.LASF1223
	.byte	0x5
	.uleb128 0x45
	.long	.LASF1224
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF1225
	.byte	0x5
	.uleb128 0xed
	.long	.LASF1226
	.byte	0x5
	.uleb128 0xee
	.long	.LASF1227
	.byte	0x5
	.uleb128 0xef
	.long	.LASF1228
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF1229
	.byte	0x5
	.uleb128 0xf1
	.long	.LASF1230
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_video.h.101.7c906d33202645b23183ebf7b40e8507,comdat
.Ldebug_macro49:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x65
	.long	.LASF1236
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF1237
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF1238
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF1239
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF1240
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF1241
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF1242
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF1243
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF1244
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF1245
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF1246
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF1247
	.byte	0x5
	.uleb128 0xc8
	.long	.LASF1248
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF1249
	.byte	0x5
	.uleb128 0xca
	.long	.LASF1250
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF1251
	.byte	0x5
	.uleb128 0xcc
	.long	.LASF1252
	.byte	0x5
	.uleb128 0xcd
	.long	.LASF1253
	.byte	0x5
	.uleb128 0xce
	.long	.LASF1254
	.byte	0x5
	.uleb128 0xcf
	.long	.LASF1255
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF1256
	.byte	0x5
	.uleb128 0xd1
	.long	.LASF1257
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF1258
	.byte	0x5
	.uleb128 0xd3
	.long	.LASF1259
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF1260
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF1261
	.byte	0x5
	.uleb128 0xe0
	.long	.LASF1262
	.byte	0x5
	.uleb128 0xec
	.long	.LASF1263
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF1264
	.byte	0x5
	.uleb128 0xfe
	.long	.LASF1265
	.byte	0x5
	.uleb128 0x108
	.long	.LASF1266
	.byte	0x5
	.uleb128 0x114
	.long	.LASF1267
	.byte	0x5
	.uleb128 0x11d
	.long	.LASF1268
	.byte	0x5
	.uleb128 0x126
	.long	.LASF1269
	.byte	0x5
	.uleb128 0x1d2
	.long	.LASF1270
	.byte	0x5
	.uleb128 0x1d3
	.long	.LASF1271
	.byte	0x5
	.uleb128 0x1d4
	.long	.LASF1272
	.byte	0x5
	.uleb128 0x1de
	.long	.LASF1273
	.byte	0x5
	.uleb128 0x1df
	.long	.LASF1274
	.byte	0x5
	.uleb128 0x1e0
	.long	.LASF1275
	.byte	0x5
	.uleb128 0x1e1
	.long	.LASF1276
	.byte	0x5
	.uleb128 0x1ec
	.long	.LASF1277
	.byte	0x5
	.uleb128 0x1ed
	.long	.LASF1278
	.byte	0x5
	.uleb128 0x1f7
	.long	.LASF1279
	.byte	0x5
	.uleb128 0x1f8
	.long	.LASF1280
	.byte	0x5
	.uleb128 0x276
	.long	.LASF1281
	.byte	0x5
	.uleb128 0x277
	.long	.LASF1282
	.byte	0x5
	.uleb128 0x51e
	.long	.LASF1283
	.byte	0x5
	.uleb128 0x51f
	.long	.LASF1284
	.byte	0x5
	.uleb128 0x520
	.long	.LASF1285
	.byte	0x5
	.uleb128 0x521
	.long	.LASF1286
	.byte	0x5
	.uleb128 0x522
	.long	.LASF1287
	.byte	0x5
	.uleb128 0x523
	.long	.LASF1288
	.byte	0x5
	.uleb128 0x524
	.long	.LASF1289
	.byte	0x5
	.uleb128 0x525
	.long	.LASF1290
	.byte	0x5
	.uleb128 0x526
	.long	.LASF1291
	.byte	0x5
	.uleb128 0x527
	.long	.LASF1292
	.byte	0x5
	.uleb128 0x528
	.long	.LASF1293
	.byte	0x5
	.uleb128 0x529
	.long	.LASF1294
	.byte	0x5
	.uleb128 0x52a
	.long	.LASF1295
	.byte	0x5
	.uleb128 0x52b
	.long	.LASF1296
	.byte	0x5
	.uleb128 0x52c
	.long	.LASF1297
	.byte	0x5
	.uleb128 0x52d
	.long	.LASF1298
	.byte	0x5
	.uleb128 0x52e
	.long	.LASF1299
	.byte	0x5
	.uleb128 0x52f
	.long	.LASF1300
	.byte	0x5
	.uleb128 0x530
	.long	.LASF1301
	.byte	0x5
	.uleb128 0x531
	.long	.LASF1302
	.byte	0x5
	.uleb128 0x532
	.long	.LASF1303
	.byte	0x5
	.uleb128 0x533
	.long	.LASF1304
	.byte	0x5
	.uleb128 0x534
	.long	.LASF1305
	.byte	0x5
	.uleb128 0x535
	.long	.LASF1306
	.byte	0x5
	.uleb128 0x536
	.long	.LASF1307
	.byte	0x5
	.uleb128 0x537
	.long	.LASF1308
	.byte	0x5
	.uleb128 0x538
	.long	.LASF1309
	.byte	0x5
	.uleb128 0x539
	.long	.LASF1310
	.byte	0x5
	.uleb128 0x53a
	.long	.LASF1311
	.byte	0x5
	.uleb128 0x53b
	.long	.LASF1312
	.byte	0x5
	.uleb128 0x53c
	.long	.LASF1313
	.byte	0x5
	.uleb128 0x53d
	.long	.LASF1314
	.byte	0x5
	.uleb128 0x53e
	.long	.LASF1315
	.byte	0x5
	.uleb128 0x53f
	.long	.LASF1316
	.byte	0x5
	.uleb128 0x5ee
	.long	.LASF1317
	.byte	0x5
	.uleb128 0x5ef
	.long	.LASF1318
	.byte	0x5
	.uleb128 0x5f0
	.long	.LASF1319
	.byte	0x5
	.uleb128 0x5f1
	.long	.LASF1320
	.byte	0x5
	.uleb128 0x5f2
	.long	.LASF1321
	.byte	0x5
	.uleb128 0x5f3
	.long	.LASF1322
	.byte	0x5
	.uleb128 0x5f4
	.long	.LASF1323
	.byte	0x5
	.uleb128 0x5f5
	.long	.LASF1324
	.byte	0x5
	.uleb128 0x5f6
	.long	.LASF1325
	.byte	0x5
	.uleb128 0x5f7
	.long	.LASF1326
	.byte	0x5
	.uleb128 0x5f8
	.long	.LASF1327
	.byte	0x5
	.uleb128 0x5f9
	.long	.LASF1328
	.byte	0x5
	.uleb128 0x5fa
	.long	.LASF1329
	.byte	0x5
	.uleb128 0x5fb
	.long	.LASF1330
	.byte	0x5
	.uleb128 0x5fc
	.long	.LASF1331
	.byte	0x5
	.uleb128 0x5fd
	.long	.LASF1332
	.byte	0x5
	.uleb128 0x5fe
	.long	.LASF1333
	.byte	0x5
	.uleb128 0x5ff
	.long	.LASF1334
	.byte	0x5
	.uleb128 0x600
	.long	.LASF1335
	.byte	0x5
	.uleb128 0x601
	.long	.LASF1336
	.byte	0x5
	.uleb128 0x602
	.long	.LASF1337
	.byte	0x5
	.uleb128 0x603
	.long	.LASF1338
	.byte	0x5
	.uleb128 0x604
	.long	.LASF1339
	.byte	0x5
	.uleb128 0x605
	.long	.LASF1340
	.byte	0x5
	.uleb128 0x606
	.long	.LASF1341
	.byte	0x5
	.uleb128 0x607
	.long	.LASF1342
	.byte	0x5
	.uleb128 0x608
	.long	.LASF1343
	.byte	0x5
	.uleb128 0x609
	.long	.LASF1344
	.byte	0x5
	.uleb128 0x60a
	.long	.LASF1345
	.byte	0x5
	.uleb128 0x60b
	.long	.LASF1346
	.byte	0x5
	.uleb128 0x60c
	.long	.LASF1347
	.byte	0x5
	.uleb128 0x60d
	.long	.LASF1348
	.byte	0x5
	.uleb128 0x60e
	.long	.LASF1349
	.byte	0x5
	.uleb128 0x60f
	.long	.LASF1350
	.byte	0x5
	.uleb128 0x610
	.long	.LASF1351
	.byte	0x5
	.uleb128 0x909
	.long	.LASF1352
	.byte	0x5
	.uleb128 0x90a
	.long	.LASF1353
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_dialog.h.326.9af9413a8c2971abe599f9b732f138e4,comdat
.Ldebug_macro50:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x146
	.long	.LASF1354
	.byte	0x5
	.uleb128 0x147
	.long	.LASF1355
	.byte	0x5
	.uleb128 0x148
	.long	.LASF1356
	.byte	0x5
	.uleb128 0x149
	.long	.LASF1357
	.byte	0x5
	.uleb128 0x14a
	.long	.LASF1358
	.byte	0x5
	.uleb128 0x14b
	.long	.LASF1359
	.byte	0x5
	.uleb128 0x14c
	.long	.LASF1360
	.byte	0x5
	.uleb128 0x14d
	.long	.LASF1361
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_joystick.h.150.b46f8c1c9728e0053fde37e8009e51e1,comdat
.Ldebug_macro51:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x96
	.long	.LASF1369
	.byte	0x5
	.uleb128 0xa1
	.long	.LASF1370
	.byte	0x5
	.uleb128 0x28f
	.long	.LASF1371
	.byte	0x5
	.uleb128 0x290
	.long	.LASF1372
	.byte	0x5
	.uleb128 0x291
	.long	.LASF1373
	.byte	0x5
	.uleb128 0x292
	.long	.LASF1374
	.byte	0x5
	.uleb128 0x293
	.long	.LASF1375
	.byte	0x5
	.uleb128 0x415
	.long	.LASF1376
	.byte	0x5
	.uleb128 0x416
	.long	.LASF1377
	.byte	0x5
	.uleb128 0x417
	.long	.LASF1378
	.byte	0x5
	.uleb128 0x418
	.long	.LASF1379
	.byte	0x5
	.uleb128 0x419
	.long	.LASF1380
	.byte	0x5
	.uleb128 0x41a
	.long	.LASF1381
	.byte	0x5
	.uleb128 0x41b
	.long	.LASF1382
	.byte	0x5
	.uleb128 0x41c
	.long	.LASF1383
	.byte	0x5
	.uleb128 0x41d
	.long	.LASF1384
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_gamepad.h.764.a11ff3b0d9bc27a11e178940eb15e759,comdat
.Ldebug_macro52:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x2fc
	.long	.LASF1385
	.byte	0x5
	.uleb128 0x2fd
	.long	.LASF1386
	.byte	0x5
	.uleb128 0x2fe
	.long	.LASF1387
	.byte	0x5
	.uleb128 0x2ff
	.long	.LASF1388
	.byte	0x5
	.uleb128 0x300
	.long	.LASF1389
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_keycode.h.57.b9445b61157f5e379b870a7029916e56,comdat
.Ldebug_macro53:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x39
	.long	.LASF1393
	.byte	0x5
	.uleb128 0x3a
	.long	.LASF1394
	.byte	0x5
	.uleb128 0x3b
	.long	.LASF1395
	.byte	0x5
	.uleb128 0x3c
	.long	.LASF1396
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF1397
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF1398
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF1399
	.byte	0x5
	.uleb128 0x40
	.long	.LASF1400
	.byte	0x5
	.uleb128 0x41
	.long	.LASF1401
	.byte	0x5
	.uleb128 0x42
	.long	.LASF1402
	.byte	0x5
	.uleb128 0x43
	.long	.LASF1403
	.byte	0x5
	.uleb128 0x44
	.long	.LASF1404
	.byte	0x5
	.uleb128 0x45
	.long	.LASF1405
	.byte	0x5
	.uleb128 0x46
	.long	.LASF1406
	.byte	0x5
	.uleb128 0x47
	.long	.LASF1407
	.byte	0x5
	.uleb128 0x48
	.long	.LASF1408
	.byte	0x5
	.uleb128 0x49
	.long	.LASF1409
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF1410
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF1411
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF1412
	.byte	0x5
	.uleb128 0x4d
	.long	.LASF1413
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF1414
	.byte	0x5
	.uleb128 0x4f
	.long	.LASF1415
	.byte	0x5
	.uleb128 0x50
	.long	.LASF1416
	.byte	0x5
	.uleb128 0x51
	.long	.LASF1417
	.byte	0x5
	.uleb128 0x52
	.long	.LASF1418
	.byte	0x5
	.uleb128 0x53
	.long	.LASF1419
	.byte	0x5
	.uleb128 0x54
	.long	.LASF1420
	.byte	0x5
	.uleb128 0x55
	.long	.LASF1421
	.byte	0x5
	.uleb128 0x56
	.long	.LASF1422
	.byte	0x5
	.uleb128 0x57
	.long	.LASF1423
	.byte	0x5
	.uleb128 0x58
	.long	.LASF1424
	.byte	0x5
	.uleb128 0x59
	.long	.LASF1425
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF1426
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF1427
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF1428
	.byte	0x5
	.uleb128 0x5d
	.long	.LASF1429
	.byte	0x5
	.uleb128 0x5e
	.long	.LASF1430
	.byte	0x5
	.uleb128 0x5f
	.long	.LASF1431
	.byte	0x5
	.uleb128 0x60
	.long	.LASF1432
	.byte	0x5
	.uleb128 0x61
	.long	.LASF1433
	.byte	0x5
	.uleb128 0x62
	.long	.LASF1434
	.byte	0x5
	.uleb128 0x63
	.long	.LASF1435
	.byte	0x5
	.uleb128 0x64
	.long	.LASF1436
	.byte	0x5
	.uleb128 0x65
	.long	.LASF1437
	.byte	0x5
	.uleb128 0x66
	.long	.LASF1438
	.byte	0x5
	.uleb128 0x67
	.long	.LASF1439
	.byte	0x5
	.uleb128 0x68
	.long	.LASF1440
	.byte	0x5
	.uleb128 0x69
	.long	.LASF1441
	.byte	0x5
	.uleb128 0x6a
	.long	.LASF1442
	.byte	0x5
	.uleb128 0x6b
	.long	.LASF1443
	.byte	0x5
	.uleb128 0x6c
	.long	.LASF1444
	.byte	0x5
	.uleb128 0x6d
	.long	.LASF1445
	.byte	0x5
	.uleb128 0x6e
	.long	.LASF1446
	.byte	0x5
	.uleb128 0x6f
	.long	.LASF1447
	.byte	0x5
	.uleb128 0x70
	.long	.LASF1448
	.byte	0x5
	.uleb128 0x71
	.long	.LASF1449
	.byte	0x5
	.uleb128 0x72
	.long	.LASF1450
	.byte	0x5
	.uleb128 0x73
	.long	.LASF1451
	.byte	0x5
	.uleb128 0x74
	.long	.LASF1452
	.byte	0x5
	.uleb128 0x75
	.long	.LASF1453
	.byte	0x5
	.uleb128 0x76
	.long	.LASF1454
	.byte	0x5
	.uleb128 0x77
	.long	.LASF1455
	.byte	0x5
	.uleb128 0x78
	.long	.LASF1456
	.byte	0x5
	.uleb128 0x79
	.long	.LASF1457
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF1458
	.byte	0x5
	.uleb128 0x7b
	.long	.LASF1459
	.byte	0x5
	.uleb128 0x7c
	.long	.LASF1460
	.byte	0x5
	.uleb128 0x7d
	.long	.LASF1461
	.byte	0x5
	.uleb128 0x7e
	.long	.LASF1462
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF1463
	.byte	0x5
	.uleb128 0x80
	.long	.LASF1464
	.byte	0x5
	.uleb128 0x81
	.long	.LASF1465
	.byte	0x5
	.uleb128 0x82
	.long	.LASF1466
	.byte	0x5
	.uleb128 0x83
	.long	.LASF1467
	.byte	0x5
	.uleb128 0x84
	.long	.LASF1468
	.byte	0x5
	.uleb128 0x85
	.long	.LASF1469
	.byte	0x5
	.uleb128 0x86
	.long	.LASF1470
	.byte	0x5
	.uleb128 0x87
	.long	.LASF1471
	.byte	0x5
	.uleb128 0x88
	.long	.LASF1472
	.byte	0x5
	.uleb128 0x89
	.long	.LASF1473
	.byte	0x5
	.uleb128 0x8a
	.long	.LASF1474
	.byte	0x5
	.uleb128 0x8b
	.long	.LASF1475
	.byte	0x5
	.uleb128 0x8c
	.long	.LASF1476
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF1477
	.byte	0x5
	.uleb128 0x8e
	.long	.LASF1478
	.byte	0x5
	.uleb128 0x8f
	.long	.LASF1479
	.byte	0x5
	.uleb128 0x90
	.long	.LASF1480
	.byte	0x5
	.uleb128 0x91
	.long	.LASF1481
	.byte	0x5
	.uleb128 0x92
	.long	.LASF1482
	.byte	0x5
	.uleb128 0x93
	.long	.LASF1483
	.byte	0x5
	.uleb128 0x94
	.long	.LASF1484
	.byte	0x5
	.uleb128 0x95
	.long	.LASF1485
	.byte	0x5
	.uleb128 0x96
	.long	.LASF1486
	.byte	0x5
	.uleb128 0x97
	.long	.LASF1487
	.byte	0x5
	.uleb128 0x98
	.long	.LASF1488
	.byte	0x5
	.uleb128 0x99
	.long	.LASF1489
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF1490
	.byte	0x5
	.uleb128 0x9b
	.long	.LASF1491
	.byte	0x5
	.uleb128 0x9c
	.long	.LASF1492
	.byte	0x5
	.uleb128 0x9d
	.long	.LASF1493
	.byte	0x5
	.uleb128 0x9e
	.long	.LASF1494
	.byte	0x5
	.uleb128 0x9f
	.long	.LASF1495
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF1496
	.byte	0x5
	.uleb128 0xa1
	.long	.LASF1497
	.byte	0x5
	.uleb128 0xa2
	.long	.LASF1498
	.byte	0x5
	.uleb128 0xa3
	.long	.LASF1499
	.byte	0x5
	.uleb128 0xa4
	.long	.LASF1500
	.byte	0x5
	.uleb128 0xa5
	.long	.LASF1501
	.byte	0x5
	.uleb128 0xa6
	.long	.LASF1502
	.byte	0x5
	.uleb128 0xa7
	.long	.LASF1503
	.byte	0x5
	.uleb128 0xa8
	.long	.LASF1504
	.byte	0x5
	.uleb128 0xa9
	.long	.LASF1505
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF1506
	.byte	0x5
	.uleb128 0xab
	.long	.LASF1507
	.byte	0x5
	.uleb128 0xac
	.long	.LASF1508
	.byte	0x5
	.uleb128 0xad
	.long	.LASF1509
	.byte	0x5
	.uleb128 0xae
	.long	.LASF1510
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF1511
	.byte	0x5
	.uleb128 0xb0
	.long	.LASF1512
	.byte	0x5
	.uleb128 0xb1
	.long	.LASF1513
	.byte	0x5
	.uleb128 0xb2
	.long	.LASF1514
	.byte	0x5
	.uleb128 0xb3
	.long	.LASF1515
	.byte	0x5
	.uleb128 0xb4
	.long	.LASF1516
	.byte	0x5
	.uleb128 0xb5
	.long	.LASF1517
	.byte	0x5
	.uleb128 0xb6
	.long	.LASF1518
	.byte	0x5
	.uleb128 0xb7
	.long	.LASF1519
	.byte	0x5
	.uleb128 0xb8
	.long	.LASF1520
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF1521
	.byte	0x5
	.uleb128 0xba
	.long	.LASF1522
	.byte	0x5
	.uleb128 0xbb
	.long	.LASF1523
	.byte	0x5
	.uleb128 0xbc
	.long	.LASF1524
	.byte	0x5
	.uleb128 0xbd
	.long	.LASF1525
	.byte	0x5
	.uleb128 0xbe
	.long	.LASF1526
	.byte	0x5
	.uleb128 0xbf
	.long	.LASF1527
	.byte	0x5
	.uleb128 0xc0
	.long	.LASF1528
	.byte	0x5
	.uleb128 0xc1
	.long	.LASF1529
	.byte	0x5
	.uleb128 0xc2
	.long	.LASF1530
	.byte	0x5
	.uleb128 0xc3
	.long	.LASF1531
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF1532
	.byte	0x5
	.uleb128 0xc5
	.long	.LASF1533
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF1534
	.byte	0x5
	.uleb128 0xc7
	.long	.LASF1535
	.byte	0x5
	.uleb128 0xc8
	.long	.LASF1536
	.byte	0x5
	.uleb128 0xc9
	.long	.LASF1537
	.byte	0x5
	.uleb128 0xca
	.long	.LASF1538
	.byte	0x5
	.uleb128 0xcb
	.long	.LASF1539
	.byte	0x5
	.uleb128 0xcc
	.long	.LASF1540
	.byte	0x5
	.uleb128 0xcd
	.long	.LASF1541
	.byte	0x5
	.uleb128 0xce
	.long	.LASF1542
	.byte	0x5
	.uleb128 0xcf
	.long	.LASF1543
	.byte	0x5
	.uleb128 0xd0
	.long	.LASF1544
	.byte	0x5
	.uleb128 0xd1
	.long	.LASF1545
	.byte	0x5
	.uleb128 0xd2
	.long	.LASF1546
	.byte	0x5
	.uleb128 0xd3
	.long	.LASF1547
	.byte	0x5
	.uleb128 0xd4
	.long	.LASF1548
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF1549
	.byte	0x5
	.uleb128 0xd6
	.long	.LASF1550
	.byte	0x5
	.uleb128 0xd7
	.long	.LASF1551
	.byte	0x5
	.uleb128 0xd8
	.long	.LASF1552
	.byte	0x5
	.uleb128 0xd9
	.long	.LASF1553
	.byte	0x5
	.uleb128 0xda
	.long	.LASF1554
	.byte	0x5
	.uleb128 0xdb
	.long	.LASF1555
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF1556
	.byte	0x5
	.uleb128 0xdd
	.long	.LASF1557
	.byte	0x5
	.uleb128 0xde
	.long	.LASF1558
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF1559
	.byte	0x5
	.uleb128 0xe0
	.long	.LASF1560
	.byte	0x5
	.uleb128 0xe1
	.long	.LASF1561
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF1562
	.byte	0x5
	.uleb128 0xe3
	.long	.LASF1563
	.byte	0x5
	.uleb128 0xe4
	.long	.LASF1564
	.byte	0x5
	.uleb128 0xe5
	.long	.LASF1565
	.byte	0x5
	.uleb128 0xe6
	.long	.LASF1566
	.byte	0x5
	.uleb128 0xe7
	.long	.LASF1567
	.byte	0x5
	.uleb128 0xe8
	.long	.LASF1568
	.byte	0x5
	.uleb128 0xe9
	.long	.LASF1569
	.byte	0x5
	.uleb128 0xea
	.long	.LASF1570
	.byte	0x5
	.uleb128 0xeb
	.long	.LASF1571
	.byte	0x5
	.uleb128 0xec
	.long	.LASF1572
	.byte	0x5
	.uleb128 0xed
	.long	.LASF1573
	.byte	0x5
	.uleb128 0xee
	.long	.LASF1574
	.byte	0x5
	.uleb128 0xef
	.long	.LASF1575
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF1576
	.byte	0x5
	.uleb128 0xf1
	.long	.LASF1577
	.byte	0x5
	.uleb128 0xf2
	.long	.LASF1578
	.byte	0x5
	.uleb128 0xf3
	.long	.LASF1579
	.byte	0x5
	.uleb128 0xf4
	.long	.LASF1580
	.byte	0x5
	.uleb128 0xf5
	.long	.LASF1581
	.byte	0x5
	.uleb128 0xf6
	.long	.LASF1582
	.byte	0x5
	.uleb128 0xf7
	.long	.LASF1583
	.byte	0x5
	.uleb128 0xf8
	.long	.LASF1584
	.byte	0x5
	.uleb128 0xf9
	.long	.LASF1585
	.byte	0x5
	.uleb128 0xfa
	.long	.LASF1586
	.byte	0x5
	.uleb128 0xfb
	.long	.LASF1587
	.byte	0x5
	.uleb128 0xfc
	.long	.LASF1588
	.byte	0x5
	.uleb128 0xfd
	.long	.LASF1589
	.byte	0x5
	.uleb128 0xfe
	.long	.LASF1590
	.byte	0x5
	.uleb128 0xff
	.long	.LASF1591
	.byte	0x5
	.uleb128 0x100
	.long	.LASF1592
	.byte	0x5
	.uleb128 0x101
	.long	.LASF1593
	.byte	0x5
	.uleb128 0x102
	.long	.LASF1594
	.byte	0x5
	.uleb128 0x103
	.long	.LASF1595
	.byte	0x5
	.uleb128 0x104
	.long	.LASF1596
	.byte	0x5
	.uleb128 0x105
	.long	.LASF1597
	.byte	0x5
	.uleb128 0x106
	.long	.LASF1598
	.byte	0x5
	.uleb128 0x107
	.long	.LASF1599
	.byte	0x5
	.uleb128 0x108
	.long	.LASF1600
	.byte	0x5
	.uleb128 0x109
	.long	.LASF1601
	.byte	0x5
	.uleb128 0x10a
	.long	.LASF1602
	.byte	0x5
	.uleb128 0x10b
	.long	.LASF1603
	.byte	0x5
	.uleb128 0x10c
	.long	.LASF1604
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF1605
	.byte	0x5
	.uleb128 0x10e
	.long	.LASF1606
	.byte	0x5
	.uleb128 0x10f
	.long	.LASF1607
	.byte	0x5
	.uleb128 0x110
	.long	.LASF1608
	.byte	0x5
	.uleb128 0x111
	.long	.LASF1609
	.byte	0x5
	.uleb128 0x112
	.long	.LASF1610
	.byte	0x5
	.uleb128 0x113
	.long	.LASF1611
	.byte	0x5
	.uleb128 0x114
	.long	.LASF1612
	.byte	0x5
	.uleb128 0x115
	.long	.LASF1613
	.byte	0x5
	.uleb128 0x116
	.long	.LASF1614
	.byte	0x5
	.uleb128 0x117
	.long	.LASF1615
	.byte	0x5
	.uleb128 0x118
	.long	.LASF1616
	.byte	0x5
	.uleb128 0x119
	.long	.LASF1617
	.byte	0x5
	.uleb128 0x11a
	.long	.LASF1618
	.byte	0x5
	.uleb128 0x11b
	.long	.LASF1619
	.byte	0x5
	.uleb128 0x11c
	.long	.LASF1620
	.byte	0x5
	.uleb128 0x11d
	.long	.LASF1621
	.byte	0x5
	.uleb128 0x11e
	.long	.LASF1622
	.byte	0x5
	.uleb128 0x11f
	.long	.LASF1623
	.byte	0x5
	.uleb128 0x120
	.long	.LASF1624
	.byte	0x5
	.uleb128 0x121
	.long	.LASF1625
	.byte	0x5
	.uleb128 0x122
	.long	.LASF1626
	.byte	0x5
	.uleb128 0x123
	.long	.LASF1627
	.byte	0x5
	.uleb128 0x124
	.long	.LASF1628
	.byte	0x5
	.uleb128 0x125
	.long	.LASF1629
	.byte	0x5
	.uleb128 0x126
	.long	.LASF1630
	.byte	0x5
	.uleb128 0x127
	.long	.LASF1631
	.byte	0x5
	.uleb128 0x128
	.long	.LASF1632
	.byte	0x5
	.uleb128 0x129
	.long	.LASF1633
	.byte	0x5
	.uleb128 0x12a
	.long	.LASF1634
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF1635
	.byte	0x5
	.uleb128 0x12c
	.long	.LASF1636
	.byte	0x5
	.uleb128 0x12d
	.long	.LASF1637
	.byte	0x5
	.uleb128 0x12e
	.long	.LASF1638
	.byte	0x5
	.uleb128 0x12f
	.long	.LASF1639
	.byte	0x5
	.uleb128 0x130
	.long	.LASF1640
	.byte	0x5
	.uleb128 0x131
	.long	.LASF1641
	.byte	0x5
	.uleb128 0x132
	.long	.LASF1642
	.byte	0x5
	.uleb128 0x133
	.long	.LASF1643
	.byte	0x5
	.uleb128 0x134
	.long	.LASF1644
	.byte	0x5
	.uleb128 0x135
	.long	.LASF1645
	.byte	0x5
	.uleb128 0x136
	.long	.LASF1646
	.byte	0x5
	.uleb128 0x137
	.long	.LASF1647
	.byte	0x5
	.uleb128 0x138
	.long	.LASF1648
	.byte	0x5
	.uleb128 0x139
	.long	.LASF1649
	.byte	0x5
	.uleb128 0x13a
	.long	.LASF1650
	.byte	0x5
	.uleb128 0x13b
	.long	.LASF1651
	.byte	0x5
	.uleb128 0x144
	.long	.LASF1652
	.byte	0x5
	.uleb128 0x145
	.long	.LASF1653
	.byte	0x5
	.uleb128 0x146
	.long	.LASF1654
	.byte	0x5
	.uleb128 0x147
	.long	.LASF1655
	.byte	0x5
	.uleb128 0x148
	.long	.LASF1656
	.byte	0x5
	.uleb128 0x149
	.long	.LASF1657
	.byte	0x5
	.uleb128 0x14a
	.long	.LASF1658
	.byte	0x5
	.uleb128 0x14b
	.long	.LASF1659
	.byte	0x5
	.uleb128 0x14c
	.long	.LASF1660
	.byte	0x5
	.uleb128 0x14d
	.long	.LASF1661
	.byte	0x5
	.uleb128 0x14e
	.long	.LASF1662
	.byte	0x5
	.uleb128 0x14f
	.long	.LASF1663
	.byte	0x5
	.uleb128 0x150
	.long	.LASF1664
	.byte	0x5
	.uleb128 0x151
	.long	.LASF1665
	.byte	0x5
	.uleb128 0x152
	.long	.LASF1666
	.byte	0x5
	.uleb128 0x153
	.long	.LASF1667
	.byte	0x5
	.uleb128 0x154
	.long	.LASF1668
	.byte	0x5
	.uleb128 0x155
	.long	.LASF1669
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_keyboard.h.476.ef9bb58057603568cae9eca0239cbfec,comdat
.Ldebug_macro54:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1dc
	.long	.LASF1670
	.byte	0x5
	.uleb128 0x1dd
	.long	.LASF1671
	.byte	0x5
	.uleb128 0x1de
	.long	.LASF1672
	.byte	0x5
	.uleb128 0x1df
	.long	.LASF1673
	.byte	0x5
	.uleb128 0x1e0
	.long	.LASF1674
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_mouse.h.150.4817134223c480a60103e3d69fa3dec4,comdat
.Ldebug_macro55:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x96
	.long	.LASF1676
	.byte	0x5
	.uleb128 0x97
	.long	.LASF1677
	.byte	0x5
	.uleb128 0x98
	.long	.LASF1678
	.byte	0x5
	.uleb128 0x99
	.long	.LASF1679
	.byte	0x5
	.uleb128 0x9a
	.long	.LASF1680
	.byte	0x5
	.uleb128 0x9c
	.long	.LASF1681
	.byte	0x5
	.uleb128 0x9d
	.long	.LASF1682
	.byte	0x5
	.uleb128 0x9e
	.long	.LASF1683
	.byte	0x5
	.uleb128 0x9f
	.long	.LASF1684
	.byte	0x5
	.uleb128 0xa0
	.long	.LASF1685
	.byte	0x5
	.uleb128 0xa1
	.long	.LASF1686
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_touch.h.115.b315c52f9d25cb280298fc5598c09a13,comdat
.Ldebug_macro56:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x73
	.long	.LASF1689
	.byte	0x5
	.uleb128 0x7a
	.long	.LASF1690
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_pen.h.69.cd58dc9f2d36fe2ccc47bfeb5958a561,comdat
.Ldebug_macro57:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x45
	.long	.LASF1691
	.byte	0x5
	.uleb128 0x4c
	.long	.LASF1692
	.byte	0x5
	.uleb128 0x56
	.long	.LASF1693
	.byte	0x5
	.uleb128 0x57
	.long	.LASF1694
	.byte	0x5
	.uleb128 0x58
	.long	.LASF1695
	.byte	0x5
	.uleb128 0x59
	.long	.LASF1696
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF1697
	.byte	0x5
	.uleb128 0x5b
	.long	.LASF1698
	.byte	0x5
	.uleb128 0x5c
	.long	.LASF1699
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_gpu.h.822.6750803341800ba27d3497396e495148,comdat
.Ldebug_macro58:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x336
	.long	.LASF1703
	.byte	0x5
	.uleb128 0x337
	.long	.LASF1704
	.byte	0x5
	.uleb128 0x338
	.long	.LASF1705
	.byte	0x5
	.uleb128 0x339
	.long	.LASF1706
	.byte	0x5
	.uleb128 0x33a
	.long	.LASF1707
	.byte	0x5
	.uleb128 0x33b
	.long	.LASF1708
	.byte	0x5
	.uleb128 0x33c
	.long	.LASF1709
	.byte	0x5
	.uleb128 0x386
	.long	.LASF1710
	.byte	0x5
	.uleb128 0x387
	.long	.LASF1711
	.byte	0x5
	.uleb128 0x388
	.long	.LASF1712
	.byte	0x5
	.uleb128 0x389
	.long	.LASF1713
	.byte	0x5
	.uleb128 0x38a
	.long	.LASF1714
	.byte	0x5
	.uleb128 0x38b
	.long	.LASF1715
	.byte	0x5
	.uleb128 0x3b5
	.long	.LASF1716
	.byte	0x5
	.uleb128 0x3b6
	.long	.LASF1717
	.byte	0x5
	.uleb128 0x3b7
	.long	.LASF1718
	.byte	0x5
	.uleb128 0x3b8
	.long	.LASF1719
	.byte	0x5
	.uleb128 0x3b9
	.long	.LASF1720
	.byte	0x5
	.uleb128 0x3ba
	.long	.LASF1721
	.byte	0x5
	.uleb128 0x3bb
	.long	.LASF1722
	.byte	0x5
	.uleb128 0x499
	.long	.LASF1723
	.byte	0x5
	.uleb128 0x49a
	.long	.LASF1724
	.byte	0x5
	.uleb128 0x49b
	.long	.LASF1725
	.byte	0x5
	.uleb128 0x49c
	.long	.LASF1726
	.byte	0x5
	.uleb128 0x87b
	.long	.LASF1727
	.byte	0x5
	.uleb128 0x87c
	.long	.LASF1728
	.byte	0x5
	.uleb128 0x87d
	.long	.LASF1729
	.byte	0x5
	.uleb128 0x87e
	.long	.LASF1730
	.byte	0x5
	.uleb128 0x87f
	.long	.LASF1731
	.byte	0x5
	.uleb128 0x880
	.long	.LASF1732
	.byte	0x5
	.uleb128 0x881
	.long	.LASF1733
	.byte	0x5
	.uleb128 0x882
	.long	.LASF1734
	.byte	0x5
	.uleb128 0x883
	.long	.LASF1735
	.byte	0x5
	.uleb128 0x884
	.long	.LASF1736
	.byte	0x5
	.uleb128 0x8f7
	.long	.LASF1737
	.byte	0x5
	.uleb128 0x912
	.long	.LASF1738
	.byte	0x5
	.uleb128 0x92d
	.long	.LASF1739
	.byte	0x5
	.uleb128 0x97c
	.long	.LASF1740
	.byte	0x5
	.uleb128 0x9b9
	.long	.LASF1741
	.byte	0x5
	.uleb128 0x9ba
	.long	.LASF1742
	.byte	0x5
	.uleb128 0x9bb
	.long	.LASF1743
	.byte	0x5
	.uleb128 0x9bc
	.long	.LASF1744
	.byte	0x5
	.uleb128 0x9bd
	.long	.LASF1745
	.byte	0x5
	.uleb128 0x9be
	.long	.LASF1746
	.byte	0x5
	.uleb128 0x9bf
	.long	.LASF1747
	.byte	0x5
	.uleb128 0x9f1
	.long	.LASF1748
	.byte	0x5
	.uleb128 0xa12
	.long	.LASF1749
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_haptic.h.174.ca85e637f4b160e4a01702b333943aed,comdat
.Ldebug_macro59:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xae
	.long	.LASF1751
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF1752
	.byte	0x5
	.uleb128 0xc4
	.long	.LASF1753
	.byte	0x5
	.uleb128 0xcf
	.long	.LASF1754
	.byte	0x5
	.uleb128 0xda
	.long	.LASF1755
	.byte	0x5
	.uleb128 0xe5
	.long	.LASF1756
	.byte	0x5
	.uleb128 0xf0
	.long	.LASF1757
	.byte	0x5
	.uleb128 0xfc
	.long	.LASF1758
	.byte	0x5
	.uleb128 0x108
	.long	.LASF1759
	.byte	0x5
	.uleb128 0x114
	.long	.LASF1760
	.byte	0x5
	.uleb128 0x120
	.long	.LASF1761
	.byte	0x5
	.uleb128 0x12b
	.long	.LASF1762
	.byte	0x5
	.uleb128 0x132
	.long	.LASF1763
	.byte	0x5
	.uleb128 0x139
	.long	.LASF1764
	.byte	0x5
	.uleb128 0x140
	.long	.LASF1765
	.byte	0x5
	.uleb128 0x149
	.long	.LASF1766
	.byte	0x5
	.uleb128 0x158
	.long	.LASF1767
	.byte	0x5
	.uleb128 0x163
	.long	.LASF1768
	.byte	0x5
	.uleb128 0x16e
	.long	.LASF1769
	.byte	0x5
	.uleb128 0x17a
	.long	.LASF1770
	.byte	0x5
	.uleb128 0x189
	.long	.LASF1771
	.byte	0x5
	.uleb128 0x192
	.long	.LASF1772
	.byte	0x5
	.uleb128 0x19b
	.long	.LASF1773
	.byte	0x5
	.uleb128 0x1a7
	.long	.LASF1774
	.byte	0x5
	.uleb128 0x1b8
	.long	.LASF1775
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_hints.h.66.b4e289fc35b0dd3b19997aaed3546a06,comdat
.Ldebug_macro60:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x42
	.long	.LASF1778
	.byte	0x5
	.uleb128 0x56
	.long	.LASF1779
	.byte	0x5
	.uleb128 0x65
	.long	.LASF1780
	.byte	0x5
	.uleb128 0x76
	.long	.LASF1781
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF1782
	.byte	0x5
	.uleb128 0x9d
	.long	.LASF1783
	.byte	0x5
	.uleb128 0xaf
	.long	.LASF1784
	.byte	0x5
	.uleb128 0xc6
	.long	.LASF1785
	.byte	0x5
	.uleb128 0xd5
	.long	.LASF1786
	.byte	0x5
	.uleb128 0xe9
	.long	.LASF1787
	.byte	0x5
	.uleb128 0xfb
	.long	.LASF1788
	.byte	0x5
	.uleb128 0x10d
	.long	.LASF1789
	.byte	0x5
	.uleb128 0x11f
	.long	.LASF1790
	.byte	0x5
	.uleb128 0x12c
	.long	.LASF1791
	.byte	0x5
	.uleb128 0x143
	.long	.LASF1792
	.byte	0x5
	.uleb128 0x159
	.long	.LASF1793
	.byte	0x5
	.uleb128 0x174
	.long	.LASF1794
	.byte	0x5
	.uleb128 0x18e
	.long	.LASF1795
	.byte	0x5
	.uleb128 0x199
	.long	.LASF1796
	.byte	0x5
	.uleb128 0x1a4
	.long	.LASF1797
	.byte	0x5
	.uleb128 0x1b1
	.long	.LASF1798
	.byte	0x5
	.uleb128 0x1bf
	.long	.LASF1799
	.byte	0x5
	.uleb128 0x1cc
	.long	.LASF1800
	.byte	0x5
	.uleb128 0x1e7
	.long	.LASF1801
	.byte	0x5
	.uleb128 0x1f4
	.long	.LASF1802
	.byte	0x5
	.uleb128 0x20b
	.long	.LASF1803
	.byte	0x5
	.uleb128 0x21a
	.long	.LASF1804
	.byte	0x5
	.uleb128 0x229
	.long	.LASF1805
	.byte	0x5
	.uleb128 0x240
	.long	.LASF1806
	.byte	0x5
	.uleb128 0x250
	.long	.LASF1807
	.byte	0x5
	.uleb128 0x271
	.long	.LASF1808
	.byte	0x5
	.uleb128 0x27f
	.long	.LASF1809
	.byte	0x5
	.uleb128 0x29c
	.long	.LASF1810
	.byte	0x5
	.uleb128 0x2ae
	.long	.LASF1811
	.byte	0x5
	.uleb128 0x2c3
	.long	.LASF1812
	.byte	0x5
	.uleb128 0x2d0
	.long	.LASF1813
	.byte	0x5
	.uleb128 0x2e5
	.long	.LASF1814
	.byte	0x5
	.uleb128 0x2f6
	.long	.LASF1815
	.byte	0x5
	.uleb128 0x307
	.long	.LASF1816
	.byte	0x5
	.uleb128 0x31f
	.long	.LASF1817
	.byte	0x5
	.uleb128 0x333
	.long	.LASF1818
	.byte	0x5
	.uleb128 0x348
	.long	.LASF1819
	.byte	0x5
	.uleb128 0x357
	.long	.LASF1820
	.byte	0x5
	.uleb128 0x367
	.long	.LASF1821
	.byte	0x5
	.uleb128 0x37f
	.long	.LASF1822
	.byte	0x5
	.uleb128 0x391
	.long	.LASF1823
	.byte	0x5
	.uleb128 0x3a3
	.long	.LASF1824
	.byte	0x5
	.uleb128 0x3ba
	.long	.LASF1825
	.byte	0x5
	.uleb128 0x3c6
	.long	.LASF1826
	.byte	0x5
	.uleb128 0x3d2
	.long	.LASF1827
	.byte	0x5
	.uleb128 0x3e1
	.long	.LASF1828
	.byte	0x5
	.uleb128 0x3f1
	.long	.LASF1829
	.byte	0x5
	.uleb128 0x3fc
	.long	.LASF1830
	.byte	0x5
	.uleb128 0x40e
	.long	.LASF1831
	.byte	0x5
	.uleb128 0x420
	.long	.LASF1832
	.byte	0x5
	.uleb128 0x42e
	.long	.LASF1833
	.byte	0x5
	.uleb128 0x43c
	.long	.LASF1834
	.byte	0x5
	.uleb128 0x44f
	.long	.LASF1835
	.byte	0x5
	.uleb128 0x460
	.long	.LASF1836
	.byte	0x5
	.uleb128 0x477
	.long	.LASF1837
	.byte	0x5
	.uleb128 0x48a
	.long	.LASF1838
	.byte	0x5
	.uleb128 0x49b
	.long	.LASF1839
	.byte	0x5
	.uleb128 0x4ac
	.long	.LASF1840
	.byte	0x5
	.uleb128 0x4c1
	.long	.LASF1841
	.byte	0x5
	.uleb128 0x4d3
	.long	.LASF1842
	.byte	0x5
	.uleb128 0x4e8
	.long	.LASF1843
	.byte	0x5
	.uleb128 0x4f2
	.long	.LASF1844
	.byte	0x5
	.uleb128 0x50b
	.long	.LASF1845
	.byte	0x5
	.uleb128 0x51c
	.long	.LASF1846
	.byte	0x5
	.uleb128 0x531
	.long	.LASF1847
	.byte	0x5
	.uleb128 0x542
	.long	.LASF1848
	.byte	0x5
	.uleb128 0x554
	.long	.LASF1849
	.byte	0x5
	.uleb128 0x569
	.long	.LASF1850
	.byte	0x5
	.uleb128 0x57a
	.long	.LASF1851
	.byte	0x5
	.uleb128 0x58b
	.long	.LASF1852
	.byte	0x5
	.uleb128 0x59c
	.long	.LASF1853
	.byte	0x5
	.uleb128 0x5b1
	.long	.LASF1854
	.byte	0x5
	.uleb128 0x5c2
	.long	.LASF1855
	.byte	0x5
	.uleb128 0x5d5
	.long	.LASF1856
	.byte	0x5
	.uleb128 0x5e6
	.long	.LASF1857
	.byte	0x5
	.uleb128 0x5f7
	.long	.LASF1858
	.byte	0x5
	.uleb128 0x60d
	.long	.LASF1859
	.byte	0x5
	.uleb128 0x61e
	.long	.LASF1860
	.byte	0x5
	.uleb128 0x62f
	.long	.LASF1861
	.byte	0x5
	.uleb128 0x63e
	.long	.LASF1862
	.byte	0x5
	.uleb128 0x64f
	.long	.LASF1863
	.byte	0x5
	.uleb128 0x65c
	.long	.LASF1864
	.byte	0x5
	.uleb128 0x66d
	.long	.LASF1865
	.byte	0x5
	.uleb128 0x67c
	.long	.LASF1866
	.byte	0x5
	.uleb128 0x68d
	.long	.LASF1867
	.byte	0x5
	.uleb128 0x6a0
	.long	.LASF1868
	.byte	0x5
	.uleb128 0x6b1
	.long	.LASF1869
	.byte	0x5
	.uleb128 0x6bc
	.long	.LASF1870
	.byte	0x5
	.uleb128 0x6cd
	.long	.LASF1871
	.byte	0x5
	.uleb128 0x6e0
	.long	.LASF1872
	.byte	0x5
	.uleb128 0x6ef
	.long	.LASF1873
	.byte	0x5
	.uleb128 0x6ff
	.long	.LASF1874
	.byte	0x5
	.uleb128 0x711
	.long	.LASF1875
	.byte	0x5
	.uleb128 0x720
	.long	.LASF1876
	.byte	0x5
	.uleb128 0x732
	.long	.LASF1877
	.byte	0x5
	.uleb128 0x743
	.long	.LASF1878
	.byte	0x5
	.uleb128 0x752
	.long	.LASF1879
	.byte	0x5
	.uleb128 0x763
	.long	.LASF1880
	.byte	0x5
	.uleb128 0x774
	.long	.LASF1881
	.byte	0x5
	.uleb128 0x787
	.long	.LASF1882
	.byte	0x5
	.uleb128 0x796
	.long	.LASF1883
	.byte	0x5
	.uleb128 0x7a5
	.long	.LASF1884
	.byte	0x5
	.uleb128 0x7b4
	.long	.LASF1885
	.byte	0x5
	.uleb128 0x7c6
	.long	.LASF1886
	.byte	0x5
	.uleb128 0x7d6
	.long	.LASF1887
	.byte	0x5
	.uleb128 0x7e5
	.long	.LASF1888
	.byte	0x5
	.uleb128 0x7f4
	.long	.LASF1889
	.byte	0x5
	.uleb128 0x805
	.long	.LASF1890
	.byte	0x5
	.uleb128 0x814
	.long	.LASF1891
	.byte	0x5
	.uleb128 0x823
	.long	.LASF1892
	.byte	0x5
	.uleb128 0x834
	.long	.LASF1893
	.byte	0x5
	.uleb128 0x849
	.long	.LASF1894
	.byte	0x5
	.uleb128 0x858
	.long	.LASF1895
	.byte	0x5
	.uleb128 0x869
	.long	.LASF1896
	.byte	0x5
	.uleb128 0x87e
	.long	.LASF1897
	.byte	0x5
	.uleb128 0x890
	.long	.LASF1898
	.byte	0x5
	.uleb128 0x8b2
	.long	.LASF1899
	.byte	0x5
	.uleb128 0x8c0
	.long	.LASF1900
	.byte	0x5
	.uleb128 0x8dc
	.long	.LASF1901
	.byte	0x5
	.uleb128 0x8f6
	.long	.LASF1902
	.byte	0x5
	.uleb128 0x906
	.long	.LASF1903
	.byte	0x5
	.uleb128 0x916
	.long	.LASF1904
	.byte	0x5
	.uleb128 0x92d
	.long	.LASF1905
	.byte	0x5
	.uleb128 0x946
	.long	.LASF1906
	.byte	0x5
	.uleb128 0x955
	.long	.LASF1907
	.byte	0x5
	.uleb128 0x96f
	.long	.LASF1908
	.byte	0x5
	.uleb128 0x982
	.long	.LASF1909
	.byte	0x5
	.uleb128 0x98b
	.long	.LASF1910
	.byte	0x5
	.uleb128 0x994
	.long	.LASF1911
	.byte	0x5
	.uleb128 0x9a0
	.long	.LASF1912
	.byte	0x5
	.uleb128 0x9c0
	.long	.LASF1913
	.byte	0x5
	.uleb128 0x9ce
	.long	.LASF1914
	.byte	0x5
	.uleb128 0x9d8
	.long	.LASF1915
	.byte	0x5
	.uleb128 0x9ed
	.long	.LASF1916
	.byte	0x5
	.uleb128 0x9f7
	.long	.LASF1917
	.byte	0x5
	.uleb128 0xa0a
	.long	.LASF1918
	.byte	0x5
	.uleb128 0xa1d
	.long	.LASF1919
	.byte	0x5
	.uleb128 0xa30
	.long	.LASF1920
	.byte	0x5
	.uleb128 0xa41
	.long	.LASF1921
	.byte	0x5
	.uleb128 0xa53
	.long	.LASF1922
	.byte	0x5
	.uleb128 0xa62
	.long	.LASF1923
	.byte	0x5
	.uleb128 0xa6d
	.long	.LASF1924
	.byte	0x5
	.uleb128 0xa79
	.long	.LASF1925
	.byte	0x5
	.uleb128 0xa9b
	.long	.LASF1926
	.byte	0x5
	.uleb128 0xaa7
	.long	.LASF1927
	.byte	0x5
	.uleb128 0xaba
	.long	.LASF1928
	.byte	0x5
	.uleb128 0xace
	.long	.LASF1929
	.byte	0x5
	.uleb128 0xae0
	.long	.LASF1930
	.byte	0x5
	.uleb128 0xaf7
	.long	.LASF1931
	.byte	0x5
	.uleb128 0xb06
	.long	.LASF1932
	.byte	0x5
	.uleb128 0xb16
	.long	.LASF1933
	.byte	0x5
	.uleb128 0xb24
	.long	.LASF1934
	.byte	0x5
	.uleb128 0xb32
	.long	.LASF1935
	.byte	0x5
	.uleb128 0xb41
	.long	.LASF1936
	.byte	0x5
	.uleb128 0xb62
	.long	.LASF1937
	.byte	0x5
	.uleb128 0xb74
	.long	.LASF1938
	.byte	0x5
	.uleb128 0xb83
	.long	.LASF1939
	.byte	0x5
	.uleb128 0xb94
	.long	.LASF1940
	.byte	0x5
	.uleb128 0xba5
	.long	.LASF1941
	.byte	0x5
	.uleb128 0xbb8
	.long	.LASF1942
	.byte	0x5
	.uleb128 0xbcc
	.long	.LASF1943
	.byte	0x5
	.uleb128 0xbd8
	.long	.LASF1944
	.byte	0x5
	.uleb128 0xbee
	.long	.LASF1945
	.byte	0x5
	.uleb128 0xc01
	.long	.LASF1946
	.byte	0x5
	.uleb128 0xc0f
	.long	.LASF1947
	.byte	0x5
	.uleb128 0xc1d
	.long	.LASF1948
	.byte	0x5
	.uleb128 0xc3a
	.long	.LASF1949
	.byte	0x5
	.uleb128 0xc51
	.long	.LASF1950
	.byte	0x5
	.uleb128 0xc65
	.long	.LASF1951
	.byte	0x5
	.uleb128 0xc74
	.long	.LASF1952
	.byte	0x5
	.uleb128 0xc89
	.long	.LASF1953
	.byte	0x5
	.uleb128 0xc98
	.long	.LASF1954
	.byte	0x5
	.uleb128 0xca6
	.long	.LASF1955
	.byte	0x5
	.uleb128 0xcbf
	.long	.LASF1956
	.byte	0x5
	.uleb128 0xcd6
	.long	.LASF1957
	.byte	0x5
	.uleb128 0xce8
	.long	.LASF1958
	.byte	0x5
	.uleb128 0xcf5
	.long	.LASF1959
	.byte	0x5
	.uleb128 0xd03
	.long	.LASF1960
	.byte	0x5
	.uleb128 0xd13
	.long	.LASF1961
	.byte	0x5
	.uleb128 0xd25
	.long	.LASF1962
	.byte	0x5
	.uleb128 0xd3a
	.long	.LASF1963
	.byte	0x5
	.uleb128 0xd4a
	.long	.LASF1964
	.byte	0x5
	.uleb128 0xd5b
	.long	.LASF1965
	.byte	0x5
	.uleb128 0xd75
	.long	.LASF1966
	.byte	0x5
	.uleb128 0xd87
	.long	.LASF1967
	.byte	0x5
	.uleb128 0xd9b
	.long	.LASF1968
	.byte	0x5
	.uleb128 0xdb1
	.long	.LASF1969
	.byte	0x5
	.uleb128 0xdc5
	.long	.LASF1970
	.byte	0x5
	.uleb128 0xdec
	.long	.LASF1971
	.byte	0x5
	.uleb128 0xe02
	.long	.LASF1972
	.byte	0x5
	.uleb128 0xe11
	.long	.LASF1973
	.byte	0x5
	.uleb128 0xe24
	.long	.LASF1974
	.byte	0x5
	.uleb128 0xe32
	.long	.LASF1975
	.byte	0x5
	.uleb128 0xe3d
	.long	.LASF1976
	.byte	0x5
	.uleb128 0xe46
	.long	.LASF1977
	.byte	0x5
	.uleb128 0xe4f
	.long	.LASF1978
	.byte	0x5
	.uleb128 0xe5d
	.long	.LASF1979
	.byte	0x5
	.uleb128 0xe6c
	.long	.LASF1980
	.byte	0x5
	.uleb128 0xe7b
	.long	.LASF1981
	.byte	0x5
	.uleb128 0xe86
	.long	.LASF1982
	.byte	0x5
	.uleb128 0xe93
	.long	.LASF1983
	.byte	0x5
	.uleb128 0xea2
	.long	.LASF1984
	.byte	0x5
	.uleb128 0xeb1
	.long	.LASF1985
	.byte	0x5
	.uleb128 0xec1
	.long	.LASF1986
	.byte	0x5
	.uleb128 0xecc
	.long	.LASF1987
	.byte	0x5
	.uleb128 0xed6
	.long	.LASF1988
	.byte	0x5
	.uleb128 0xef6
	.long	.LASF1989
	.byte	0x5
	.uleb128 0xf02
	.long	.LASF1990
	.byte	0x5
	.uleb128 0xf1e
	.long	.LASF1991
	.byte	0x5
	.uleb128 0xf32
	.long	.LASF1992
	.byte	0x5
	.uleb128 0xf43
	.long	.LASF1993
	.byte	0x5
	.uleb128 0xf54
	.long	.LASF1994
	.byte	0x5
	.uleb128 0xf66
	.long	.LASF1995
	.byte	0x5
	.uleb128 0xf76
	.long	.LASF1996
	.byte	0x5
	.uleb128 0xf86
	.long	.LASF1997
	.byte	0x5
	.uleb128 0xfa3
	.long	.LASF1998
	.byte	0x5
	.uleb128 0xfb2
	.long	.LASF1999
	.byte	0x5
	.uleb128 0xfc2
	.long	.LASF2000
	.byte	0x5
	.uleb128 0xfd0
	.long	.LASF2001
	.byte	0x5
	.uleb128 0xfe5
	.long	.LASF2002
	.byte	0x5
	.uleb128 0xfef
	.long	.LASF2003
	.byte	0x5
	.uleb128 0xff9
	.long	.LASF2004
	.byte	0x5
	.uleb128 0x1013
	.long	.LASF2005
	.byte	0x5
	.uleb128 0x1024
	.long	.LASF2006
	.byte	0x5
	.uleb128 0x1039
	.long	.LASF2007
	.byte	0x5
	.uleb128 0x104a
	.long	.LASF2008
	.byte	0x5
	.uleb128 0x1055
	.long	.LASF2009
	.byte	0x5
	.uleb128 0x1064
	.long	.LASF2010
	.byte	0x5
	.uleb128 0x107c
	.long	.LASF2011
	.byte	0x5
	.uleb128 0x108b
	.long	.LASF2012
	.byte	0x5
	.uleb128 0x109a
	.long	.LASF2013
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_init.h.80.1b118cf0be320c34f824dfe7a0e27200,comdat
.Ldebug_macro61:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x50
	.long	.LASF2015
	.byte	0x5
	.uleb128 0x51
	.long	.LASF2016
	.byte	0x5
	.uleb128 0x52
	.long	.LASF2017
	.byte	0x5
	.uleb128 0x53
	.long	.LASF2018
	.byte	0x5
	.uleb128 0x54
	.long	.LASF2019
	.byte	0x5
	.uleb128 0x55
	.long	.LASF2020
	.byte	0x5
	.uleb128 0x56
	.long	.LASF2021
	.byte	0x5
	.uleb128 0x57
	.long	.LASF2022
	.byte	0x5
	.uleb128 0x1cc
	.long	.LASF2023
	.byte	0x5
	.uleb128 0x1cd
	.long	.LASF2024
	.byte	0x5
	.uleb128 0x1ce
	.long	.LASF2025
	.byte	0x5
	.uleb128 0x1cf
	.long	.LASF2026
	.byte	0x5
	.uleb128 0x1d0
	.long	.LASF2027
	.byte	0x5
	.uleb128 0x1d1
	.long	.LASF2028
	.byte	0x5
	.uleb128 0x1d2
	.long	.LASF2029
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_messagebox.h.61.ef2927d4a0d0d7c614f639ee43484aee,comdat
.Ldebug_macro62:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x3d
	.long	.LASF2034
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF2035
	.byte	0x5
	.uleb128 0x3f
	.long	.LASF2036
	.byte	0x5
	.uleb128 0x40
	.long	.LASF2037
	.byte	0x5
	.uleb128 0x41
	.long	.LASF2038
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF2039
	.byte	0x5
	.uleb128 0x4b
	.long	.LASF2040
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_process.h.220.3a1bb499ce0cfa3fad1bbc3aded282fd,comdat
.Ldebug_macro63:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0xdc
	.long	.LASF2045
	.byte	0x5
	.uleb128 0xdd
	.long	.LASF2046
	.byte	0x5
	.uleb128 0xde
	.long	.LASF2047
	.byte	0x5
	.uleb128 0xdf
	.long	.LASF2048
	.byte	0x5
	.uleb128 0xe0
	.long	.LASF2049
	.byte	0x5
	.uleb128 0xe1
	.long	.LASF2050
	.byte	0x5
	.uleb128 0xe2
	.long	.LASF2051
	.byte	0x5
	.uleb128 0xe3
	.long	.LASF2052
	.byte	0x5
	.uleb128 0xe4
	.long	.LASF2053
	.byte	0x5
	.uleb128 0xe5
	.long	.LASF2054
	.byte	0x5
	.uleb128 0x106
	.long	.LASF2055
	.byte	0x5
	.uleb128 0x107
	.long	.LASF2056
	.byte	0x5
	.uleb128 0x108
	.long	.LASF2057
	.byte	0x5
	.uleb128 0x109
	.long	.LASF2058
	.byte	0x5
	.uleb128 0x10a
	.long	.LASF2059
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_render.h.74.d6e8127daf0672fa17165999d86cbdae,comdat
.Ldebug_macro64:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x4a
	.long	.LASF2061
	.byte	0x5
	.uleb128 0x12d
	.long	.LASF2062
	.byte	0x5
	.uleb128 0x12e
	.long	.LASF2063
	.byte	0x5
	.uleb128 0x12f
	.long	.LASF2064
	.byte	0x5
	.uleb128 0x130
	.long	.LASF2065
	.byte	0x5
	.uleb128 0x131
	.long	.LASF2066
	.byte	0x5
	.uleb128 0x132
	.long	.LASF2067
	.byte	0x5
	.uleb128 0x133
	.long	.LASF2068
	.byte	0x5
	.uleb128 0x134
	.long	.LASF2069
	.byte	0x5
	.uleb128 0x135
	.long	.LASF2070
	.byte	0x5
	.uleb128 0x136
	.long	.LASF2071
	.byte	0x5
	.uleb128 0x137
	.long	.LASF2072
	.byte	0x5
	.uleb128 0x1ce
	.long	.LASF2073
	.byte	0x5
	.uleb128 0x1cf
	.long	.LASF2074
	.byte	0x5
	.uleb128 0x1d0
	.long	.LASF2075
	.byte	0x5
	.uleb128 0x1d1
	.long	.LASF2076
	.byte	0x5
	.uleb128 0x1d2
	.long	.LASF2077
	.byte	0x5
	.uleb128 0x1d3
	.long	.LASF2078
	.byte	0x5
	.uleb128 0x1d4
	.long	.LASF2079
	.byte	0x5
	.uleb128 0x1d5
	.long	.LASF2080
	.byte	0x5
	.uleb128 0x1d6
	.long	.LASF2081
	.byte	0x5
	.uleb128 0x1d7
	.long	.LASF2082
	.byte	0x5
	.uleb128 0x1d8
	.long	.LASF2083
	.byte	0x5
	.uleb128 0x1d9
	.long	.LASF2084
	.byte	0x5
	.uleb128 0x1da
	.long	.LASF2085
	.byte	0x5
	.uleb128 0x1db
	.long	.LASF2086
	.byte	0x5
	.uleb128 0x1dc
	.long	.LASF2087
	.byte	0x5
	.uleb128 0x1dd
	.long	.LASF2088
	.byte	0x5
	.uleb128 0x1de
	.long	.LASF2089
	.byte	0x5
	.uleb128 0x1df
	.long	.LASF2090
	.byte	0x5
	.uleb128 0x1e0
	.long	.LASF2091
	.byte	0x5
	.uleb128 0x1e1
	.long	.LASF2092
	.byte	0x5
	.uleb128 0x1e2
	.long	.LASF2093
	.byte	0x5
	.uleb128 0x1e3
	.long	.LASF2094
	.byte	0x5
	.uleb128 0x1e4
	.long	.LASF2095
	.byte	0x5
	.uleb128 0x1e5
	.long	.LASF2096
	.byte	0x5
	.uleb128 0x2b6
	.long	.LASF2097
	.byte	0x5
	.uleb128 0x2b7
	.long	.LASF2098
	.byte	0x5
	.uleb128 0x2b8
	.long	.LASF2099
	.byte	0x5
	.uleb128 0x2b9
	.long	.LASF2100
	.byte	0x5
	.uleb128 0x2ba
	.long	.LASF2101
	.byte	0x5
	.uleb128 0x2bb
	.long	.LASF2102
	.byte	0x5
	.uleb128 0x2bc
	.long	.LASF2103
	.byte	0x5
	.uleb128 0x2bd
	.long	.LASF2104
	.byte	0x5
	.uleb128 0x2be
	.long	.LASF2105
	.byte	0x5
	.uleb128 0x2bf
	.long	.LASF2106
	.byte	0x5
	.uleb128 0x2c0
	.long	.LASF2107
	.byte	0x5
	.uleb128 0x2c1
	.long	.LASF2108
	.byte	0x5
	.uleb128 0x2c2
	.long	.LASF2109
	.byte	0x5
	.uleb128 0x2c3
	.long	.LASF2110
	.byte	0x5
	.uleb128 0x2c4
	.long	.LASF2111
	.byte	0x5
	.uleb128 0x2c5
	.long	.LASF2112
	.byte	0x5
	.uleb128 0x2c6
	.long	.LASF2113
	.byte	0x5
	.uleb128 0x2c7
	.long	.LASF2114
	.byte	0x5
	.uleb128 0x2c8
	.long	.LASF2115
	.byte	0x5
	.uleb128 0x2c9
	.long	.LASF2116
	.byte	0x5
	.uleb128 0x2ca
	.long	.LASF2117
	.byte	0x5
	.uleb128 0x2cb
	.long	.LASF2118
	.byte	0x5
	.uleb128 0x2cc
	.long	.LASF2119
	.byte	0x5
	.uleb128 0x326
	.long	.LASF2120
	.byte	0x5
	.uleb128 0x327
	.long	.LASF2121
	.byte	0x5
	.uleb128 0x328
	.long	.LASF2122
	.byte	0x5
	.uleb128 0x329
	.long	.LASF2123
	.byte	0x5
	.uleb128 0x32a
	.long	.LASF2124
	.byte	0x5
	.uleb128 0x32b
	.long	.LASF2125
	.byte	0x5
	.uleb128 0x32c
	.long	.LASF2126
	.byte	0x5
	.uleb128 0x32d
	.long	.LASF2127
	.byte	0x5
	.uleb128 0x32e
	.long	.LASF2128
	.byte	0x5
	.uleb128 0x32f
	.long	.LASF2129
	.byte	0x5
	.uleb128 0x330
	.long	.LASF2130
	.byte	0x5
	.uleb128 0x331
	.long	.LASF2131
	.byte	0x5
	.uleb128 0x332
	.long	.LASF2132
	.byte	0x5
	.uleb128 0x333
	.long	.LASF2133
	.byte	0x5
	.uleb128 0x334
	.long	.LASF2134
	.byte	0x5
	.uleb128 0x335
	.long	.LASF2135
	.byte	0x5
	.uleb128 0x336
	.long	.LASF2136
	.byte	0x5
	.uleb128 0x337
	.long	.LASF2137
	.byte	0x5
	.uleb128 0x338
	.long	.LASF2138
	.byte	0x5
	.uleb128 0x339
	.long	.LASF2139
	.byte	0x5
	.uleb128 0x33a
	.long	.LASF2140
	.byte	0x5
	.uleb128 0x33b
	.long	.LASF2141
	.byte	0x5
	.uleb128 0x33c
	.long	.LASF2142
	.byte	0x5
	.uleb128 0x33d
	.long	.LASF2143
	.byte	0x5
	.uleb128 0x33e
	.long	.LASF2144
	.byte	0x5
	.uleb128 0x33f
	.long	.LASF2145
	.byte	0x5
	.uleb128 0x9b1
	.long	.LASF2146
	.byte	0x5
	.uleb128 0x9b2
	.long	.LASF2147
	.byte	0x5
	.uleb128 0x9ce
	.long	.LASF2148
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_timer.h.62.272c829a66589973ba2805e6e3dc0103,comdat
.Ldebug_macro65:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x3e
	.long	.LASF2153
	.byte	0x5
	.uleb128 0x47
	.long	.LASF2154
	.byte	0x5
	.uleb128 0x50
	.long	.LASF2155
	.byte	0x5
	.uleb128 0x59
	.long	.LASF2156
	.byte	0x5
	.uleb128 0x62
	.long	.LASF2157
	.byte	0x5
	.uleb128 0x70
	.long	.LASF2158
	.byte	0x5
	.uleb128 0x7f
	.long	.LASF2159
	.byte	0x5
	.uleb128 0x8d
	.long	.LASF2160
	.byte	0x5
	.uleb128 0x9c
	.long	.LASF2161
	.byte	0x5
	.uleb128 0xaa
	.long	.LASF2162
	.byte	0x5
	.uleb128 0xb9
	.long	.LASF2163
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_tray.h.80.540bc71b577971cd502ff05df1af8782,comdat
.Ldebug_macro66:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x50
	.long	.LASF2165
	.byte	0x5
	.uleb128 0x51
	.long	.LASF2166
	.byte	0x5
	.uleb128 0x52
	.long	.LASF2167
	.byte	0x5
	.uleb128 0x53
	.long	.LASF2168
	.byte	0x5
	.uleb128 0x54
	.long	.LASF2169
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_version.h.47.6b0f7595b9dc1dfd0b389cbddc518244,comdat
.Ldebug_macro67:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x2f
	.long	.LASF2171
	.byte	0x5
	.uleb128 0x38
	.long	.LASF2172
	.byte	0x5
	.uleb128 0x41
	.long	.LASF2173
	.byte	0x5
	.uleb128 0x4e
	.long	.LASF2174
	.byte	0x5
	.uleb128 0x5a
	.long	.LASF2175
	.byte	0x5
	.uleb128 0x65
	.long	.LASF2176
	.byte	0x5
	.uleb128 0x70
	.long	.LASF2177
	.byte	0x5
	.uleb128 0x79
	.long	.LASF2178
	.byte	0x5
	.uleb128 0x81
	.long	.LASF2179
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.SDL_oldnames.h.27.738c2a5e6c7b6679fbf719970767767c,comdat
.Ldebug_macro68:
	.value	0x5
	.byte	0
	.byte	0x5
	.uleb128 0x1b
	.long	.LASF2180
	.byte	0x5
	.uleb128 0x2ac
	.long	.LASF2181
	.byte	0x5
	.uleb128 0x2ad
	.long	.LASF2182
	.byte	0x5
	.uleb128 0x2ae
	.long	.LASF2183
	.byte	0x5
	.uleb128 0x2af
	.long	.LASF2184
	.byte	0x5
	.uleb128 0x2b0
	.long	.LASF2185
	.byte	0x5
	.uleb128 0x2b1
	.long	.LASF2186
	.byte	0x5
	.uleb128 0x2b2
	.long	.LASF2187
	.byte	0x5
	.uleb128 0x2b3
	.long	.LASF2188
	.byte	0x5
	.uleb128 0x2b4
	.long	.LASF2189
	.byte	0x5
	.uleb128 0x2b5
	.long	.LASF2190
	.byte	0x5
	.uleb128 0x2b6
	.long	.LASF2191
	.byte	0x5
	.uleb128 0x2b9
	.long	.LASF2192
	.byte	0x5
	.uleb128 0x2ba
	.long	.LASF2193
	.byte	0x5
	.uleb128 0x2bb
	.long	.LASF2194
	.byte	0x5
	.uleb128 0x2bc
	.long	.LASF2195
	.byte	0x5
	.uleb128 0x2bd
	.long	.LASF2196
	.byte	0x5
	.uleb128 0x2be
	.long	.LASF2197
	.byte	0x5
	.uleb128 0x2bf
	.long	.LASF2198
	.byte	0x5
	.uleb128 0x2c0
	.long	.LASF2199
	.byte	0x5
	.uleb128 0x2c1
	.long	.LASF2200
	.byte	0x5
	.uleb128 0x2c2
	.long	.LASF2201
	.byte	0x5
	.uleb128 0x2c3
	.long	.LASF2202
	.byte	0x5
	.uleb128 0x2c4
	.long	.LASF2203
	.byte	0x5
	.uleb128 0x2c5
	.long	.LASF2204
	.byte	0x5
	.uleb128 0x2c6
	.long	.LASF2205
	.byte	0x5
	.uleb128 0x2c7
	.long	.LASF2206
	.byte	0x5
	.uleb128 0x2c8
	.long	.LASF2207
	.byte	0x5
	.uleb128 0x2c9
	.long	.LASF2208
	.byte	0x5
	.uleb128 0x2ca
	.long	.LASF2209
	.byte	0x5
	.uleb128 0x2cb
	.long	.LASF2210
	.byte	0x5
	.uleb128 0x2cc
	.long	.LASF2211
	.byte	0x5
	.uleb128 0x2cd
	.long	.LASF2212
	.byte	0x5
	.uleb128 0x2ce
	.long	.LASF2213
	.byte	0x5
	.uleb128 0x2cf
	.long	.LASF2214
	.byte	0x5
	.uleb128 0x2d0
	.long	.LASF2215
	.byte	0x5
	.uleb128 0x2d3
	.long	.LASF2216
	.byte	0x5
	.uleb128 0x2d4
	.long	.LASF2217
	.byte	0x5
	.uleb128 0x2d7
	.long	.LASF2218
	.byte	0x5
	.uleb128 0x2d8
	.long	.LASF2219
	.byte	0x5
	.uleb128 0x2d9
	.long	.LASF2220
	.byte	0x5
	.uleb128 0x2da
	.long	.LASF2221
	.byte	0x5
	.uleb128 0x2db
	.long	.LASF2222
	.byte	0x5
	.uleb128 0x2dc
	.long	.LASF2223
	.byte	0x5
	.uleb128 0x2df
	.long	.LASF2224
	.byte	0x5
	.uleb128 0x2e0
	.long	.LASF2225
	.byte	0x5
	.uleb128 0x2e1
	.long	.LASF2226
	.byte	0x5
	.uleb128 0x2e2
	.long	.LASF2227
	.byte	0x5
	.uleb128 0x2e3
	.long	.LASF2228
	.byte	0x5
	.uleb128 0x2e4
	.long	.LASF2229
	.byte	0x5
	.uleb128 0x2e5
	.long	.LASF2230
	.byte	0x5
	.uleb128 0x2e6
	.long	.LASF2231
	.byte	0x5
	.uleb128 0x2e7
	.long	.LASF2232
	.byte	0x5
	.uleb128 0x2e8
	.long	.LASF2233
	.byte	0x5
	.uleb128 0x2e9
	.long	.LASF2234
	.byte	0x5
	.uleb128 0x2ea
	.long	.LASF2235
	.byte	0x5
	.uleb128 0x2eb
	.long	.LASF2236
	.byte	0x5
	.uleb128 0x2ec
	.long	.LASF2237
	.byte	0x5
	.uleb128 0x2ed
	.long	.LASF2238
	.byte	0x5
	.uleb128 0x2ee
	.long	.LASF2239
	.byte	0x5
	.uleb128 0x2ef
	.long	.LASF2240
	.byte	0x5
	.uleb128 0x2f0
	.long	.LASF2241
	.byte	0x5
	.uleb128 0x2f1
	.long	.LASF2242
	.byte	0x5
	.uleb128 0x2f2
	.long	.LASF2243
	.byte	0x5
	.uleb128 0x2f3
	.long	.LASF2244
	.byte	0x5
	.uleb128 0x2f4
	.long	.LASF2245
	.byte	0x5
	.uleb128 0x2f5
	.long	.LASF2246
	.byte	0x5
	.uleb128 0x2f6
	.long	.LASF2247
	.byte	0x5
	.uleb128 0x2f7
	.long	.LASF2248
	.byte	0x5
	.uleb128 0x2f8
	.long	.LASF2249
	.byte	0x5
	.uleb128 0x2f9
	.long	.LASF2250
	.byte	0x5
	.uleb128 0x2fa
	.long	.LASF2251
	.byte	0x5
	.uleb128 0x2fb
	.long	.LASF2252
	.byte	0x5
	.uleb128 0x2fc
	.long	.LASF2253
	.byte	0x5
	.uleb128 0x2fd
	.long	.LASF2254
	.byte	0x5
	.uleb128 0x2fe
	.long	.LASF2255
	.byte	0x5
	.uleb128 0x2ff
	.long	.LASF2256
	.byte	0x5
	.uleb128 0x300
	.long	.LASF2257
	.byte	0x5
	.uleb128 0x301
	.long	.LASF2258
	.byte	0x5
	.uleb128 0x302
	.long	.LASF2259
	.byte	0x5
	.uleb128 0x303
	.long	.LASF2260
	.byte	0x5
	.uleb128 0x304
	.long	.LASF2261
	.byte	0x5
	.uleb128 0x305
	.long	.LASF2262
	.byte	0x5
	.uleb128 0x306
	.long	.LASF2263
	.byte	0x5
	.uleb128 0x307
	.long	.LASF2264
	.byte	0x5
	.uleb128 0x308
	.long	.LASF2265
	.byte	0x5
	.uleb128 0x309
	.long	.LASF2266
	.byte	0x5
	.uleb128 0x30a
	.long	.LASF2267
	.byte	0x5
	.uleb128 0x30b
	.long	.LASF2268
	.byte	0x5
	.uleb128 0x30c
	.long	.LASF2269
	.byte	0x5
	.uleb128 0x30d
	.long	.LASF2270
	.byte	0x5
	.uleb128 0x30e
	.long	.LASF2271
	.byte	0x5
	.uleb128 0x30f
	.long	.LASF2272
	.byte	0x5
	.uleb128 0x310
	.long	.LASF2273
	.byte	0x5
	.uleb128 0x311
	.long	.LASF2274
	.byte	0x5
	.uleb128 0x312
	.long	.LASF2275
	.byte	0x5
	.uleb128 0x313
	.long	.LASF2276
	.byte	0x5
	.uleb128 0x314
	.long	.LASF2277
	.byte	0x5
	.uleb128 0x315
	.long	.LASF2278
	.byte	0x5
	.uleb128 0x316
	.long	.LASF2279
	.byte	0x5
	.uleb128 0x317
	.long	.LASF2280
	.byte	0x5
	.uleb128 0x318
	.long	.LASF2281
	.byte	0x5
	.uleb128 0x319
	.long	.LASF2282
	.byte	0x5
	.uleb128 0x31a
	.long	.LASF2283
	.byte	0x5
	.uleb128 0x31b
	.long	.LASF2284
	.byte	0x5
	.uleb128 0x31c
	.long	.LASF2285
	.byte	0x5
	.uleb128 0x31d
	.long	.LASF2286
	.byte	0x5
	.uleb128 0x31e
	.long	.LASF2287
	.byte	0x5
	.uleb128 0x31f
	.long	.LASF2288
	.byte	0x5
	.uleb128 0x320
	.long	.LASF2289
	.byte	0x5
	.uleb128 0x321
	.long	.LASF2290
	.byte	0x5
	.uleb128 0x322
	.long	.LASF2291
	.byte	0x5
	.uleb128 0x323
	.long	.LASF2292
	.byte	0x5
	.uleb128 0x324
	.long	.LASF2293
	.byte	0x5
	.uleb128 0x325
	.long	.LASF2294
	.byte	0x5
	.uleb128 0x326
	.long	.LASF2295
	.byte	0x5
	.uleb128 0x327
	.long	.LASF2296
	.byte	0x5
	.uleb128 0x328
	.long	.LASF2297
	.byte	0x5
	.uleb128 0x329
	.long	.LASF2298
	.byte	0x5
	.uleb128 0x32a
	.long	.LASF2299
	.byte	0x5
	.uleb128 0x32b
	.long	.LASF2300
	.byte	0x5
	.uleb128 0x32c
	.long	.LASF2301
	.byte	0x5
	.uleb128 0x32d
	.long	.LASF2302
	.byte	0x5
	.uleb128 0x32e
	.long	.LASF2303
	.byte	0x5
	.uleb128 0x32f
	.long	.LASF2304
	.byte	0x5
	.uleb128 0x330
	.long	.LASF2305
	.byte	0x5
	.uleb128 0x333
	.long	.LASF2306
	.byte	0x5
	.uleb128 0x334
	.long	.LASF2307
	.byte	0x5
	.uleb128 0x335
	.long	.LASF2308
	.byte	0x5
	.uleb128 0x336
	.long	.LASF2309
	.byte	0x5
	.uleb128 0x337
	.long	.LASF2310
	.byte	0x5
	.uleb128 0x338
	.long	.LASF2311
	.byte	0x5
	.uleb128 0x339
	.long	.LASF2312
	.byte	0x5
	.uleb128 0x33a
	.long	.LASF2313
	.byte	0x5
	.uleb128 0x33b
	.long	.LASF2314
	.byte	0x5
	.uleb128 0x33c
	.long	.LASF2315
	.byte	0x5
	.uleb128 0x33d
	.long	.LASF2316
	.byte	0x5
	.uleb128 0x33e
	.long	.LASF2317
	.byte	0x5
	.uleb128 0x33f
	.long	.LASF2318
	.byte	0x5
	.uleb128 0x340
	.long	.LASF2319
	.byte	0x5
	.uleb128 0x341
	.long	.LASF2320
	.byte	0x5
	.uleb128 0x342
	.long	.LASF2321
	.byte	0x5
	.uleb128 0x343
	.long	.LASF2322
	.byte	0x5
	.uleb128 0x344
	.long	.LASF2323
	.byte	0x5
	.uleb128 0x345
	.long	.LASF2324
	.byte	0x5
	.uleb128 0x346
	.long	.LASF2325
	.byte	0x5
	.uleb128 0x347
	.long	.LASF2326
	.byte	0x5
	.uleb128 0x348
	.long	.LASF2327
	.byte	0x5
	.uleb128 0x349
	.long	.LASF2328
	.byte	0x5
	.uleb128 0x34a
	.long	.LASF2329
	.byte	0x5
	.uleb128 0x34b
	.long	.LASF2330
	.byte	0x5
	.uleb128 0x34c
	.long	.LASF2331
	.byte	0x5
	.uleb128 0x34d
	.long	.LASF2332
	.byte	0x5
	.uleb128 0x34e
	.long	.LASF2333
	.byte	0x5
	.uleb128 0x34f
	.long	.LASF2334
	.byte	0x5
	.uleb128 0x350
	.long	.LASF2335
	.byte	0x5
	.uleb128 0x351
	.long	.LASF2336
	.byte	0x5
	.uleb128 0x352
	.long	.LASF2337
	.byte	0x5
	.uleb128 0x353
	.long	.LASF2338
	.byte	0x5
	.uleb128 0x354
	.long	.LASF2339
	.byte	0x5
	.uleb128 0x355
	.long	.LASF2340
	.byte	0x5
	.uleb128 0x356
	.long	.LASF2341
	.byte	0x5
	.uleb128 0x357
	.long	.LASF2342
	.byte	0x5
	.uleb128 0x358
	.long	.LASF2343
	.byte	0x5
	.uleb128 0x359
	.long	.LASF2344
	.byte	0x5
	.uleb128 0x35a
	.long	.LASF2345
	.byte	0x5
	.uleb128 0x35b
	.long	.LASF2346
	.byte	0x5
	.uleb128 0x35c
	.long	.LASF2347
	.byte	0x5
	.uleb128 0x35d
	.long	.LASF2348
	.byte	0x5
	.uleb128 0x35e
	.long	.LASF2349
	.byte	0x5
	.uleb128 0x35f
	.long	.LASF2350
	.byte	0x5
	.uleb128 0x360
	.long	.LASF2351
	.byte	0x5
	.uleb128 0x361
	.long	.LASF2352
	.byte	0x5
	.uleb128 0x362
	.long	.LASF2353
	.byte	0x5
	.uleb128 0x363
	.long	.LASF2354
	.byte	0x5
	.uleb128 0x364
	.long	.LASF2355
	.byte	0x5
	.uleb128 0x365
	.long	.LASF2356
	.byte	0x5
	.uleb128 0x366
	.long	.LASF2357
	.byte	0x5
	.uleb128 0x367
	.long	.LASF2358
	.byte	0x5
	.uleb128 0x368
	.long	.LASF2359
	.byte	0x5
	.uleb128 0x369
	.long	.LASF2360
	.byte	0x5
	.uleb128 0x36a
	.long	.LASF2361
	.byte	0x5
	.uleb128 0x36b
	.long	.LASF2362
	.byte	0x5
	.uleb128 0x36c
	.long	.LASF2363
	.byte	0x5
	.uleb128 0x36d
	.long	.LASF2364
	.byte	0x5
	.uleb128 0x36e
	.long	.LASF2365
	.byte	0x5
	.uleb128 0x36f
	.long	.LASF2366
	.byte	0x5
	.uleb128 0x370
	.long	.LASF2367
	.byte	0x5
	.uleb128 0x371
	.long	.LASF2368
	.byte	0x5
	.uleb128 0x372
	.long	.LASF2369
	.byte	0x5
	.uleb128 0x373
	.long	.LASF2370
	.byte	0x5
	.uleb128 0x374
	.long	.LASF2371
	.byte	0x5
	.uleb128 0x375
	.long	.LASF2372
	.byte	0x5
	.uleb128 0x376
	.long	.LASF2373
	.byte	0x5
	.uleb128 0x377
	.long	.LASF2374
	.byte	0x5
	.uleb128 0x378
	.long	.LASF2375
	.byte	0x5
	.uleb128 0x379
	.long	.LASF2376
	.byte	0x5
	.uleb128 0x37a
	.long	.LASF2377
	.byte	0x5
	.uleb128 0x37b
	.long	.LASF2378
	.byte	0x5
	.uleb128 0x37c
	.long	.LASF2379
	.byte	0x5
	.uleb128 0x37d
	.long	.LASF2380
	.byte	0x5
	.uleb128 0x37e
	.long	.LASF2381
	.byte	0x5
	.uleb128 0x37f
	.long	.LASF2382
	.byte	0x5
	.uleb128 0x380
	.long	.LASF2383
	.byte	0x5
	.uleb128 0x381
	.long	.LASF2384
	.byte	0x5
	.uleb128 0x382
	.long	.LASF2385
	.byte	0x5
	.uleb128 0x383
	.long	.LASF2386
	.byte	0x5
	.uleb128 0x384
	.long	.LASF2387
	.byte	0x5
	.uleb128 0x385
	.long	.LASF2388
	.byte	0x5
	.uleb128 0x386
	.long	.LASF2389
	.byte	0x5
	.uleb128 0x387
	.long	.LASF2390
	.byte	0x5
	.uleb128 0x388
	.long	.LASF2391
	.byte	0x5
	.uleb128 0x389
	.long	.LASF2392
	.byte	0x5
	.uleb128 0x38a
	.long	.LASF2393
	.byte	0x5
	.uleb128 0x38b
	.long	.LASF2394
	.byte	0x5
	.uleb128 0x38c
	.long	.LASF2395
	.byte	0x5
	.uleb128 0x38d
	.long	.LASF2396
	.byte	0x5
	.uleb128 0x38e
	.long	.LASF2397
	.byte	0x5
	.uleb128 0x38f
	.long	.LASF2398
	.byte	0x5
	.uleb128 0x390
	.long	.LASF2399
	.byte	0x5
	.uleb128 0x391
	.long	.LASF2400
	.byte	0x5
	.uleb128 0x392
	.long	.LASF2401
	.byte	0x5
	.uleb128 0x393
	.long	.LASF2402
	.byte	0x5
	.uleb128 0x394
	.long	.LASF2403
	.byte	0x5
	.uleb128 0x395
	.long	.LASF2404
	.byte	0x5
	.uleb128 0x398
	.long	.LASF2405
	.byte	0x5
	.uleb128 0x39b
	.long	.LASF2406
	.byte	0x5
	.uleb128 0x39c
	.long	.LASF2407
	.byte	0x5
	.uleb128 0x39d
	.long	.LASF2408
	.byte	0x5
	.uleb128 0x39e
	.long	.LASF2409
	.byte	0x5
	.uleb128 0x39f
	.long	.LASF2410
	.byte	0x5
	.uleb128 0x3a0
	.long	.LASF2411
	.byte	0x5
	.uleb128 0x3a1
	.long	.LASF2412
	.byte	0x5
	.uleb128 0x3a2
	.long	.LASF2413
	.byte	0x5
	.uleb128 0x3a3
	.long	.LASF2414
	.byte	0x5
	.uleb128 0x3a4
	.long	.LASF2415
	.byte	0x5
	.uleb128 0x3a5
	.long	.LASF2416
	.byte	0x5
	.uleb128 0x3a6
	.long	.LASF2417
	.byte	0x5
	.uleb128 0x3a7
	.long	.LASF2418
	.byte	0x5
	.uleb128 0x3a8
	.long	.LASF2419
	.byte	0x5
	.uleb128 0x3a9
	.long	.LASF2420
	.byte	0x5
	.uleb128 0x3aa
	.long	.LASF2421
	.byte	0x5
	.uleb128 0x3ab
	.long	.LASF2422
	.byte	0x5
	.uleb128 0x3ac
	.long	.LASF2423
	.byte	0x5
	.uleb128 0x3ad
	.long	.LASF2424
	.byte	0x5
	.uleb128 0x3ae
	.long	.LASF2425
	.byte	0x5
	.uleb128 0x3af
	.long	.LASF2426
	.byte	0x5
	.uleb128 0x3b0
	.long	.LASF2427
	.byte	0x5
	.uleb128 0x3b1
	.long	.LASF2428
	.byte	0x5
	.uleb128 0x3b2
	.long	.LASF2429
	.byte	0x5
	.uleb128 0x3b5
	.long	.LASF2430
	.byte	0x5
	.uleb128 0x3b6
	.long	.LASF2431
	.byte	0x5
	.uleb128 0x3b7
	.long	.LASF2432
	.byte	0x5
	.uleb128 0x3b8
	.long	.LASF2433
	.byte	0x5
	.uleb128 0x3b9
	.long	.LASF2434
	.byte	0x5
	.uleb128 0x3ba
	.long	.LASF2435
	.byte	0x5
	.uleb128 0x3bb
	.long	.LASF2436
	.byte	0x5
	.uleb128 0x3bc
	.long	.LASF2437
	.byte	0x5
	.uleb128 0x3bd
	.long	.LASF2438
	.byte	0x5
	.uleb128 0x3be
	.long	.LASF2439
	.byte	0x5
	.uleb128 0x3bf
	.long	.LASF2440
	.byte	0x5
	.uleb128 0x3c2
	.long	.LASF2441
	.byte	0x5
	.uleb128 0x3c3
	.long	.LASF2442
	.byte	0x5
	.uleb128 0x3c4
	.long	.LASF2443
	.byte	0x5
	.uleb128 0x3c5
	.long	.LASF2444
	.byte	0x5
	.uleb128 0x3c6
	.long	.LASF2445
	.byte	0x5
	.uleb128 0x3c7
	.long	.LASF2446
	.byte	0x5
	.uleb128 0x3c8
	.long	.LASF2447
	.byte	0x5
	.uleb128 0x3c9
	.long	.LASF2448
	.byte	0x5
	.uleb128 0x3ca
	.long	.LASF2449
	.byte	0x5
	.uleb128 0x3cb
	.long	.LASF2450
	.byte	0x5
	.uleb128 0x3cc
	.long	.LASF2451
	.byte	0x5
	.uleb128 0x3cd
	.long	.LASF2452
	.byte	0x5
	.uleb128 0x3ce
	.long	.LASF2453
	.byte	0x5
	.uleb128 0x3cf
	.long	.LASF2454
	.byte	0x5
	.uleb128 0x3d0
	.long	.LASF2455
	.byte	0x5
	.uleb128 0x3d1
	.long	.LASF2456
	.byte	0x5
	.uleb128 0x3d2
	.long	.LASF2457
	.byte	0x5
	.uleb128 0x3d3
	.long	.LASF2458
	.byte	0x5
	.uleb128 0x3d4
	.long	.LASF2459
	.byte	0x5
	.uleb128 0x3d5
	.long	.LASF2460
	.byte	0x5
	.uleb128 0x3d6
	.long	.LASF2461
	.byte	0x5
	.uleb128 0x3d7
	.long	.LASF2462
	.byte	0x5
	.uleb128 0x3d8
	.long	.LASF2463
	.byte	0x5
	.uleb128 0x3d9
	.long	.LASF2464
	.byte	0x5
	.uleb128 0x3da
	.long	.LASF2465
	.byte	0x5
	.uleb128 0x3db
	.long	.LASF2466
	.byte	0x5
	.uleb128 0x3dc
	.long	.LASF2467
	.byte	0x5
	.uleb128 0x3dd
	.long	.LASF2468
	.byte	0x5
	.uleb128 0x3de
	.long	.LASF2469
	.byte	0x5
	.uleb128 0x3df
	.long	.LASF2470
	.byte	0x5
	.uleb128 0x3e0
	.long	.LASF2471
	.byte	0x5
	.uleb128 0x3e1
	.long	.LASF2472
	.byte	0x5
	.uleb128 0x3e2
	.long	.LASF2473
	.byte	0x5
	.uleb128 0x3e3
	.long	.LASF2474
	.byte	0x5
	.uleb128 0x3e4
	.long	.LASF2475
	.byte	0x5
	.uleb128 0x3e5
	.long	.LASF2476
	.byte	0x5
	.uleb128 0x3e6
	.long	.LASF2477
	.byte	0x5
	.uleb128 0x3e7
	.long	.LASF2478
	.byte	0x5
	.uleb128 0x3e8
	.long	.LASF2479
	.byte	0x5
	.uleb128 0x3e9
	.long	.LASF2480
	.byte	0x5
	.uleb128 0x3ec
	.long	.LASF2481
	.byte	0x5
	.uleb128 0x3ed
	.long	.LASF2482
	.byte	0x5
	.uleb128 0x3f0
	.long	.LASF2483
	.byte	0x5
	.uleb128 0x3f1
	.long	.LASF2484
	.byte	0x5
	.uleb128 0x3f2
	.long	.LASF2485
	.byte	0x5
	.uleb128 0x3f3
	.long	.LASF2486
	.byte	0x5
	.uleb128 0x3f4
	.long	.LASF2487
	.byte	0x5
	.uleb128 0x3f5
	.long	.LASF2488
	.byte	0x5
	.uleb128 0x3f6
	.long	.LASF2489
	.byte	0x5
	.uleb128 0x3f7
	.long	.LASF2490
	.byte	0x5
	.uleb128 0x3f8
	.long	.LASF2491
	.byte	0x5
	.uleb128 0x3f9
	.long	.LASF2492
	.byte	0x5
	.uleb128 0x3fa
	.long	.LASF2493
	.byte	0x5
	.uleb128 0x3fb
	.long	.LASF2494
	.byte	0x5
	.uleb128 0x3fc
	.long	.LASF2495
	.byte	0x5
	.uleb128 0x3fd
	.long	.LASF2496
	.byte	0x5
	.uleb128 0x3fe
	.long	.LASF2497
	.byte	0x5
	.uleb128 0x3ff
	.long	.LASF2498
	.byte	0x5
	.uleb128 0x400
	.long	.LASF2499
	.byte	0x5
	.uleb128 0x401
	.long	.LASF2500
	.byte	0x5
	.uleb128 0x402
	.long	.LASF2501
	.byte	0x5
	.uleb128 0x403
	.long	.LASF2502
	.byte	0x5
	.uleb128 0x404
	.long	.LASF2503
	.byte	0x5
	.uleb128 0x405
	.long	.LASF2504
	.byte	0x5
	.uleb128 0x406
	.long	.LASF2505
	.byte	0x5
	.uleb128 0x407
	.long	.LASF2506
	.byte	0x5
	.uleb128 0x408
	.long	.LASF2507
	.byte	0x5
	.uleb128 0x409
	.long	.LASF2508
	.byte	0x5
	.uleb128 0x40a
	.long	.LASF2509
	.byte	0x5
	.uleb128 0x40b
	.long	.LASF2510
	.byte	0x5
	.uleb128 0x40c
	.long	.LASF2511
	.byte	0x5
	.uleb128 0x40d
	.long	.LASF2512
	.byte	0x5
	.uleb128 0x40e
	.long	.LASF2513
	.byte	0x5
	.uleb128 0x40f
	.long	.LASF2514
	.byte	0x5
	.uleb128 0x410
	.long	.LASF2515
	.byte	0x5
	.uleb128 0x411
	.long	.LASF2516
	.byte	0x5
	.uleb128 0x412
	.long	.LASF2517
	.byte	0x5
	.uleb128 0x413
	.long	.LASF2518
	.byte	0x5
	.uleb128 0x414
	.long	.LASF2519
	.byte	0x5
	.uleb128 0x415
	.long	.LASF2520
	.byte	0x5
	.uleb128 0x416
	.long	.LASF2521
	.byte	0x5
	.uleb128 0x417
	.long	.LASF2522
	.byte	0x5
	.uleb128 0x418
	.long	.LASF2523
	.byte	0x5
	.uleb128 0x419
	.long	.LASF2524
	.byte	0x5
	.uleb128 0x41a
	.long	.LASF2525
	.byte	0x5
	.uleb128 0x41b
	.long	.LASF2526
	.byte	0x5
	.uleb128 0x41c
	.long	.LASF2527
	.byte	0x5
	.uleb128 0x41d
	.long	.LASF2528
	.byte	0x5
	.uleb128 0x41e
	.long	.LASF2529
	.byte	0x5
	.uleb128 0x41f
	.long	.LASF2530
	.byte	0x5
	.uleb128 0x420
	.long	.LASF2531
	.byte	0x5
	.uleb128 0x421
	.long	.LASF2532
	.byte	0x5
	.uleb128 0x422
	.long	.LASF2533
	.byte	0x5
	.uleb128 0x423
	.long	.LASF2534
	.byte	0x5
	.uleb128 0x424
	.long	.LASF2535
	.byte	0x5
	.uleb128 0x425
	.long	.LASF2536
	.byte	0x5
	.uleb128 0x426
	.long	.LASF2537
	.byte	0x5
	.uleb128 0x429
	.long	.LASF2538
	.byte	0x5
	.uleb128 0x42a
	.long	.LASF2539
	.byte	0x5
	.uleb128 0x42b
	.long	.LASF2540
	.byte	0x5
	.uleb128 0x42c
	.long	.LASF2541
	.byte	0x5
	.uleb128 0x42d
	.long	.LASF2542
	.byte	0x5
	.uleb128 0x42e
	.long	.LASF2543
	.byte	0x5
	.uleb128 0x42f
	.long	.LASF2544
	.byte	0x5
	.uleb128 0x432
	.long	.LASF2545
	.byte	0x5
	.uleb128 0x435
	.long	.LASF2546
	.byte	0x5
	.uleb128 0x436
	.long	.LASF2547
	.byte	0x5
	.uleb128 0x437
	.long	.LASF2548
	.byte	0x5
	.uleb128 0x438
	.long	.LASF2549
	.byte	0x5
	.uleb128 0x439
	.long	.LASF2550
	.byte	0x5
	.uleb128 0x43a
	.long	.LASF2551
	.byte	0x5
	.uleb128 0x43b
	.long	.LASF2552
	.byte	0x5
	.uleb128 0x43c
	.long	.LASF2553
	.byte	0x5
	.uleb128 0x43d
	.long	.LASF2554
	.byte	0x5
	.uleb128 0x43e
	.long	.LASF2555
	.byte	0x5
	.uleb128 0x43f
	.long	.LASF2556
	.byte	0x5
	.uleb128 0x440
	.long	.LASF2557
	.byte	0x5
	.uleb128 0x441
	.long	.LASF2558
	.byte	0x5
	.uleb128 0x442
	.long	.LASF2559
	.byte	0x5
	.uleb128 0x443
	.long	.LASF2560
	.byte	0x5
	.uleb128 0x444
	.long	.LASF2561
	.byte	0x5
	.uleb128 0x445
	.long	.LASF2562
	.byte	0x5
	.uleb128 0x446
	.long	.LASF2563
	.byte	0x5
	.uleb128 0x447
	.long	.LASF2564
	.byte	0x5
	.uleb128 0x448
	.long	.LASF2565
	.byte	0x5
	.uleb128 0x449
	.long	.LASF2566
	.byte	0x5
	.uleb128 0x44c
	.long	.LASF2567
	.byte	0x5
	.uleb128 0x44d
	.long	.LASF2568
	.byte	0x5
	.uleb128 0x44e
	.long	.LASF2569
	.byte	0x5
	.uleb128 0x44f
	.long	.LASF2570
	.byte	0x5
	.uleb128 0x450
	.long	.LASF2571
	.byte	0x5
	.uleb128 0x451
	.long	.LASF2572
	.byte	0x5
	.uleb128 0x452
	.long	.LASF2573
	.byte	0x5
	.uleb128 0x453
	.long	.LASF2574
	.byte	0x5
	.uleb128 0x454
	.long	.LASF2575
	.byte	0x5
	.uleb128 0x455
	.long	.LASF2576
	.byte	0x5
	.uleb128 0x456
	.long	.LASF2577
	.byte	0x5
	.uleb128 0x459
	.long	.LASF2578
	.byte	0x5
	.uleb128 0x45a
	.long	.LASF2579
	.byte	0x5
	.uleb128 0x45b
	.long	.LASF2580
	.byte	0x5
	.uleb128 0x45e
	.long	.LASF2581
	.byte	0x5
	.uleb128 0x45f
	.long	.LASF2582
	.byte	0x5
	.uleb128 0x460
	.long	.LASF2583
	.byte	0x5
	.uleb128 0x461
	.long	.LASF2584
	.byte	0x5
	.uleb128 0x462
	.long	.LASF2585
	.byte	0x5
	.uleb128 0x463
	.long	.LASF2586
	.byte	0x5
	.uleb128 0x464
	.long	.LASF2587
	.byte	0x5
	.uleb128 0x465
	.long	.LASF2588
	.byte	0x5
	.uleb128 0x466
	.long	.LASF2589
	.byte	0x5
	.uleb128 0x467
	.long	.LASF2590
	.byte	0x5
	.uleb128 0x468
	.long	.LASF2591
	.byte	0x5
	.uleb128 0x469
	.long	.LASF2592
	.byte	0x5
	.uleb128 0x46c
	.long	.LASF2593
	.byte	0x5
	.uleb128 0x46d
	.long	.LASF2594
	.byte	0x5
	.uleb128 0x46e
	.long	.LASF2595
	.byte	0x5
	.uleb128 0x46f
	.long	.LASF2596
	.byte	0x5
	.uleb128 0x470
	.long	.LASF2597
	.byte	0x5
	.uleb128 0x471
	.long	.LASF2598
	.byte	0x5
	.uleb128 0x472
	.long	.LASF2599
	.byte	0x5
	.uleb128 0x473
	.long	.LASF2600
	.byte	0x5
	.uleb128 0x474
	.long	.LASF2601
	.byte	0x5
	.uleb128 0x475
	.long	.LASF2602
	.byte	0x5
	.uleb128 0x476
	.long	.LASF2603
	.byte	0x5
	.uleb128 0x477
	.long	.LASF2604
	.byte	0x5
	.uleb128 0x478
	.long	.LASF2605
	.byte	0x5
	.uleb128 0x479
	.long	.LASF2606
	.byte	0x5
	.uleb128 0x47a
	.long	.LASF2607
	.byte	0x5
	.uleb128 0x47d
	.long	.LASF2608
	.byte	0x5
	.uleb128 0x47e
	.long	.LASF2609
	.byte	0x5
	.uleb128 0x47f
	.long	.LASF2610
	.byte	0x5
	.uleb128 0x480
	.long	.LASF2611
	.byte	0x5
	.uleb128 0x481
	.long	.LASF2612
	.byte	0x5
	.uleb128 0x482
	.long	.LASF2613
	.byte	0x5
	.uleb128 0x483
	.long	.LASF2614
	.byte	0x5
	.uleb128 0x484
	.long	.LASF2615
	.byte	0x5
	.uleb128 0x485
	.long	.LASF2616
	.byte	0x5
	.uleb128 0x486
	.long	.LASF2617
	.byte	0x5
	.uleb128 0x487
	.long	.LASF2618
	.byte	0x5
	.uleb128 0x488
	.long	.LASF2619
	.byte	0x5
	.uleb128 0x489
	.long	.LASF2620
	.byte	0x5
	.uleb128 0x48a
	.long	.LASF2621
	.byte	0x5
	.uleb128 0x48b
	.long	.LASF2622
	.byte	0x5
	.uleb128 0x48c
	.long	.LASF2623
	.byte	0x5
	.uleb128 0x48d
	.long	.LASF2624
	.byte	0x5
	.uleb128 0x48e
	.long	.LASF2625
	.byte	0x5
	.uleb128 0x48f
	.long	.LASF2626
	.byte	0x5
	.uleb128 0x490
	.long	.LASF2627
	.byte	0x5
	.uleb128 0x491
	.long	.LASF2628
	.byte	0x5
	.uleb128 0x492
	.long	.LASF2629
	.byte	0x5
	.uleb128 0x493
	.long	.LASF2630
	.byte	0x5
	.uleb128 0x494
	.long	.LASF2631
	.byte	0x5
	.uleb128 0x495
	.long	.LASF2632
	.byte	0x5
	.uleb128 0x496
	.long	.LASF2633
	.byte	0x5
	.uleb128 0x497
	.long	.LASF2634
	.byte	0x5
	.uleb128 0x498
	.long	.LASF2635
	.byte	0x5
	.uleb128 0x499
	.long	.LASF2636
	.byte	0x5
	.uleb128 0x49a
	.long	.LASF2637
	.byte	0x5
	.uleb128 0x49b
	.long	.LASF2638
	.byte	0x5
	.uleb128 0x49c
	.long	.LASF2639
	.byte	0x5
	.uleb128 0x49d
	.long	.LASF2640
	.byte	0x5
	.uleb128 0x49e
	.long	.LASF2641
	.byte	0x5
	.uleb128 0x49f
	.long	.LASF2642
	.byte	0x5
	.uleb128 0x4a0
	.long	.LASF2643
	.byte	0x5
	.uleb128 0x4a1
	.long	.LASF2644
	.byte	0x5
	.uleb128 0x4a2
	.long	.LASF2645
	.byte	0x5
	.uleb128 0x4a5
	.long	.LASF2646
	.byte	0x5
	.uleb128 0x4a6
	.long	.LASF2647
	.byte	0x5
	.uleb128 0x4a7
	.long	.LASF2648
	.byte	0x5
	.uleb128 0x4a8
	.long	.LASF2649
	.byte	0x5
	.uleb128 0x4a9
	.long	.LASF2650
	.byte	0x5
	.uleb128 0x4aa
	.long	.LASF2651
	.byte	0x5
	.uleb128 0x4ab
	.long	.LASF2652
	.byte	0x5
	.uleb128 0x4ac
	.long	.LASF2653
	.byte	0x5
	.uleb128 0x4ad
	.long	.LASF2654
	.byte	0x5
	.uleb128 0x4ae
	.long	.LASF2655
	.byte	0x5
	.uleb128 0x4af
	.long	.LASF2656
	.byte	0x5
	.uleb128 0x4b0
	.long	.LASF2657
	.byte	0x5
	.uleb128 0x4b1
	.long	.LASF2658
	.byte	0x5
	.uleb128 0x4b2
	.long	.LASF2659
	.byte	0x5
	.uleb128 0x4b3
	.long	.LASF2660
	.byte	0x5
	.uleb128 0x4b4
	.long	.LASF2661
	.byte	0x5
	.uleb128 0x4b5
	.long	.LASF2662
	.byte	0x5
	.uleb128 0x4b6
	.long	.LASF2663
	.byte	0x5
	.uleb128 0x4b7
	.long	.LASF2664
	.byte	0x5
	.uleb128 0x4b8
	.long	.LASF2665
	.byte	0x5
	.uleb128 0x4b9
	.long	.LASF2666
	.byte	0x5
	.uleb128 0x4ba
	.long	.LASF2667
	.byte	0x5
	.uleb128 0x4bb
	.long	.LASF2668
	.byte	0x5
	.uleb128 0x4bc
	.long	.LASF2669
	.byte	0x5
	.uleb128 0x4bd
	.long	.LASF2670
	.byte	0x5
	.uleb128 0x4c0
	.long	.LASF2671
	.byte	0x5
	.uleb128 0x4c1
	.long	.LASF2672
	.byte	0x5
	.uleb128 0x4c2
	.long	.LASF2673
	.byte	0x5
	.uleb128 0x4c3
	.long	.LASF2674
	.byte	0x5
	.uleb128 0x4c4
	.long	.LASF2675
	.byte	0x5
	.uleb128 0x4c5
	.long	.LASF2676
	.byte	0x5
	.uleb128 0x4c6
	.long	.LASF2677
	.byte	0x5
	.uleb128 0x4c7
	.long	.LASF2678
	.byte	0x5
	.uleb128 0x4c8
	.long	.LASF2679
	.byte	0x5
	.uleb128 0x4c9
	.long	.LASF2680
	.byte	0x5
	.uleb128 0x4cc
	.long	.LASF2681
	.byte	0x5
	.uleb128 0x4cd
	.long	.LASF2682
	.byte	0x5
	.uleb128 0x4ce
	.long	.LASF2683
	.byte	0x5
	.uleb128 0x4cf
	.long	.LASF2684
	.byte	0x5
	.uleb128 0x4d0
	.long	.LASF2685
	.byte	0x5
	.uleb128 0x4d1
	.long	.LASF2686
	.byte	0x5
	.uleb128 0x4d2
	.long	.LASF2687
	.byte	0x5
	.uleb128 0x4d3
	.long	.LASF2688
	.byte	0x5
	.uleb128 0x4d4
	.long	.LASF2689
	.byte	0x5
	.uleb128 0x4d7
	.long	.LASF2690
	.byte	0x5
	.uleb128 0x4d8
	.long	.LASF2691
	.byte	0x5
	.uleb128 0x4d9
	.long	.LASF2692
	.byte	0x5
	.uleb128 0x4da
	.long	.LASF2693
	.byte	0x5
	.uleb128 0x4db
	.long	.LASF2694
	.byte	0x5
	.uleb128 0x4dc
	.long	.LASF2695
	.byte	0x5
	.uleb128 0x4dd
	.long	.LASF2696
	.byte	0x5
	.uleb128 0x4e0
	.long	.LASF2697
	.byte	0x5
	.uleb128 0x4e1
	.long	.LASF2698
	.byte	0x5
	.uleb128 0x4e2
	.long	.LASF2699
	.byte	0x5
	.uleb128 0x4e3
	.long	.LASF2700
	.byte	0x5
	.uleb128 0x4e4
	.long	.LASF2701
	.byte	0x5
	.uleb128 0x4e5
	.long	.LASF2702
	.byte	0x5
	.uleb128 0x4e6
	.long	.LASF2703
	.byte	0x5
	.uleb128 0x4e7
	.long	.LASF2704
	.byte	0x5
	.uleb128 0x4e8
	.long	.LASF2705
	.byte	0x5
	.uleb128 0x4e9
	.long	.LASF2706
	.byte	0x5
	.uleb128 0x4ea
	.long	.LASF2707
	.byte	0x5
	.uleb128 0x4eb
	.long	.LASF2708
	.byte	0x5
	.uleb128 0x4ec
	.long	.LASF2709
	.byte	0x5
	.uleb128 0x4ed
	.long	.LASF2710
	.byte	0x5
	.uleb128 0x4ee
	.long	.LASF2711
	.byte	0x5
	.uleb128 0x4ef
	.long	.LASF2712
	.byte	0x5
	.uleb128 0x4f0
	.long	.LASF2713
	.byte	0x5
	.uleb128 0x4f1
	.long	.LASF2714
	.byte	0x5
	.uleb128 0x4f2
	.long	.LASF2715
	.byte	0x5
	.uleb128 0x4f5
	.long	.LASF2716
	.byte	0x5
	.uleb128 0x4f6
	.long	.LASF2717
	.byte	0x5
	.uleb128 0x4f7
	.long	.LASF2718
	.byte	0x5
	.uleb128 0x4f8
	.long	.LASF2719
	.byte	0x5
	.uleb128 0x4f9
	.long	.LASF2720
	.byte	0x5
	.uleb128 0x4fa
	.long	.LASF2721
	.byte	0x5
	.uleb128 0x4fb
	.long	.LASF2722
	.byte	0x5
	.uleb128 0x4fc
	.long	.LASF2723
	.byte	0x5
	.uleb128 0x4fd
	.long	.LASF2724
	.byte	0x5
	.uleb128 0x4fe
	.long	.LASF2725
	.byte	0x5
	.uleb128 0x4ff
	.long	.LASF2726
	.byte	0x5
	.uleb128 0x500
	.long	.LASF2727
	.byte	0x5
	.uleb128 0x501
	.long	.LASF2728
	.byte	0x5
	.uleb128 0x502
	.long	.LASF2729
	.byte	0x5
	.uleb128 0x503
	.long	.LASF2730
	.byte	0x5
	.uleb128 0x504
	.long	.LASF2731
	.byte	0x5
	.uleb128 0x505
	.long	.LASF2732
	.byte	0x5
	.uleb128 0x506
	.long	.LASF2733
	.byte	0x5
	.uleb128 0x507
	.long	.LASF2734
	.byte	0x5
	.uleb128 0x508
	.long	.LASF2735
	.byte	0x5
	.uleb128 0x509
	.long	.LASF2736
	.byte	0x5
	.uleb128 0x50a
	.long	.LASF2737
	.byte	0x5
	.uleb128 0x50d
	.long	.LASF2738
	.byte	0x5
	.uleb128 0x50e
	.long	.LASF2739
	.byte	0x5
	.uleb128 0x50f
	.long	.LASF2740
	.byte	0x5
	.uleb128 0x510
	.long	.LASF2741
	.byte	0x5
	.uleb128 0x511
	.long	.LASF2742
	.byte	0x5
	.uleb128 0x514
	.long	.LASF2743
	.byte	0x5
	.uleb128 0x517
	.long	.LASF2744
	.byte	0x5
	.uleb128 0x518
	.long	.LASF2745
	.byte	0x5
	.uleb128 0x51b
	.long	.LASF2746
	.byte	0x5
	.uleb128 0x51c
	.long	.LASF2747
	.byte	0x5
	.uleb128 0x51d
	.long	.LASF2748
	.byte	0x5
	.uleb128 0x51e
	.long	.LASF2749
	.byte	0x5
	.uleb128 0x51f
	.long	.LASF2750
	.byte	0x5
	.uleb128 0x520
	.long	.LASF2751
	.byte	0x5
	.uleb128 0x521
	.long	.LASF2752
	.byte	0x5
	.uleb128 0x522
	.long	.LASF2753
	.byte	0x5
	.uleb128 0x523
	.long	.LASF2754
	.byte	0x5
	.uleb128 0x524
	.long	.LASF2755
	.byte	0x5
	.uleb128 0x525
	.long	.LASF2756
	.byte	0x5
	.uleb128 0x526
	.long	.LASF2757
	.byte	0x5
	.uleb128 0x527
	.long	.LASF2758
	.byte	0x5
	.uleb128 0x528
	.long	.LASF2759
	.byte	0x5
	.uleb128 0x529
	.long	.LASF2760
	.byte	0x5
	.uleb128 0x52a
	.long	.LASF2761
	.byte	0x5
	.uleb128 0x52b
	.long	.LASF2762
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF881:
	.string	"PRIxPTR __PRIPTR_PREFIX \"x\""
.LASF3307:
	.string	"padding2"
.LASF3308:
	.string	"padding3"
.LASF2611:
	.string	"SDL_RenderCopyExF SDL_RenderCopyExF_renamed_SDL_RenderTextureRotated"
.LASF863:
	.string	"PRIXLEAST8 \"X\""
.LASF2791:
	.string	"Uint32"
.LASF676:
	.string	"INT_FAST8_MIN (-128)"
.LASF1770:
	.string	"SDL_HAPTIC_PAUSE (1u<<19)"
.LASF2018:
	.string	"SDL_INIT_HAPTIC 0x00001000u"
.LASF2153:
	.string	"SDL_MS_PER_SECOND 1000"
.LASF503:
	.string	"__REDIRECT(name,proto,alias) name proto __asm__ (__ASMNAME (#alias))"
.LASF3200:
	.string	"SDL_EVENT_WINDOW_DISPLAY_CHANGED"
.LASF3424:
	.string	"SDL_LOG_CATEGORY_CUSTOM"
.LASF2769:
	.string	"unsigned char"
.LASF2029:
	.string	"SDL_PROP_APP_METADATA_TYPE_STRING \"SDL.app.metadata.type\""
.LASF3419:
	.string	"SDL_LOG_CATEGORY_RESERVED6"
.LASF799:
	.string	"PRId8 \"d\""
.LASF1703:
	.string	"SDL_GPU_TEXTUREUSAGE_SAMPLER (1u << 0)"
.LASF3161:
	.string	"SDL_PEN_AXIS_TANGENTIAL_PRESSURE"
.LASF3421:
	.string	"SDL_LOG_CATEGORY_RESERVED8"
.LASF3422:
	.string	"SDL_LOG_CATEGORY_RESERVED9"
.LASF1951:
	.string	"SDL_HINT_TIMER_RESOLUTION \"SDL_TIMER_RESOLUTION\""
.LASF3297:
	.string	"SDL_TextEditingEvent"
.LASF3240:
	.string	"SDL_EVENT_GAMEPAD_TOUCHPAD_MOTION"
.LASF2561:
	.string	"SDL_SYSTEM_CURSOR_WINDOW_BOTTOMRIGHT SDL_SYSTEM_CURSOR_WINDOW_BOTTOMRIGHT_renamed_SDL_SYSTEM_CURSOR_SE_RESIZE"
.LASF1201:
	.string	"SDL_ISPIXELFORMAT_PACKED(format) (!SDL_ISPIXELFORMAT_FOURCC(format) && ((SDL_PIXELTYPE(format) == SDL_PIXELTYPE_PACKED8) || (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_PACKED16) || (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_PACKED32)))"
.LASF160:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF344:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF2130:
	.string	"SDL_PROP_TEXTURE_D3D12_TEXTURE_POINTER \"SDL.texture.d3d12.texture\""
.LASF2405:
	.string	"SDL_GUIDFromString SDL_GUIDFromString_renamed_SDL_StringToGUID"
.LASF3071:
	.string	"SDL_SCANCODE_KP_POWER"
.LASF3136:
	.string	"SDL_SCANCODE_SOFTLEFT"
.LASF2849:
	.string	"SDL_PIXELFORMAT_ABGR128_FLOAT"
.LASF1168:
	.string	"SDL_AUDIO_ISBIGENDIAN(x) ((x) & SDL_AUDIO_MASK_BIG_ENDIAN)"
.LASF2329:
	.string	"SDL_CONTROLLER_BUTTON_MAX SDL_CONTROLLER_BUTTON_MAX_renamed_SDL_GAMEPAD_BUTTON_COUNT"
.LASF2594:
	.string	"SDL_EnclosePoints SDL_EnclosePoints_renamed_SDL_GetRectEnclosingPoints"
.LASF121:
	.string	"__INT32_C(c) c"
.LASF2960:
	.string	"SDL_SCANCODE_PRINTSCREEN"
.LASF1502:
	.string	"SDLK_KP_ENTER 0x40000058u"
.LASF608:
	.string	"__MODE_T_TYPE __U32_TYPE"
.LASF3434:
	.string	"SDL_RenderClear"
.LASF918:
	.string	"SCNuFAST64 __PRI64_PREFIX \"u\""
.LASF3288:
	.string	"data2"
.LASF3144:
	.string	"SDL_KeyboardID"
.LASF1096:
	.string	"SDL_FLOATWORDORDER SDL_LIL_ENDIAN"
.LASF1189:
	.string	"SDL_ALPHA_OPAQUE_FLOAT 1.0f"
.LASF3080:
	.string	"SDL_SCANCODE_KP_HASH"
.LASF2767:
	.string	"long unsigned int"
.LASF123:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF770:
	.string	"__wchar_t__ "
.LASF3215:
	.string	"SDL_EVENT_KEYBOARD_ADDED"
.LASF2165:
	.string	"SDL_TRAYENTRY_BUTTON 0x00000001u"
.LASF895:
	.string	"SCNi8 \"hhi\""
.LASF3156:
	.string	"SDL_PEN_AXIS_XTILT"
.LASF363:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF1790:
	.string	"SDL_HINT_AUDIO_CATEGORY \"SDL_AUDIO_CATEGORY\""
.LASF2035:
	.string	"SDL_MESSAGEBOX_WARNING 0x00000020u"
.LASF277:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF889:
	.string	"SCNdLEAST32 \"d\""
.LASF3114:
	.string	"SDL_SCANCODE_MEDIA_FAST_FORWARD"
.LASF2776:
	.string	"__int32_t"
.LASF3101:
	.string	"SDL_SCANCODE_LGUI"
.LASF1895:
	.string	"SDL_HINT_JOYSTICK_WGI \"SDL_JOYSTICK_WGI\""
.LASF408:
	.string	"__need___va_list"
.LASF1420:
	.string	"SDLK_3 0x00000033u"
.LASF643:
	.string	"__TIME64_T_TYPE __TIME_T_TYPE"
.LASF2004:
	.string	"SDL_HINT_WINDOWS_INTRESOURCE_ICON_SMALL \"SDL_WINDOWS_INTRESOURCE_ICON_SMALL\""
.LASF1512:
	.string	"SDLK_KP_0 0x40000062u"
.LASF2401:
	.string	"SDL_GameControllerType SDL_GameControllerType_renamed_SDL_GamepadType"
.LASF2690:
	.string	"SDL_FALSE SDL_FALSE_renamed_false"
.LASF275:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF833:
	.string	"PRIoFAST32 __PRIPTR_PREFIX \"o\""
.LASF857:
	.string	"PRIxFAST32 __PRIPTR_PREFIX \"x\""
.LASF980:
	.string	"SDL_MAX_UINT32 ((Uint32)0xFFFFFFFFu)"
.LASF1792:
	.string	"SDL_HINT_AUDIO_DEVICE_APP_ICON_NAME \"SDL_AUDIO_DEVICE_APP_ICON_NAME\""
.LASF1729:
	.string	"SDL_PROP_GPU_DEVICE_CREATE_NAME_STRING \"SDL.gpu.device.create.name\""
.LASF1067:
	.string	"SDL_disabled_assert(condition) do { (void) sizeof ((condition)); } while (SDL_NULL_WHILE_LOOP_CONDITION)"
.LASF2343:
	.string	"SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_JOYCON_RIGHT SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_JOYCON_RIGHT_renamed_SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_RIGHT"
.LASF336:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF2708:
	.string	"SDL_LowerBlitScaled SDL_LowerBlitScaled_renamed_SDL_BlitSurfaceUncheckedScaled"
.LASF2513:
	.string	"SDLK_b SDLK_b_renamed_SDLK_B"
.LASF937:
	.string	"SCNxLEAST32 \"x\""
.LASF1398:
	.string	"SDLK_ESCAPE 0x0000001bu"
.LASF1088:
	.string	"__LITTLE_ENDIAN 1234"
.LASF2203:
	.string	"AUDIO_S32SYS AUDIO_S32SYS_renamed_SDL_AUDIO_S32"
.LASF2332:
	.string	"SDL_CONTROLLER_BUTTON_PADDLE2 SDL_CONTROLLER_BUTTON_PADDLE2_renamed_SDL_GAMEPAD_BUTTON_LEFT_PADDLE1"
.LASF1467:
	.string	"SDLK_PIPE 0x0000007cu"
.LASF3294:
	.string	"scancode"
.LASF740:
	.string	"_BITS_FLOATN_H "
.LASF2665:
	.string	"SDL_WriteBE16 SDL_WriteBE16_renamed_SDL_WriteU16BE"
.LASF2792:
	.string	"Uint64"
.LASF981:
	.string	"SDL_MIN_UINT32 ((Uint32)0x00000000)"
.LASF2032:
	.string	"SDL_log_h_ "
.LASF1630:
	.string	"SDLK_AC_EXIT 0x40000114u"
.LASF1195:
	.string	"SDL_PIXELTYPE(format) (((format) >> 24) & 0x0F)"
.LASF1913:
	.string	"SDL_HINT_MOUSE_EMULATE_WARP_WITH_RELATIVE \"SDL_MOUSE_EMULATE_WARP_WITH_RELATIVE\""
.LASF1905:
	.string	"SDL_HINT_MAC_OPENGL_ASYNC_DISPATCH \"SDL_MAC_OPENGL_ASYNC_DISPATCH\""
.LASF886:
	.string	"SCNd64 __PRI64_PREFIX \"d\""
.LASF1522:
	.string	"SDLK_F18 0x4000006du"
.LASF2377:
	.string	"SDL_GameControllerGetSensorDataRate SDL_GameControllerGetSensorDataRate_renamed_SDL_GetGamepadSensorDataRate"
.LASF296:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF1560:
	.string	"SDLK_DECIMALSEPARATOR 0x400000b3u"
.LASF2092:
	.string	"SDL_PROP_RENDERER_VULKAN_DEVICE_POINTER \"SDL.renderer.vulkan.device\""
.LASF530:
	.string	"__extern_inline extern __inline __attribute__ ((__gnu_inline__))"
.LASF3430:
	.string	"SDL_RenderPresent"
.LASF2711:
	.string	"SDL_SaveBMP_RW SDL_SaveBMP_RW_renamed_SDL_SaveBMP_IO"
.LASF1234:
	.string	"SDL_dialog_h_ "
.LASF838:
	.string	"PRIu64 __PRI64_PREFIX \"u\""
.LASF1984:
	.string	"SDL_HINT_VITA_RESOLUTION \"SDL_VITA_RESOLUTION\""
.LASF2107:
	.string	"SDL_PROP_TEXTURE_CREATE_D3D12_TEXTURE_POINTER \"SDL.texture.create.d3d12.texture\""
.LASF142:
	.string	"__UINT_FAST8_MAX__ 0xff"
.LASF870:
	.string	"PRIXFAST64 __PRI64_PREFIX \"X\""
.LASF2868:
	.string	"SDL_PixelFormat"
.LASF1226:
	.string	"SDL_PROP_SURFACE_SDR_WHITE_POINT_FLOAT \"SDL.surface.SDR_white_point\""
.LASF1940:
	.string	"SDL_HINT_RENDER_VSYNC \"SDL_RENDER_VSYNC\""
.LASF713:
	.string	"_GCC_WRAP_STDINT_H "
.LASF1912:
	.string	"SDL_HINT_MOUSE_DEFAULT_SYSTEM_CURSOR \"SDL_MOUSE_DEFAULT_SYSTEM_CURSOR\""
.LASF3024:
	.string	"SDL_SCANCODE_INTERNATIONAL3"
.LASF1903:
	.string	"SDL_HINT_MAC_BACKGROUND_APP \"SDL_MAC_BACKGROUND_APP\""
.LASF3157:
	.string	"SDL_PEN_AXIS_YTILT"
.LASF2344:
	.string	"SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_PRO SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_PRO_renamed_SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_PRO"
.LASF982:
	.string	"SDL_MAX_SINT64 SDL_SINT64_C(0x7FFFFFFFFFFFFFFF)"
.LASF2569:
	.string	"SDL_CondWait SDL_CondWait_renamed_SDL_WaitCondition"
.LASF398:
	.string	"__STDC_IEC_559_COMPLEX__ 1"
.LASF1717:
	.string	"SDL_GPU_SHADERFORMAT_PRIVATE (1u << 0)"
.LASF1982:
	.string	"SDL_HINT_VITA_MODULE_PATH \"SDL_VITA_MODULE_PATH\""
.LASF796:
	.string	"____gwchar_t_defined 1"
.LASF1298:
	.string	"SDL_PROP_WINDOW_CREATE_OPENGL_BOOLEAN \"SDL.window.create.opengl\""
.LASF2110:
	.string	"SDL_PROP_TEXTURE_CREATE_METAL_PIXELBUFFER_POINTER \"SDL.texture.create.metal.pixelbuffer\""
.LASF1329:
	.string	"SDL_PROP_WINDOW_KMSDRM_DRM_FD_NUMBER \"SDL.window.kmsdrm.drm_fd\""
.LASF2209:
	.string	"SDL_AudioStreamGet SDL_AudioStreamGet_renamed_SDL_GetAudioStreamData"
.LASF151:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF1575:
	.string	"SDLK_KP_XOR 0x400000c2u"
.LASF40:
	.string	"__GNUC_WIDE_EXECUTION_CHARSET_NAME \"UTF-32LE\""
.LASF2158:
	.string	"SDL_SECONDS_TO_NS(S) (((Uint64)(S)) * SDL_NS_PER_SECOND)"
.LASF21:
	.string	"_LP64 1"
.LASF631:
	.string	"__TIMER_T_TYPE void *"
.LASF490:
	.string	"__STRING(x) #x"
.LASF1839:
	.string	"SDL_HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS \"SDL_JOYSTICK_ALLOW_BACKGROUND_EVENTS\""
.LASF2771:
	.string	"signed char"
.LASF3022:
	.string	"SDL_SCANCODE_INTERNATIONAL1"
.LASF3023:
	.string	"SDL_SCANCODE_INTERNATIONAL2"
.LASF3296:
	.string	"repeat"
.LASF496:
	.string	"__bos0(ptr) __builtin_object_size (ptr, 0)"
.LASF3026:
	.string	"SDL_SCANCODE_INTERNATIONAL5"
.LASF2491:
	.string	"KMOD_MODE KMOD_MODE_renamed_SDL_KMOD_MODE"
.LASF1231:
	.string	"SDL_clipboard_h_ "
.LASF3029:
	.string	"SDL_SCANCODE_INTERNATIONAL8"
.LASF3374:
	.string	"edit_candidates"
.LASF432:
	.string	"__USE_XOPEN"
.LASF3149:
	.string	"SDL_MouseButtonFlags"
.LASF3099:
	.string	"SDL_SCANCODE_LSHIFT"
.LASF1899:
	.string	"SDL_HINT_KEYCODE_OPTIONS \"SDL_KEYCODE_OPTIONS\""
.LASF888:
	.string	"SCNdLEAST16 \"hd\""
.LASF3311:
	.string	"SDL_MouseMotionEvent"
.LASF1076:
	.string	"SDL_CompilerBarrier() __asm__ __volatile__ (\"\" : : : \"memory\")"
.LASF3076:
	.string	"SDL_SCANCODE_KP_DBLAMPERSAND"
.LASF898:
	.string	"SCNi64 __PRI64_PREFIX \"i\""
.LASF1794:
	.string	"SDL_HINT_AUDIO_DEVICE_STREAM_NAME \"SDL_AUDIO_DEVICE_STREAM_NAME\""
.LASF1650:
	.string	"SDLK_LHYPER 0x20000006u"
.LASF2939:
	.string	"SDL_SCANCODE_BACKSLASH"
.LASF1129:
	.string	"SDL_PROP_THREAD_CREATE_STACKSIZE_NUMBER \"SDL.thread.create.stacksize\""
.LASF192:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF70:
	.string	"__UINT_FAST8_TYPE__ unsigned char"
.LASF59:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF2207:
	.string	"SDL_AudioStreamClear SDL_AudioStreamClear_renamed_SDL_ClearAudioStream"
.LASF3321:
	.string	"mouse_x"
.LASF3322:
	.string	"mouse_y"
.LASF3025:
	.string	"SDL_SCANCODE_INTERNATIONAL4"
.LASF1292:
	.string	"SDL_PROP_WINDOW_CREATE_MAXIMIZED_BOOLEAN \"SDL.window.create.maximized\""
.LASF3027:
	.string	"SDL_SCANCODE_INTERNATIONAL6"
.LASF3028:
	.string	"SDL_SCANCODE_INTERNATIONAL7"
.LASF1089:
	.string	"__BIG_ENDIAN 4321"
.LASF3030:
	.string	"SDL_SCANCODE_INTERNATIONAL9"
.LASF2493:
	.string	"KMOD_NUM KMOD_NUM_renamed_SDL_KMOD_NUM"
.LASF1359:
	.string	"SDL_PROP_FILE_DIALOG_TITLE_STRING \"SDL.filedialog.title\""
.LASF2330:
	.string	"SDL_CONTROLLER_BUTTON_MISC1 SDL_CONTROLLER_BUTTON_MISC1_renamed_SDL_GAMEPAD_BUTTON_MISC1"
.LASF2774:
	.string	"short int"
.LASF574:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT_C23"
.LASF2854:
	.string	"SDL_PIXELFORMAT_YVYU"
.LASF1858:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_NINTENDO_CLASSIC \"SDL_JOYSTICK_HIDAPI_NINTENDO_CLASSIC\""
.LASF1801:
	.string	"SDL_HINT_AUDIO_FORMAT \"SDL_AUDIO_FORMAT\""
.LASF1472:
	.string	"SDLK_CAPSLOCK 0x40000039u"
.LASF567:
	.string	"__stub_setlogin "
.LASF61:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF198:
	.string	"__LDBL_EPSILON__ 1.08420217248550443400745280086994171e-19L"
.LASF804:
	.string	"PRIdLEAST16 \"d\""
.LASF3272:
	.string	"SDL_EVENT_RENDER_DEVICE_RESET"
.LASF2354:
	.string	"SDL_GameControllerAddMappingsFromFile SDL_GameControllerAddMappingsFromFile_renamed_SDL_AddGamepadMappingsFromFile"
.LASF988:
	.string	"SDL_FLT_EPSILON 1.1920928955078125e-07F"
.LASF3415:
	.string	"SDL_LOG_CATEGORY_RESERVED2"
.LASF3416:
	.string	"SDL_LOG_CATEGORY_RESERVED3"
.LASF3265:
	.string	"SDL_EVENT_PEN_MOTION"
.LASF3418:
	.string	"SDL_LOG_CATEGORY_RESERVED5"
.LASF120:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF454:
	.string	"__GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))"
.LASF1896:
	.string	"SDL_HINT_JOYSTICK_WHEEL_DEVICES \"SDL_JOYSTICK_WHEEL_DEVICES\""
.LASF502:
	.string	"__glibc_c99_flexarr_available 1"
.LASF1299:
	.string	"SDL_PROP_WINDOW_CREATE_PARENT_POINTER \"SDL.window.create.parent\""
.LASF3259:
	.string	"SDL_EVENT_PEN_PROXIMITY_IN"
.LASF242:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF1023:
	.string	"SDL_FORCE_INLINE __attribute__((always_inline)) static __inline__"
.LASF1602:
	.string	"SDLK_KP_HEXADECIMAL 0x400000ddu"
.LASF790:
	.string	"_WINT_T 1"
.LASF2180:
	.string	"SDL_oldnames_h_ "
.LASF741:
	.string	"__HAVE_FLOAT128 1"
.LASF1659:
	.string	"SDL_KMOD_RALT 0x0200u"
.LASF2012:
	.string	"SDL_HINT_PEN_MOUSE_EVENTS \"SDL_PEN_MOUSE_EVENTS\""
.LASF1938:
	.string	"SDL_HINT_RENDER_LINE_METHOD \"SDL_RENDER_LINE_METHOD\""
.LASF2930:
	.string	"SDL_SCANCODE_RETURN"
.LASF1664:
	.string	"SDL_KMOD_MODE 0x4000u"
.LASF2307:
	.string	"SDL_CONTROLLER_AXIS_LEFTX SDL_CONTROLLER_AXIS_LEFTX_renamed_SDL_GAMEPAD_AXIS_LEFTX"
.LASF143:
	.string	"__UINT_FAST16_MAX__ 0xffffffffffffffffUL"
.LASF2413:
	.string	"SDL_HapticOpen SDL_HapticOpen_renamed_SDL_OpenHaptic"
.LASF2680:
	.string	"SDL_SCANCODE_MEDIASELECT SDL_SCANCODE_MEDIASELECT_renamed_SDL_SCANCODE_MEDIA_SELECT"
.LASF2627:
	.string	"SDL_RendererFlip SDL_RendererFlip_renamed_SDL_FlipMode"
.LASF1937:
	.string	"SDL_HINT_RENDER_DRIVER \"SDL_RENDER_DRIVER\""
.LASF2596:
	.string	"SDL_FRectEquals SDL_FRectEquals_renamed_SDL_RectsEqualFloat"
.LASF2692:
	.string	"SDL_TRUE SDL_TRUE_renamed_true"
.LASF2633:
	.string	"SDL_RenderGetScale SDL_RenderGetScale_renamed_SDL_GetRenderScale"
.LASF2451:
	.string	"SDL_JoystickGetBall SDL_JoystickGetBall_renamed_SDL_GetJoystickBall"
.LASF3198:
	.string	"SDL_EVENT_WINDOW_HIT_TEST"
.LASF49:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF1433:
	.string	"SDLK_AT 0x00000040u"
.LASF3334:
	.string	"SDL_GamepadAxisEvent"
.LASF2105:
	.string	"SDL_PROP_TEXTURE_CREATE_D3D11_TEXTURE_U_POINTER \"SDL.texture.create.d3d11.texture_u\""
.LASF1879:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_XBOX_360_PLAYER_LED \"SDL_JOYSTICK_HIDAPI_XBOX_360_PLAYER_LED\""
.LASF1726:
	.string	"SDL_GPU_COLORCOMPONENT_A (1u << 3)"
.LASF452:
	.string	"__GLIBC_USE_C23_STRTOL"
.LASF1114:
	.string	"SDL_Swap64BE(x) SDL_Swap64(x)"
.LASF1403:
	.string	"SDLK_DBLAPOSTROPHE 0x00000022u"
.LASF3270:
	.string	"SDL_EVENT_CAMERA_DEVICE_DENIED"
.LASF1228:
	.string	"SDL_PROP_SURFACE_TONEMAP_OPERATOR_STRING \"SDL.surface.tonemap\""
.LASF2648:
	.string	"RW_SEEK_SET RW_SEEK_SET_renamed_SDL_IO_SEEK_SET"
.LASF1302:
	.string	"SDL_PROP_WINDOW_CREATE_TRANSPARENT_BOOLEAN \"SDL.window.create.transparent\""
.LASF1417:
	.string	"SDLK_0 0x00000030u"
.LASF1925:
	.string	"SDL_HINT_EGL_LIBRARY \"SDL_EGL_LIBRARY\""
.LASF1531:
	.string	"SDLK_MENU 0x40000076u"
.LASF1862:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_PS4_REPORT_INTERVAL \"SDL_JOYSTICK_HIDAPI_PS4_REPORT_INTERVAL\""
.LASF1948:
	.string	"SDL_HINT_STORAGE_USER_DRIVER \"SDL_STORAGE_USER_DRIVER\""
.LASF1000:
	.string	"SDL_PRILLx SDL_PRILL_PREFIX \"x\""
.LASF2177:
	.string	"SDL_VERSIONNUM_MICRO(version) ((version) % 1000)"
.LASF2132:
	.string	"SDL_PROP_TEXTURE_D3D12_TEXTURE_V_POINTER \"SDL.texture.d3d12.texture_v\""
.LASF3266:
	.string	"SDL_EVENT_PEN_AXIS"
.LASF2195:
	.string	"AUDIO_F32SYS AUDIO_F32SYS_renamed_SDL_AUDIO_F32"
.LASF996:
	.string	"SDL_PRIX32 PRIX32"
.LASF694:
	.string	"PTRDIFF_MIN (-9223372036854775807L-1)"
.LASF2755:
	.string	"SDL_GetWindowDisplayIndex SDL_GetWindowDisplayIndex_renamed_SDL_GetDisplayForWindow"
.LASF3018:
	.string	"SDL_SCANCODE_VOLUMEUP"
.LASF1478:
	.string	"SDLK_F6 0x4000003fu"
.LASF1524:
	.string	"SDLK_F20 0x4000006fu"
.LASF760:
	.string	"__HAVE_FLOATN_NOT_TYPEDEF 1"
.LASF2063:
	.string	"SDL_PROP_RENDERER_CREATE_WINDOW_POINTER \"SDL.renderer.create.window\""
.LASF2522:
	.string	"SDLK_k SDLK_k_renamed_SDLK_K"
.LASF2957:
	.string	"SDL_SCANCODE_F10"
.LASF2272:
	.string	"SDL_KEYUP SDL_KEYUP_renamed_SDL_EVENT_KEY_UP"
.LASF2959:
	.string	"SDL_SCANCODE_F12"
.LASF2994:
	.string	"SDL_SCANCODE_F13"
.LASF2995:
	.string	"SDL_SCANCODE_F14"
.LASF2996:
	.string	"SDL_SCANCODE_F15"
.LASF1845:
	.string	"SDL_HINT_JOYSTICK_ENHANCED_REPORTS \"SDL_JOYSTICK_ENHANCED_REPORTS\""
.LASF2998:
	.string	"SDL_SCANCODE_F17"
.LASF2999:
	.string	"SDL_SCANCODE_F18"
.LASF3000:
	.string	"SDL_SCANCODE_F19"
.LASF371:
	.string	"__SIZEOF_FLOAT128__ 16"
.LASF2785:
	.string	"uint32_t"
.LASF208:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF404:
	.string	"SDL_PLATFORM_LINUX 1"
.LASF3431:
	.string	"SDL_RenderTexture"
.LASF2477:
	.string	"SDL_JoystickSetVirtualAxis SDL_JoystickSetVirtualAxis_renamed_SDL_SetJoystickVirtualAxis"
.LASF634:
	.string	"__SSIZE_T_TYPE __SWORD_TYPE"
.LASF2728:
	.string	"SDL_GDKGetDefaultUser SDL_GDKGetDefaultUser_renamed_SDL_GetGDKDefaultUser"
.LASF2811:
	.string	"SDL_PIXELFORMAT_BGRA4444"
.LASF1164:
	.string	"SDL_DEFINE_AUDIO_FORMAT(signed,bigendian,flt,size) (((Uint16)(signed) << 15) | ((Uint16)(bigendian) << 12) | ((Uint16)(flt) << 8) | ((size) & SDL_AUDIO_MASK_BITSIZE))"
.LASF537:
	.string	"__glibc_likely(cond) __builtin_expect ((cond), 1)"
.LASF1552:
	.string	"SDLK_OUT 0x400000a0u"
.LASF2255:
	.string	"SDL_DROPFILE SDL_DROPFILE_renamed_SDL_EVENT_DROP_FILE"
.LASF935:
	.string	"SCNxLEAST8 \"hhx\""
.LASF2876:
	.string	"refcount"
.LASF1999:
	.string	"SDL_HINT_WINDOWS_ENABLE_MESSAGELOOP \"SDL_WINDOWS_ENABLE_MESSAGELOOP\""
.LASF85:
	.string	"__WINT_MIN__ 0U"
.LASF374:
	.string	"__GCC_ASM_FLAG_OUTPUTS__ 1"
.LASF1193:
	.string	"SDL_DEFINE_PIXELFORMAT(type,order,layout,bits,bytes) ((1 << 28) | ((type) << 24) | ((order) << 20) | ((layout) << 16) | ((bits) << 8) | ((bytes) << 0))"
.LASF2542:
	.string	"SDL_LogSetOutputFunction SDL_LogSetOutputFunction_renamed_SDL_SetLogOutputFunction"
.LASF464:
	.string	"__TIMESIZE __WORDSIZE"
.LASF73:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF1030:
	.string	"SDL_MALLOC __attribute__((malloc))"
.LASF2762:
	.string	"SDL_WINDOW_SKIP_TASKBAR SDL_WINDOW_SKIP_TASKBAR_renamed_SDL_WINDOW_UTILITY"
.LASF3320:
	.string	"direction"
.LASF3001:
	.string	"SDL_SCANCODE_F20"
.LASF3002:
	.string	"SDL_SCANCODE_F21"
.LASF3003:
	.string	"SDL_SCANCODE_F22"
.LASF3004:
	.string	"SDL_SCANCODE_F23"
.LASF3005:
	.string	"SDL_SCANCODE_F24"
.LASF3073:
	.string	"SDL_SCANCODE_KP_LESS"
.LASF2050:
	.string	"SDL_PROP_PROCESS_CREATE_STDOUT_POINTER \"SDL.process.create.stdout_source\""
.LASF965:
	.string	"SDL_static_cast(type,expression) ((type)(expression))"
.LASF1346:
	.string	"SDL_PROP_WINDOW_WAYLAND_XDG_TOPLEVEL_EXPORT_HANDLE_STRING \"SDL.window.wayland.xdg_toplevel_export_handle\""
.LASF3253:
	.string	"SDL_EVENT_DROP_COMPLETE"
.LASF2318:
	.string	"SDL_CONTROLLER_BUTTON_A SDL_CONTROLLER_BUTTON_A_renamed_SDL_GAMEPAD_BUTTON_SOUTH"
.LASF352:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF1576:
	.string	"SDLK_KP_POWER 0x400000c3u"
.LASF1720:
	.string	"SDL_GPU_SHADERFORMAT_DXIL (1u << 3)"
.LASF32:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF2427:
	.string	"SDL_HapticUpdateEffect SDL_HapticUpdateEffect_renamed_SDL_UpdateHapticEffect"
.LASF2257:
	.string	"SDL_DelEventWatch SDL_DelEventWatch_renamed_SDL_RemoveEventWatch"
.LASF422:
	.string	"__GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION"
.LASF1957:
	.string	"SDL_HINT_VIDEO_DOUBLE_BUFFER \"SDL_VIDEO_DOUBLE_BUFFER\""
.LASF1619:
	.string	"SDLK_MEDIA_FAST_FORWARD 0x40000109u"
.LASF521:
	.string	"__attribute_format_strfmon__(a,b) __attribute__ ((__format__ (__strfmon__, a, b)))"
.LASF2796:
	.string	"SDL_PIXELFORMAT_INDEX1LSB"
.LASF2683:
	.string	"SDL_SensorGetData SDL_SensorGetData_renamed_SDL_GetSensorData"
.LASF2112:
	.string	"SDL_PROP_TEXTURE_CREATE_OPENGL_TEXTURE_UV_NUMBER \"SDL.texture.create.opengl.texture_uv\""
.LASF2510:
	.string	"SDLK_QUOTE SDLK_QUOTE_renamed_SDLK_APOSTROPHE"
.LASF1835:
	.string	"SDL_HINT_HIDAPI_ENUMERATE_ONLY_CONTROLLERS \"SDL_HIDAPI_ENUMERATE_ONLY_CONTROLLERS\""
.LASF3078:
	.string	"SDL_SCANCODE_KP_DBLVERTICALBAR"
.LASF934:
	.string	"SCNx64 __PRI64_PREFIX \"x\""
.LASF327:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF1506:
	.string	"SDLK_KP_4 0x4000005cu"
.LASF2384:
	.string	"SDL_GameControllerGetVendor SDL_GameControllerGetVendor_renamed_SDL_GetGamepadVendor"
.LASF3399:
	.string	"render"
.LASF761:
	.string	"__f32(x) x ##f32"
.LASF140:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF1645:
	.string	"SDLK_LEFT_TAB 0x20000001u"
.LASF189:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF332:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF1897:
	.string	"SDL_HINT_JOYSTICK_WHEEL_DEVICES_EXCLUDED \"SDL_JOYSTICK_WHEEL_DEVICES_EXCLUDED\""
.LASF2044:
	.string	"SDL_process_h_ "
.LASF1042:
	.string	"SDL_memset memset"
.LASF1165:
	.string	"SDL_AUDIO_BITSIZE(x) ((x) & SDL_AUDIO_MASK_BITSIZE)"
.LASF2365:
	.string	"SDL_GameControllerGetAxis SDL_GameControllerGetAxis_renamed_SDL_GetGamepadAxis"
.LASF2381:
	.string	"SDL_GameControllerGetStringForButton SDL_GameControllerGetStringForButton_renamed_SDL_GetGamepadStringForButton"
.LASF1469:
	.string	"SDLK_TILDE 0x0000007eu"
.LASF3159:
	.string	"SDL_PEN_AXIS_ROTATION"
.LASF1986:
	.string	"SDL_HINT_VITA_TOUCH_MOUSE_DEVICE \"SDL_VITA_TOUCH_MOUSE_DEVICE\""
.LASF2198:
	.string	"AUDIO_S16MSB AUDIO_S16MSB_renamed_SDL_AUDIO_S16BE"
.LASF929:
	.string	"SCNoFAST32 __PRIPTR_PREFIX \"o\""
.LASF941:
	.string	"SCNxFAST32 __PRIPTR_PREFIX \"x\""
.LASF2643:
	.string	"SDL_RenderWindowToLogical SDL_RenderWindowToLogical_renamed_SDL_RenderCoordinatesFromWindow"
.LASF1306:
	.string	"SDL_PROP_WINDOW_CREATE_WIDTH_NUMBER \"SDL.window.create.width\""
.LASF1516:
	.string	"SDLK_KP_EQUALS 0x40000067u"
.LASF1684:
	.string	"SDL_BUTTON_RMASK SDL_BUTTON_MASK(SDL_BUTTON_RIGHT)"
.LASF542:
	.string	"__LDOUBLE_REDIRECTS_TO_FLOAT128_ABI 0"
.LASF831:
	.string	"PRIoFAST8 \"o\""
.LASF2229:
	.string	"SDL_APP_WILLENTERFOREGROUND SDL_APP_WILLENTERFOREGROUND_renamed_SDL_EVENT_WILL_ENTER_FOREGROUND"
.LASF2508:
	.string	"SDLK_EJECT SDLK_EJECT_renamed_SDLK_MEDIA_EJECT"
.LASF3133:
	.string	"SDL_SCANCODE_AC_STOP"
.LASF3443:
	.string	"surface"
.LASF3070:
	.string	"SDL_SCANCODE_KP_XOR"
.LASF1386:
	.string	"SDL_PROP_GAMEPAD_CAP_RGB_LED_BOOLEAN SDL_PROP_JOYSTICK_CAP_RGB_LED_BOOLEAN"
.LASF1562:
	.string	"SDLK_CURRENCYSUBUNIT 0x400000b5u"
.LASF1548:
	.string	"SDLK_CLEAR 0x4000009cu"
.LASF1767:
	.string	"SDL_HAPTIC_GAIN (1u<<16)"
.LASF1865:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_SHIELD \"SDL_JOYSTICK_HIDAPI_SHIELD\""
.LASF2185:
	.string	"SDL_AtomicGetPtr SDL_AtomicGetPtr_renamed_SDL_GetAtomicPointer"
.LASF2028:
	.string	"SDL_PROP_APP_METADATA_URL_STRING \"SDL.app.metadata.url\""
.LASF3285:
	.string	"SDL_DisplayEvent"
.LASF3139:
	.string	"SDL_SCANCODE_ENDCALL"
.LASF3328:
	.string	"ball"
.LASF2081:
	.string	"SDL_PROP_RENDERER_SDR_WHITE_POINT_FLOAT \"SDL.renderer.SDR_white_point\""
.LASF3249:
	.string	"SDL_EVENT_CLIPBOARD_UPDATE"
.LASF1808:
	.string	"SDL_HINT_CPU_FEATURE_MASK \"SDL_CPU_FEATURE_MASK\""
.LASF335:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF1791:
	.string	"SDL_HINT_AUDIO_CHANNELS \"SDL_AUDIO_CHANNELS\""
.LASF1651:
	.string	"SDLK_RHYPER 0x20000007u"
.LASF1598:
	.string	"SDLK_KP_CLEARENTRY 0x400000d9u"
.LASF157:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF65:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF1264:
	.string	"SDL_WINDOWPOS_UNDEFINED SDL_WINDOWPOS_UNDEFINED_DISPLAY(0)"
.LASF3438:
	.string	"SDL_LogError"
.LASF932:
	.string	"SCNx16 \"hx\""
.LASF2006:
	.string	"SDL_HINT_WINDOWS_ERASE_BACKGROUND_MODE \"SDL_WINDOWS_ERASE_BACKGROUND_MODE\""
.LASF851:
	.string	"PRIxLEAST8 \"x\""
.LASF1629:
	.string	"SDLK_AC_CLOSE 0x40000113u"
.LASF1025:
	.string	"SDL_ANALYZER_NORETURN "
.LASF2289:
	.string	"SDL_WINDOWEVENT_DISPLAY_CHANGED SDL_WINDOWEVENT_DISPLAY_CHANGED_renamed_SDL_EVENT_WINDOW_DISPLAY_CHANGED"
.LASF385:
	.string	"__SEG_FS 1"
.LASF601:
	.string	"__SYSCALL_SLONG_TYPE __SLONGWORD_TYPE"
.LASF2757:
	.string	"SDL_HasWindowSurface SDL_HasWindowSurface_renamed_SDL_WindowHasSurface"
.LASF116:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF306:
	.string	"__BFLT16_DECIMAL_DIG__ 4"
.LASF469:
	.string	"__GLIBC_USE_C23_STRTOL 0"
.LASF1495:
	.string	"SDLK_DOWN 0x40000051u"
.LASF1397:
	.string	"SDLK_RETURN 0x0000000du"
.LASF2091:
	.string	"SDL_PROP_RENDERER_VULKAN_PHYSICAL_DEVICE_POINTER \"SDL.renderer.vulkan.physical_device\""
.LASF1295:
	.string	"SDL_PROP_WINDOW_CREATE_MINIMIZED_BOOLEAN \"SDL.window.create.minimized\""
.LASF516:
	.string	"__attribute_used__ __attribute__ ((__used__))"
.LASF1822:
	.string	"SDL_HINT_GAMECONTROLLERTYPE \"SDL_GAMECONTROLLERTYPE\""
.LASF1249:
	.string	"SDL_WINDOW_MODAL SDL_UINT64_C(0x0000000000001000)"
.LASF972:
	.string	"SDL_MAX_UINT8 ((Uint8)0xFF)"
.LASF1848:
	.string	"SDL_HINT_JOYSTICK_GAMEINPUT \"SDL_JOYSTICK_GAMEINPUT\""
.LASF471:
	.string	"__GNU_LIBRARY__ 6"
.LASF2467:
	.string	"SDL_JoystickNumBalls SDL_JoystickNumBalls_renamed_SDL_GetNumJoystickBalls"
.LASF1749:
	.string	"SDL_PROP_GPU_TRANSFERBUFFER_CREATE_NAME_STRING \"SDL.gpu.transferbuffer.create.name\""
.LASF990:
	.string	"SDL_PRIu64 PRIu64"
.LASF3168:
	.string	"SDL_EVENT_WILL_ENTER_BACKGROUND"
.LASF1620:
	.string	"SDLK_MEDIA_REWIND 0x4000010au"
.LASF1793:
	.string	"SDL_HINT_AUDIO_DEVICE_SAMPLE_FRAMES \"SDL_AUDIO_DEVICE_SAMPLE_FRAMES\""
.LASF437:
	.string	"__USE_XOPEN2K8"
.LASF526:
	.string	"__wur "
.LASF830:
	.string	"PRIoLEAST64 __PRI64_PREFIX \"o\""
.LASF854:
	.string	"PRIxLEAST64 __PRI64_PREFIX \"x\""
.LASF2174:
	.string	"SDL_VERSIONNUM(major,minor,patch) ((major) * 1000000 + (minor) * 1000 + (patch))"
.LASF2742:
	.string	"SDL_threadID SDL_threadID_renamed_SDL_ThreadID"
.LASF1408:
	.string	"SDLK_APOSTROPHE 0x00000027u"
.LASF2821:
	.string	"SDL_PIXELFORMAT_RGBX8888"
.LASF2226:
	.string	"SDL_APP_LOWMEMORY SDL_APP_LOWMEMORY_renamed_SDL_EVENT_LOW_MEMORY"
.LASF1437:
	.string	"SDLK_CARET 0x0000005eu"
.LASF2449:
	.string	"SDL_JoystickGetAxis SDL_JoystickGetAxis_renamed_SDL_GetJoystickAxis"
.LASF211:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF2518:
	.string	"SDLK_g SDLK_g_renamed_SDLK_G"
.LASF3406:
	.string	"SDL_LOG_CATEGORY_ERROR"
.LASF664:
	.string	"INT_LEAST8_MIN (-128)"
.LASF1622:
	.string	"SDLK_MEDIA_PREVIOUS_TRACK 0x4000010cu"
.LASF1741:
	.string	"SDL_PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_R_FLOAT \"SDL.gpu.texture.create.d3d12.clear.r\""
.LASF3166:
	.string	"SDL_EVENT_TERMINATING"
.LASF1860:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_PS3_SIXAXIS_DRIVER \"SDL_JOYSTICK_HIDAPI_PS3_SIXAXIS_DRIVER\""
.LASF399:
	.string	"__STDC_IEC_60559_COMPLEX__ 201404L"
.LASF457:
	.string	"__GLIBC_USE_ISOC2Y 0"
.LASF745:
	.string	"__f128(x) x ##f128"
.LASF2557:
	.string	"SDL_SYSTEM_CURSOR_SIZEWE SDL_SYSTEM_CURSOR_SIZEWE_renamed_SDL_SYSTEM_CURSOR_EW_RESIZE"
.LASF641:
	.string	"__FD_SETSIZE 1024"
.LASF1444:
	.string	"SDLK_E 0x00000065u"
.LASF2374:
	.string	"SDL_GameControllerGetProduct SDL_GameControllerGetProduct_renamed_SDL_GetGamepadProduct"
.LASF2379:
	.string	"SDL_GameControllerGetSteamHandle SDL_GameControllerGetSteamHandle_renamed_SDL_GetGamepadSteamHandle"
.LASF421:
	.string	"__GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION "
.LASF1219:
	.string	"SDL_surface_h_ "
.LASF2417:
	.string	"SDL_HapticQuery SDL_HapticQuery_renamed_SDL_GetHapticFeatures"
.LASF1677:
	.string	"SDL_BUTTON_MIDDLE 2"
.LASF2:
	.string	"__STDC__ 1"
.LASF2602:
	.string	"SDL_IntersectRect SDL_IntersectRect_renamed_SDL_GetRectIntersection"
.LASF1170:
	.string	"SDL_AUDIO_ISSIGNED(x) ((x) & SDL_AUDIO_MASK_SIGNED)"
.LASF3398:
	.string	"paxis"
.LASF1455:
	.string	"SDLK_P 0x00000070u"
.LASF610:
	.string	"__FSWORD_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF2673:
	.string	"SDL_SCANCODE_AUDIOMUTE SDL_SCANCODE_AUDIOMUTE_renamed_SDL_SCANCODE_MUTE"
.LASF2940:
	.string	"SDL_SCANCODE_NONUSHASH"
.LASF2534:
	.string	"SDLK_w SDLK_w_renamed_SDLK_W"
.LASF3391:
	.string	"quit"
.LASF809:
	.string	"PRIdFAST32 __PRIPTR_PREFIX \"d\""
.LASF3117:
	.string	"SDL_SCANCODE_MEDIA_PREVIOUS_TRACK"
.LASF1175:
	.string	"SDL_AUDIO_FRAMESIZE(x) (SDL_AUDIO_BYTESIZE((x).format) * (x).channels)"
.LASF2502:
	.string	"SDLK_AUDIONEXT SDLK_AUDIONEXT_renamed_SDLK_MEDIA_NEXT_TRACK"
.LASF3191:
	.string	"SDL_EVENT_WINDOW_MAXIMIZED"
.LASF302:
	.string	"__BFLT16_MIN_EXP__ (-125)"
.LASF2351:
	.string	"SDL_CONTROLLER_TYPE_XBOXONE SDL_CONTROLLER_TYPE_XBOXONE_renamed_SDL_GAMEPAD_TYPE_XBOXONE"
.LASF657:
	.string	"INT16_MAX (32767)"
.LASF340:
	.string	"__STRICT_ANSI__ 1"
.LASF2718:
	.string	"SDL_AndroidGetExternalStoragePath SDL_AndroidGetExternalStoragePath_renamed_SDL_GetAndroidExternalStoragePath"
.LASF2489:
	.string	"KMOD_LGUI KMOD_LGUI_renamed_SDL_KMOD_LGUI"
.LASF909:
	.string	"SCNu32 \"u\""
.LASF3012:
	.string	"SDL_SCANCODE_UNDO"
.LASF974:
	.string	"SDL_MAX_SINT16 ((Sint16)0x7FFF)"
.LASF1031:
	.string	"SDL_ALLOC_SIZE(p) __attribute__((alloc_size(p)))"
.LASF3165:
	.string	"SDL_EVENT_QUIT"
.LASF207:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF163:
	.string	"__FLT_NORM_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF589:
	.string	"__SLONGWORD_TYPE long int"
.LASF1200:
	.ascii	"SDL_ISPIXELFORMAT_I"
	.string	"NDEXED(format) (!SDL_ISPIXELFORMAT_FOURCC(format) && ((SDL_PIXELTYPE(format) == SDL_PIXELTYPE_INDEX1) || (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_INDEX2) || (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_INDEX4) || (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_INDEX8)))"
.LASF607:
	.string	"__INO64_T_TYPE __UQUAD_TYPE"
.LASF1518:
	.string	"SDLK_F14 0x40000069u"
.LASF1372:
	.string	"SDL_PROP_JOYSTICK_CAP_RGB_LED_BOOLEAN \"SDL.joystick.cap.rgb_led\""
.LASF609:
	.string	"__NLINK_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF1364:
	.string	"SDL_guid_h_ "
.LASF2151:
	.string	"SDL_time_h_ "
.LASF2458:
	.string	"SDL_JoystickGetProduct SDL_JoystickGetProduct_renamed_SDL_GetJoystickProduct"
.LASF58:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF1086:
	.string	"_ENDIAN_H 1"
.LASF944:
	.string	"SCNiMAX __PRI64_PREFIX \"i\""
.LASF1673:
	.string	"SDL_PROP_TEXTINPUT_MULTILINE_BOOLEAN \"SDL.textinput.multiline\""
.LASF1360:
	.string	"SDL_PROP_FILE_DIALOG_ACCEPT_STRING \"SDL.filedialog.accept\""
.LASF339:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF238:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF737:
	.string	"NULL ((void *)0)"
.LASF616:
	.string	"__BLKCNT_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF323:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF2929:
	.string	"SDL_SCANCODE_0"
.LASF506:
	.string	"__ASMNAME(cname) __ASMNAME2 (__USER_LABEL_PREFIX__, cname)"
.LASF2920:
	.string	"SDL_SCANCODE_1"
.LASF1268:
	.string	"SDL_WINDOWPOS_CENTERED SDL_WINDOWPOS_CENTERED_DISPLAY(0)"
.LASF2921:
	.string	"SDL_SCANCODE_2"
.LASF25:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF2923:
	.string	"SDL_SCANCODE_4"
.LASF2688:
	.string	"SDL_SensorOpen SDL_SensorOpen_renamed_SDL_OpenSensor"
.LASF2924:
	.string	"SDL_SCANCODE_5"
.LASF1462:
	.string	"SDLK_W 0x00000077u"
.LASF1618:
	.string	"SDLK_MEDIA_RECORD 0x40000108u"
.LASF1732:
	.string	"SDL_PROP_GPU_DEVICE_CREATE_SHADERS_DXBC_BOOLEAN \"SDL.gpu.device.create.shaders.dxbc\""
.LASF247:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF2082:
	.string	"SDL_PROP_RENDERER_HDR_HEADROOM_FLOAT \"SDL.renderer.HDR_headroom\""
.LASF1580:
	.string	"SDLK_KP_AMPERSAND 0x400000c7u"
.LASF2865:
	.string	"SDL_PIXELFORMAT_XRGB32"
.LASF2375:
	.string	"SDL_GameControllerGetProductVersion SDL_GameControllerGetProductVersion_renamed_SDL_GetGamepadProductVersion"
.LASF1154:
	.string	"SDL_PROP_IOSTREAM_FILE_DESCRIPTOR_NUMBER \"SDL.iostream.file_descriptor\""
.LASF2127:
	.string	"SDL_PROP_TEXTURE_D3D11_TEXTURE_POINTER \"SDL.texture.d3d11.texture\""
.LASF2626:
	.string	"SDL_RenderFillRectsF SDL_RenderFillRectsF_renamed_SDL_RenderFillRects"
.LASF462:
	.string	"__WORDSIZE_TIME64_COMPAT32 1"
.LASF2604:
	.string	"SDL_PointInFRect SDL_PointInFRect_renamed_SDL_PointInRectFloat"
.LASF2900:
	.string	"SDL_SCANCODE_G"
.LASF1916:
	.string	"SDL_HINT_MOUSE_RELATIVE_MODE_CENTER \"SDL_MOUSE_RELATIVE_MODE_CENTER\""
.LASF338:
	.string	"__USER_LABEL_PREFIX__ "
.LASF1106:
	.string	"HAS_BUILTIN_BSWAP32"
.LASF1686:
	.string	"SDL_BUTTON_X2MASK SDL_BUTTON_MASK(SDL_BUTTON_X2)"
.LASF1743:
	.string	"SDL_PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_B_FLOAT \"SDL.gpu.texture.create.d3d12.clear.b\""
.LASF3425:
	.string	"SDL_Renderer"
.LASF2911:
	.string	"SDL_SCANCODE_R"
.LASF2572:
	.string	"SDL_DestroyCond SDL_DestroyCond_renamed_SDL_DestroyCondition"
.LASF3093:
	.string	"SDL_SCANCODE_KP_CLEARENTRY"
.LASF1223:
	.string	"SDL_SURFACE_LOCKED 0x00000004u"
.LASF297:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF1551:
	.string	"SDLK_SEPARATOR 0x4000009fu"
.LASF2433:
	.string	"SDL_HINT_GDK_TEXTINPUT_DEFAULT SDL_HINT_GDK_TEXTINPUT_DEFAULT_renamed_SDL_HINT_GDK_TEXTINPUT_DEFAULT_TEXT"
.LASF3252:
	.string	"SDL_EVENT_DROP_BEGIN"
.LASF2963:
	.string	"SDL_SCANCODE_INSERT"
.LASF3196:
	.string	"SDL_EVENT_WINDOW_FOCUS_LOST"
.LASF94:
	.string	"__WINT_WIDTH__ 32"
.LASF2269:
	.string	"SDL_JOYHATMOTION SDL_JOYHATMOTION_renamed_SDL_EVENT_JOYSTICK_HAT_MOTION"
.LASF738:
	.string	"__need_NULL"
.LASF557:
	.string	"__attr_dealloc(dealloc,argno) __attribute__ ((__malloc__ (dealloc, argno)))"
.LASF1376:
	.string	"SDL_HAT_CENTERED 0x00u"
.LASF389:
	.string	"__linux__ 1"
.LASF683:
	.string	"INT_FAST64_MAX (__INT64_C(9223372036854775807))"
.LASF2197:
	.string	"AUDIO_S16LSB AUDIO_S16LSB_renamed_SDL_AUDIO_S16LE"
.LASF1692:
	.string	"SDL_PEN_TOUCHID ((SDL_TouchID)-2)"
.LASF1261:
	.string	"SDL_WINDOW_NOT_FOCUSABLE SDL_UINT64_C(0x0000000080000000)"
.LASF3177:
	.string	"SDL_EVENT_DISPLAY_MOVED"
.LASF1626:
	.string	"SDLK_MEDIA_SELECT 0x40000110u"
.LASF3445:
	.string	"event"
.LASF391:
	.string	"__unix__ 1"
.LASF407:
	.string	"_ANSI_STDARG_H_ "
.LASF2622:
	.string	"SDL_RenderDrawRectF SDL_RenderDrawRectF_renamed_SDL_RenderRect"
.LASF963:
	.string	"SDL_STRINGIFY_ARG(arg) #arg"
.LASF2576:
	.string	"SDL_SemWait SDL_SemWait_renamed_SDL_WaitSemaphore"
.LASF3330:
	.string	"SDL_JoyButtonEvent"
.LASF1647:
	.string	"SDLK_MULTI_KEY_COMPOSE 0x20000003u"
.LASF2102:
	.string	"SDL_PROP_TEXTURE_CREATE_SDR_WHITE_POINT_FLOAT \"SDL.texture.create.SDR_white_point\""
.LASF3111:
	.string	"SDL_SCANCODE_MEDIA_PLAY"
.LASF1556:
	.string	"SDLK_EXSEL 0x400000a4u"
.LASF1428:
	.string	"SDLK_SEMICOLON 0x0000003bu"
.LASF1138:
	.string	"SDL_REQUIRES_SHARED(x) SDL_THREAD_ANNOTATION_ATTRIBUTE__(requires_shared_capability(x))"
.LASF654:
	.string	"INT32_MIN (-2147483647-1)"
.LASF1117:
	.string	"SDL_Unsupported() SDL_SetError(\"That operation is not supported\")"
.LASF757:
	.string	"__HAVE_DISTINCT_FLOAT64X 0"
.LASF2149:
	.string	"SDL_storage_h_ "
.LASF1421:
	.string	"SDLK_4 0x00000034u"
.LASF1798:
	.string	"SDL_HINT_AUDIO_DISK_TIMESCALE \"SDL_AUDIO_DISK_TIMESCALE\""
.LASF1590:
	.string	"SDLK_KP_MEMRECALL 0x400000d1u"
.LASF3087:
	.string	"SDL_SCANCODE_KP_MEMADD"
.LASF976:
	.string	"SDL_MAX_UINT16 ((Uint16)0xFFFF)"
.LASF2038:
	.string	"SDL_MESSAGEBOX_BUTTONS_RIGHT_TO_LEFT 0x00000100u"
.LASF2186:
	.string	"SDL_AtomicLock SDL_AtomicLock_renamed_SDL_LockSpinlock"
.LASF235:
	.string	"__FLT32_IS_IEC_60559__ 1"
.LASF1889:
	.string	"SDL_HINT_JOYSTICK_RAWINPUT \"SDL_JOYSTICK_RAWINPUT\""
.LASF3361:
	.string	"SDL_ClipboardEvent"
.LASF3135:
	.string	"SDL_SCANCODE_AC_BOOKMARKS"
.LASF1586:
	.string	"SDLK_KP_SPACE 0x400000cdu"
.LASF124:
	.string	"__INT64_C(c) c ## L"
.LASF3331:
	.string	"SDL_JoyDeviceEvent"
.LASF1814:
	.string	"SDL_HINT_EMSCRIPTEN_KEYBOARD_ELEMENT \"SDL_EMSCRIPTEN_KEYBOARD_ELEMENT\""
.LASF1943:
	.string	"SDL_HINT_ROG_GAMEPAD_MICE_EXCLUDED \"SDL_ROG_GAMEPAD_MICE_EXCLUDED\""
.LASF1449:
	.string	"SDLK_J 0x0000006au"
.LASF839:
	.string	"PRIuLEAST8 \"u\""
.LASF2005:
	.string	"SDL_HINT_WINDOWS_USE_D3D9EX \"SDL_WINDOWS_USE_D3D9EX\""
.LASF450:
	.string	"__GLIBC_USE_DEPRECATED_GETS"
.LASF3213:
	.string	"SDL_EVENT_TEXT_INPUT"
.LASF2395:
	.string	"SDL_GameControllerRumble SDL_GameControllerRumble_renamed_SDL_RumbleGamepad"
.LASF2597:
	.string	"SDL_FRectEqualsEpsilon SDL_FRectEqualsEpsilon_renamed_SDL_RectsEqualEpsilon"
.LASF57:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF515:
	.string	"__attribute_maybe_unused__ __attribute__ ((__unused__))"
.LASF2851:
	.string	"SDL_PIXELFORMAT_IYUV"
.LASF2441:
	.string	"SDL_JOYSTICK_TYPE_GAMECONTROLLER SDL_JOYSTICK_TYPE_GAMECONTROLLER_renamed_SDL_JOYSTICK_TYPE_GAMEPAD"
.LASF3384:
	.string	"gdevice"
.LASF2593:
	.string	"SDL_EncloseFPoints SDL_EncloseFPoints_renamed_SDL_GetRectEnclosingPointsFloat"
.LASF816:
	.string	"PRIiLEAST16 \"i\""
.LASF2339:
	.string	"SDL_CONTROLLER_BUTTON_X SDL_CONTROLLER_BUTTON_X_renamed_SDL_GAMEPAD_BUTTON_WEST"
.LASF859:
	.string	"PRIX8 \"X\""
.LASF176:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF1319:
	.string	"SDL_PROP_WINDOW_SDR_WHITE_LEVEL_FLOAT \"SDL.window.SDR_white_level\""
.LASF3319:
	.string	"SDL_MouseWheelEvent"
.LASF3403:
	.string	"SDL_InitFlags"
.LASF3248:
	.string	"SDL_EVENT_FINGER_CANCELED"
.LASF3367:
	.string	"SDL_UserEvent"
.LASF87:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF2246:
	.string	"SDL_ControllerDeviceEvent SDL_ControllerDeviceEvent_renamed_SDL_GamepadDeviceEvent"
.LASF2500:
	.string	"SDLK_AUDIOFASTFORWARD SDLK_AUDIOFASTFORWARD_renamed_SDLK_MEDIA_FAST_FORWARD"
.LASF1011:
	.string	"SDL_PRINTF_VARARG_FUNCV(fmtargnumber) __attribute__(( format( __printf__, fmtargnumber, 0 )))"
.LASF1158:
	.string	"SDL_PROP_IOSTREAM_DYNAMIC_MEMORY_POINTER \"SDL.iostream.dynamic.memory\""
.LASF1731:
	.string	"SDL_PROP_GPU_DEVICE_CREATE_SHADERS_SPIRV_BOOLEAN \"SDL.gpu.device.create.shaders.spirv\""
.LASF1232:
	.string	"SDL_cpuinfo_h_ "
.LASF1712:
	.string	"SDL_GPU_BUFFERUSAGE_INDIRECT (1u << 2)"
.LASF173:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF2726:
	.string	"SDL_DXGIGetOutputInfo SDL_DXGIGetOutputInfo_renamed_SDL_GetDXGIOutputInfo"
.LASF1107:
	.string	"HAS_BUILTIN_BSWAP64"
.LASF817:
	.string	"PRIiLEAST32 \"i\""
.LASF765:
	.string	"__CFLOAT32 _Complex _Float32"
.LASF2682:
	.string	"SDL_SensorFromInstanceID SDL_SensorFromInstanceID_renamed_SDL_GetSensorFromID"
.LASF1416:
	.string	"SDLK_SLASH 0x0000002fu"
.LASF3182:
	.string	"SDL_EVENT_DISPLAY_LAST"
.LASF813:
	.string	"PRIi32 \"i\""
.LASF341:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF324:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF1892:
	.string	"SDL_HINT_JOYSTICK_THREAD \"SDL_JOYSTICK_THREAD\""
.LASF550:
	.string	"__REDIRECT_NTH_LDBL(name,proto,alias) __REDIRECT_NTH (name, proto, alias)"
.LASF939:
	.string	"SCNxFAST8 \"hhx\""
.LASF257:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF1748:
	.string	"SDL_PROP_GPU_BUFFER_CREATE_NAME_STRING \"SDL.gpu.buffer.create.name\""
.LASF1004:
	.string	"SDL_OUT_Z_CAP(x) "
.LASF394:
	.string	"VK_USE_PLATFORM_WAYLAND_KHR 1"
.LASF2827:
	.string	"SDL_PIXELFORMAT_BGRA8888"
.LASF1523:
	.string	"SDLK_F19 0x4000006eu"
.LASF2321:
	.string	"SDL_CONTROLLER_BUTTON_DPAD_DOWN SDL_CONTROLLER_BUTTON_DPAD_DOWN_renamed_SDL_GAMEPAD_BUTTON_DPAD_DOWN"
.LASF2630:
	.string	"SDL_RenderGetLogicalSize SDL_RenderGetLogicalSize_renamed_SDL_GetRenderLogicalPresentation"
.LASF969:
	.string	"SDL_UINT64_C(c) UINT64_C(c)"
.LASF3137:
	.string	"SDL_SCANCODE_SOFTRIGHT"
.LASF2667:
	.string	"SDL_WriteBE64 SDL_WriteBE64_renamed_SDL_WriteU64BE"
.LASF1578:
	.string	"SDLK_KP_LESS 0x400000c5u"
.LASF560:
	.string	"__attribute_struct_may_alias__ __attribute__ ((__may_alias__))"
.LASF1122:
	.string	"SDL_BeginThreadFunction NULL"
.LASF2552:
	.string	"SDL_SYSTEM_CURSOR_NO SDL_SYSTEM_CURSOR_NO_renamed_SDL_SYSTEM_CURSOR_NOT_ALLOWED"
.LASF2547:
	.string	"SDL_FreeCursor SDL_FreeCursor_renamed_SDL_DestroyCursor"
.LASF605:
	.string	"__GID_T_TYPE __U32_TYPE"
.LASF2412:
	.string	"SDL_HapticNumEffectsPlaying SDL_HapticNumEffectsPlaying_renamed_SDL_GetMaxHapticEffectsPlaying"
.LASF3395:
	.string	"ptouch"
.LASF3233:
	.string	"SDL_EVENT_GAMEPAD_AXIS_MOTION"
.LASF3125:
	.string	"SDL_SCANCODE_AC_EXIT"
.LASF1563:
	.string	"SDLK_KP_LEFTPAREN 0x400000b6u"
.LASF878:
	.string	"PRIiPTR __PRIPTR_PREFIX \"i\""
.LASF3264:
	.string	"SDL_EVENT_PEN_BUTTON_UP"
.LASF2411:
	.string	"SDL_HapticNumEffects SDL_HapticNumEffects_renamed_SDL_GetMaxHapticEffects"
.LASF1155:
	.string	"SDL_PROP_IOSTREAM_ANDROID_AASSET_POINTER \"SDL.iostream.android.aasset\""
.LASF2703:
	.string	"SDL_GetColorKey SDL_GetColorKey_renamed_SDL_GetSurfaceColorKey"
.LASF1435:
	.string	"SDLK_BACKSLASH 0x0000005cu"
.LASF2666:
	.string	"SDL_WriteBE32 SDL_WriteBE32_renamed_SDL_WriteU32BE"
.LASF292:
	.string	"__FLT64X_NORM_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF3190:
	.string	"SDL_EVENT_WINDOW_MINIMIZED"
.LASF2363:
	.string	"SDL_GameControllerGetAppleSFSymbolsNameForButton SDL_GameControllerGetAppleSFSymbolsNameForButton_renamed_SDL_GetGamepadAppleSFSymbolsNameForButton"
.LASF3257:
	.string	"SDL_EVENT_AUDIO_DEVICE_FORMAT_CHANGED"
.LASF1027:
	.string	"SDL_FALLTHROUGH __attribute__((__fallthrough__))"
.LASF1309:
	.string	"SDL_PROP_WINDOW_CREATE_COCOA_WINDOW_POINTER \"SDL.window.create.cocoa.window\""
.LASF1795:
	.string	"SDL_HINT_AUDIO_DEVICE_STREAM_ROLE \"SDL_AUDIO_DEVICE_STREAM_ROLE\""
.LASF169:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF1497:
	.string	"SDLK_NUMLOCKCLEAR 0x40000053u"
.LASF190:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF3365:
	.string	"SDL_SensorEvent"
.LASF3402:
	.string	"SDL_Event"
.LASF635:
	.string	"__CPU_MASK_TYPE __SYSCALL_ULONG_TYPE"
.LASF1300:
	.string	"SDL_PROP_WINDOW_CREATE_RESIZABLE_BOOLEAN \"SDL.window.create.resizable\""
.LASF2128:
	.string	"SDL_PROP_TEXTURE_D3D11_TEXTURE_U_POINTER \"SDL.texture.d3d11.texture_u\""
.LASF2243:
	.string	"SDL_CONTROLLERTOUCHPADUP SDL_CONTROLLERTOUCHPADUP_renamed_SDL_EVENT_GAMEPAD_TOUCHPAD_UP"
.LASF3138:
	.string	"SDL_SCANCODE_CALL"
.LASF1308:
	.string	"SDL_PROP_WINDOW_CREATE_Y_NUMBER \"SDL.window.create.y\""
.LASF1322:
	.string	"SDL_PROP_WINDOW_ANDROID_SURFACE_POINTER \"SDL.window.android.surface\""
.LASF743:
	.string	"__HAVE_FLOAT64X 1"
.LASF2087:
	.string	"SDL_PROP_RENDERER_D3D12_SWAPCHAIN_POINTER \"SDL.renderer.d3d12.swap_chain\""
.LASF2394:
	.string	"SDL_GameControllerPath SDL_GameControllerPath_renamed_SDL_GetGamepadPath"
.LASF248:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF188:
	.string	"__LDBL_DIG__ 18"
.LASF926:
	.string	"SCNoLEAST64 __PRI64_PREFIX \"o\""
.LASF1269:
	.string	"SDL_WINDOWPOS_ISCENTERED(X) (((X)&0xFFFF0000) == SDL_WINDOWPOS_CENTERED_MASK)"
.LASF2891:
	.string	"SDL_JoystickID"
.LASF2966:
	.string	"SDL_SCANCODE_DELETE"
.LASF3442:
	.string	"renderer"
.LASF2631:
	.string	"SDL_RenderGetMetalCommandEncoder SDL_RenderGetMetalCommandEncoder_renamed_SDL_GetRenderMetalCommandEncoder"
.LASF1391:
	.string	"SDL_keycode_h_ "
.LASF1909:
	.string	"SDL_HINT_MOUSE_AUTO_CAPTURE \"SDL_MOUSE_AUTO_CAPTURE\""
.LASF887:
	.string	"SCNdLEAST8 \"hhd\""
.LASF1126:
	.string	"SDL_PROP_THREAD_CREATE_ENTRY_FUNCTION_POINTER \"SDL.thread.create.entry_function\""
.LASF604:
	.string	"__UID_T_TYPE __U32_TYPE"
.LASF239:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF1573:
	.string	"SDLK_KP_E 0x400000c0u"
.LASF1036:
	.string	"SDL_min(x,y) (((x) < (y)) ? (x) : (y))"
.LASF531:
	.string	"__extern_always_inline extern __always_inline __attribute__ ((__gnu_inline__))"
.LASF3167:
	.string	"SDL_EVENT_LOW_MEMORY"
.LASF2300:
	.string	"SDL_WINDOWEVENT_MOVED SDL_WINDOWEVENT_MOVED_renamed_SDL_EVENT_WINDOW_MOVED"
.LASF3423:
	.string	"SDL_LOG_CATEGORY_RESERVED10"
.LASF1881:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_XBOX_ONE \"SDL_JOYSTICK_HIDAPI_XBOX_ONE\""
.LASF1906:
	.string	"SDL_HINT_MAC_OPTION_AS_ALT \"SDL_MAC_OPTION_AS_ALT\""
.LASF670:
	.string	"INT_LEAST32_MAX (2147483647)"
.LASF67:
	.string	"__INT_FAST16_TYPE__ long int"
.LASF1075:
	.string	"SDL_atomic_h_ "
.LASF3400:
	.string	"drop"
.LASF2644:
	.string	"SDL_ScaleModeLinear SDL_ScaleModeLinear_renamed_SDL_SCALEMODE_LINEAR"
.LASF1690:
	.string	"SDL_MOUSE_TOUCHID ((SDL_TouchID)-1)"
.LASF372:
	.string	"__ATOMIC_HLE_ACQUIRE 65536"
.LASF1350:
	.string	"SDL_PROP_WINDOW_X11_SCREEN_NUMBER \"SDL.window.x11.screen\""
.LASF2392:
	.string	"SDL_GameControllerName SDL_GameControllerName_renamed_SDL_GetGamepadName"
.LASF2772:
	.string	"__uint8_t"
.LASF904:
	.string	"SCNiFAST16 __PRIPTR_PREFIX \"i\""
.LASF381:
	.string	"__FXSR__ 1"
.LASF3314:
	.string	"yrel"
.LASF2741:
	.string	"SDL_TLSSet SDL_TLSSet_renamed_SDL_SetTLS"
.LASF2221:
	.string	"SDL_SwapLE16 SDL_SwapLE16_renamed_SDL_Swap16LE"
.LASF472:
	.string	"__GLIBC__ 2"
.LASF1963:
	.string	"SDL_HINT_VIDEO_MAC_FULLSCREEN_MENU_VISIBILITY \"SDL_VIDEO_MAC_FULLSCREEN_MENU_VISIBILITY\""
.LASF736:
	.string	"NULL"
.LASF497:
	.string	"__glibc_objsize0(__o) __bos0 (__o)"
.LASF1005:
	.string	"SDL_OUT_CAP(x) "
.LASF893:
	.string	"SCNdFAST32 __PRIPTR_PREFIX \"d\""
.LASF127:
	.string	"__UINT8_C(c) c"
.LASF3379:
	.string	"jaxis"
.LASF206:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF1864:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_PS5_PLAYER_LED \"SDL_JOYSTICK_HIDAPI_PS5_PLAYER_LED\""
.LASF1326:
	.string	"SDL_PROP_WINDOW_UIKIT_OPENGL_RENDERBUFFER_NUMBER \"SDL.window.uikit.opengl.renderbuffer\""
.LASF525:
	.string	"__attribute_warn_unused_result__ __attribute__ ((__warn_unused_result__))"
.LASF1914:
	.string	"SDL_HINT_MOUSE_FOCUS_CLICKTHROUGH \"SDL_MOUSE_FOCUS_CLICKTHROUGH\""
.LASF99:
	.string	"__INTMAX_C(c) c ## L"
.LASF2287:
	.string	"SDL_USEREVENT SDL_USEREVENT_renamed_SDL_EVENT_USER"
.LASF606:
	.string	"__INO_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF5:
	.string	"__GNUC__ 14"
.LASF1956:
	.string	"SDL_HINT_VIDEO_DISPLAY_PRIORITY \"SDL_VIDEO_DISPLAY_PRIORITY\""
.LASF243:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF1820:
	.string	"SDL_HINT_GAMECONTROLLERCONFIG \"SDL_GAMECONTROLLERCONFIG\""
.LASF1745:
	.string	"SDL_PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_DEPTH_FLOAT \"SDL.gpu.texture.create.d3d12.clear.depth\""
.LASF2362:
	.string	"SDL_GameControllerGetAppleSFSymbolsNameForAxis SDL_GameControllerGetAppleSFSymbolsNameForAxis_renamed_SDL_GetGamepadAppleSFSymbolsNameForAxis"
.LASF43:
	.string	"__WCHAR_TYPE__ int"
.LASF2481:
	.string	"SDL_IsScreenKeyboardShown SDL_IsScreenKeyboardShown_renamed_SDL_ScreenKeyboardShown"
.LASF1017:
	.string	"SDL_HAS_BUILTIN(x) __has_builtin(x)"
.LASF1559:
	.string	"SDLK_THOUSANDSSEPARATOR 0x400000b2u"
.LASF1718:
	.string	"SDL_GPU_SHADERFORMAT_SPIRV (1u << 1)"
.LASF2958:
	.string	"SDL_SCANCODE_F11"
.LASF2076:
	.string	"SDL_PROP_RENDERER_VSYNC_NUMBER \"SDL.renderer.vsync\""
.LASF1648:
	.string	"SDLK_LMETA 0x20000004u"
.LASF2997:
	.string	"SDL_SCANCODE_F16"
.LASF984:
	.string	"SDL_MAX_UINT64 SDL_UINT64_C(0xFFFFFFFFFFFFFFFF)"
.LASF2804:
	.string	"SDL_PIXELFORMAT_XRGB4444"
.LASF1471:
	.string	"SDLK_PLUSMINUS 0x000000b1u"
.LASF1882:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_XBOX_ONE_HOME_LED \"SDL_JOYSTICK_HIDAPI_XBOX_ONE_HOME_LED\""
.LASF446:
	.string	"__USE_FORTIFY_LEVEL"
.LASF2974:
	.string	"SDL_SCANCODE_KP_DIVIDE"
.LASF93:
	.string	"__WCHAR_WIDTH__ 32"
.LASF1305:
	.string	"SDL_PROP_WINDOW_CREATE_VULKAN_BOOLEAN \"SDL.window.create.vulkan\""
.LASF3439:
	.string	"SDL_Init"
.LASF699:
	.string	"WCHAR_MIN __WCHAR_MIN"
.LASF1831:
	.string	"SDL_HINT_HIDAPI_LIBUSB \"SDL_HIDAPI_LIBUSB\""
.LASF1291:
	.string	"SDL_PROP_WINDOW_CREATE_HIGH_PIXEL_DENSITY_BOOLEAN \"SDL.window.create.high_pixel_density\""
.LASF1065:
	.string	"SDL_LINE __LINE__"
.LASF3147:
	.string	"SDL_MOUSEWHEEL_NORMAL"
.LASF2386:
	.string	"SDL_GameControllerHasButton SDL_GameControllerHasButton_renamed_SDL_GamepadHasButton"
.LASF826:
	.string	"PRIo64 __PRI64_PREFIX \"o\""
.LASF602:
	.string	"__SYSCALL_ULONG_TYPE __ULONGWORD_TYPE"
.LASF36:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF2662:
	.string	"SDL_ReadLE16 SDL_ReadLE16_renamed_SDL_ReadU16LE"
.LASF491:
	.string	"__ptr_t void *"
.LASF2273:
	.string	"SDL_LASTEVENT SDL_LASTEVENT_renamed_SDL_EVENT_LAST"
.LASF492:
	.string	"__BEGIN_DECLS "
.LASF2191:
	.string	"SDL_atomic_t SDL_atomic_t_renamed_SDL_AtomicInt"
.LASF2563:
	.string	"SDL_SYSTEM_CURSOR_WINDOW_RIGHT SDL_SYSTEM_CURSOR_WINDOW_RIGHT_renamed_SDL_SYSTEM_CURSOR_E_RESIZE"
.LASF3223:
	.string	"SDL_EVENT_MOUSE_REMOVED"
.LASF3127:
	.string	"SDL_SCANCODE_AC_PRINT"
.LASF2345:
	.string	"SDL_CONTROLLER_TYPE_PS3 SDL_CONTROLLER_TYPE_PS3_renamed_SDL_GAMEPAD_TYPE_PS3"
.LASF90:
	.string	"__INT_WIDTH__ 32"
.LASF3129:
	.string	"SDL_SCANCODE_AC_SEARCH"
.LASF382:
	.string	"__SSE_MATH__ 1"
.LASF215:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF1252:
	.string	"SDL_WINDOW_MOUSE_RELATIVE_MODE SDL_UINT64_C(0x0000000000008000)"
.LASF3179:
	.string	"SDL_EVENT_DISPLAY_CURRENT_MODE_CHANGED"
.LASF2670:
	.string	"SDL_WriteLE64 SDL_WriteLE64_renamed_SDL_WriteU64LE"
.LASF1304:
	.string	"SDL_PROP_WINDOW_CREATE_UTILITY_BOOLEAN \"SDL.window.create.utility\""
.LASF2421:
	.string	"SDL_HapticRunEffect SDL_HapticRunEffect_renamed_SDL_RunHapticEffect"
.LASF1491:
	.string	"SDLK_END 0x4000004du"
.LASF2725:
	.string	"SDL_AndroidShowToast SDL_AndroidShowToast_renamed_SDL_ShowAndroidToast"
.LASF3:
	.string	"__STDC_VERSION__ 199901L"
.LASF184:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF1665:
	.string	"SDL_KMOD_SCROLL 0x8000u"
.LASF152:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF329:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF569:
	.string	"__stub_stty "
.LASF2428:
	.string	"SDL_JoystickIsHaptic SDL_JoystickIsHaptic_renamed_SDL_IsJoystickHaptic"
.LASF1958:
	.string	"SDL_HINT_VIDEO_DRIVER \"SDL_VIDEO_DRIVER\""
.LASF1859:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_PS3 \"SDL_JOYSTICK_HIDAPI_PS3\""
.LASF2799:
	.string	"SDL_PIXELFORMAT_INDEX2MSB"
.LASF806:
	.string	"PRIdLEAST64 __PRI64_PREFIX \"d\""
.LASF512:
	.string	"__attribute_alloc_align__(param) __attribute__ ((__alloc_align__ param))"
.LASF989:
	.string	"SDL_PRIs64 PRId64"
.LASF1782:
	.string	"SDL_HINT_ANDROID_TRAP_BACK_BUTTON \"SDL_ANDROID_TRAP_BACK_BUTTON\""
.LASF2702:
	.string	"SDL_GetClipRect SDL_GetClipRect_renamed_SDL_GetSurfaceClipRect"
.LASF103:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF1202:
	.ascii	"SDL_ISPIXELFORMAT_ARRAY(format) (!SDL_ISPIXELFORMAT_FOURCC(f"
	.ascii	"ormat) && ((SDL_P"
	.string	"IXELTYPE(format) == SDL_PIXELTYPE_ARRAYU8) || (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_ARRAYU16) || (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_ARRAYU32) || (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_ARRAYF16) || (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_ARRAYF32)))"
.LASF326:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF2125:
	.string	"SDL_PROP_TEXTURE_SDR_WHITE_POINT_FLOAT \"SDL.texture.SDR_white_point\""
.LASF998:
	.string	"SDL_PRILLd SDL_PRILL_PREFIX \"d\""
.LASF1611:
	.string	"SDLK_MODE 0x40000101u"
.LASF1352:
	.string	"SDL_WINDOW_SURFACE_VSYNC_DISABLED 0"
.LASF3236:
	.string	"SDL_EVENT_GAMEPAD_ADDED"
.LASF2656:
	.string	"SDL_RWsize SDL_RWsize_renamed_SDL_GetIOSize"
.LASF2505:
	.string	"SDLK_AUDIOREWIND SDLK_AUDIOREWIND_renamed_SDLK_MEDIA_REWIND"
.LASF1603:
	.string	"SDLK_LCTRL 0x400000e0u"
.LASF860:
	.string	"PRIX16 \"X\""
.LASF3124:
	.string	"SDL_SCANCODE_AC_CLOSE"
.LASF1240:
	.string	"SDL_WINDOW_HIDDEN SDL_UINT64_C(0x0000000000000008)"
.LASF875:
	.string	"PRIxMAX __PRI64_PREFIX \"x\""
.LASF2751:
	.string	"SDL_GetClosestDisplayMode SDL_GetClosestDisplayMode_renamed_SDL_GetClosestFullscreenDisplayMode"
.LASF2163:
	.string	"SDL_NS_TO_US(NS) ((NS) / SDL_NS_PER_US)"
.LASF1623:
	.string	"SDLK_MEDIA_STOP 0x4000010du"
.LASF364:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF1068:
	.string	"SDL_AssertBreakpoint() SDL_TriggerBreakpoint()"
.LASF14:
	.string	"__ATOMIC_CONSUME 1"
.LASF2495:
	.string	"KMOD_RCTRL KMOD_RCTRL_renamed_SDL_KMOD_RCTRL"
.LASF285:
	.string	"__FLT64X_DIG__ 18"
.LASF748:
	.string	"__HAVE_FLOAT16 0"
.LASF3428:
	.string	"SDL_DestroyRenderer"
.LASF2567:
	.string	"SDL_CondBroadcast SDL_CondBroadcast_renamed_SDL_BroadcastCondition"
.LASF139:
	.string	"__INT_FAST32_WIDTH__ 64"
.LASF388:
	.string	"__linux 1"
.LASF573:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT 0"
.LASF1245:
	.string	"SDL_WINDOW_MOUSE_GRABBED SDL_UINT64_C(0x0000000000000100)"
.LASF846:
	.string	"PRIuFAST64 __PRI64_PREFIX \"u\""
.LASF1875:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_WII \"SDL_JOYSTICK_HIDAPI_WII\""
.LASF24:
	.string	"__SIZEOF_LONG__ 8"
.LASF2744:
	.string	"SDL_COMPILEDVERSION SDL_COMPILEDVERSION_renamed_SDL_VERSION"
.LASF3009:
	.string	"SDL_SCANCODE_SELECT"
.LASF2844:
	.string	"SDL_PIXELFORMAT_RGB96_FLOAT"
.LASF1159:
	.string	"SDL_PROP_IOSTREAM_DYNAMIC_CHUNKSIZE_NUMBER \"SDL.iostream.dynamic.chunksize\""
.LASF2978:
	.string	"SDL_SCANCODE_KP_ENTER"
.LASF42:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF1621:
	.string	"SDLK_MEDIA_NEXT_TRACK 0x4000010bu"
.LASF2240:
	.string	"SDL_CONTROLLERSTEAMHANDLEUPDATED SDL_CONTROLLERSTEAMHANDLEUPDATED_renamed_SDL_EVENT_GAMEPAD_STEAM_HANDLE_UPDATED"
.LASF2055:
	.string	"SDL_PROP_PROCESS_PID_NUMBER \"SDL.process.pid\""
.LASF2715:
	.string	"SDL_UpperBlitScaled SDL_UpperBlitScaled_renamed_SDL_BlitSurfaceScaled"
.LASF132:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF3092:
	.string	"SDL_SCANCODE_KP_CLEAR"
.LASF1390:
	.string	"SDL_keyboard_h_ "
.LASF783:
	.string	"_GCC_WCHAR_T "
.LASF362:
	.string	"__SIZEOF_INT128__ 16"
.LASF1547:
	.string	"SDLK_CANCEL 0x4000009bu"
.LASF194:
	.string	"__LDBL_DECIMAL_DIG__ 21"
.LASF1719:
	.string	"SDL_GPU_SHADERFORMAT_DXBC (1u << 2)"
.LASF1110:
	.string	"SDL_Swap64LE(x) (x)"
.LASF861:
	.string	"PRIX32 \"X\""
.LASF1119:
	.string	"SDL_mutex_h_ "
.LASF1967:
	.string	"SDL_HINT_VIDEO_WAYLAND_ALLOW_LIBDECOR \"SDL_VIDEO_WAYLAND_ALLOW_LIBDECOR\""
.LASF3164:
	.string	"SDL_EVENT_FIRST"
.LASF1606:
	.string	"SDLK_LGUI 0x400000e3u"
.LASF276:
	.string	"__FLT32X_NORM_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF3369:
	.string	"common"
.LASF2281:
	.string	"SDL_RENDER_DEVICE_RESET SDL_RENDER_DEVICE_RESET_renamed_SDL_EVENT_RENDER_DEVICE_RESET"
.LASF2693:
	.string	"SDL_bool SDL_bool_renamed_bool"
.LASF568:
	.string	"__stub_sigreturn "
.LASF1806:
	.string	"SDL_HINT_BMP_SAVE_LEGACY_FORMAT \"SDL_BMP_SAVE_LEGACY_FORMAT\""
.LASF615:
	.string	"__RLIM64_T_TYPE __UQUAD_TYPE"
.LASF1257:
	.string	"SDL_WINDOW_KEYBOARD_GRABBED SDL_UINT64_C(0x0000000000100000)"
.LASF2071:
	.string	"SDL_PROP_RENDERER_CREATE_VULKAN_GRAPHICS_QUEUE_FAMILY_INDEX_NUMBER \"SDL.renderer.create.vulkan.graphics_queue_family_index\""
.LASF2706:
	.string	"SDL_LoadBMP_RW SDL_LoadBMP_RW_renamed_SDL_LoadBMP_IO"
.LASF1888:
	.string	"SDL_HINT_JOYSTICK_MFI \"SDL_JOYSTICK_MFI\""
.LASF74:
	.string	"__INTPTR_TYPE__ long int"
.LASF1151:
	.string	"SDL_iostream_h_ "
.LASF122:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF1587:
	.string	"SDLK_KP_AT 0x400000ceu"
.LASF2761:
	.string	"SDL_WINDOW_INPUT_GRABBED SDL_WINDOW_INPUT_GRABBED_renamed_SDL_WINDOW_MOUSE_GRABBED"
.LASF161:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF2277:
	.string	"SDL_MOUSEMOTION SDL_MOUSEMOTION_renamed_SDL_EVENT_MOUSE_MOTION"
.LASF2503:
	.string	"SDLK_AUDIOPLAY SDLK_AUDIOPLAY_renamed_SDLK_MEDIA_PLAY"
.LASF1327:
	.string	"SDL_PROP_WINDOW_UIKIT_OPENGL_RESOLVE_FRAMEBUFFER_NUMBER \"SDL.window.uikit.opengl.resolve_framebuffer\""
.LASF2480:
	.string	"SDL_JoystickUpdate SDL_JoystickUpdate_renamed_SDL_UpdateJoysticks"
.LASF3293:
	.string	"SDL_KeyboardEvent"
.LASF2264:
	.string	"SDL_JOYBUTTONDOWN SDL_JOYBUTTONDOWN_renamed_SDL_EVENT_JOYSTICK_BUTTON_DOWN"
.LASF1564:
	.string	"SDLK_KP_RIGHTPAREN 0x400000b7u"
.LASF1090:
	.string	"__PDP_ENDIAN 3412"
.LASF2560:
	.string	"SDL_SYSTEM_CURSOR_WINDOW_BOTTOMLEFT SDL_SYSTEM_CURSOR_WINDOW_BOTTOMLEFT_renamed_SDL_SYSTEM_CURSOR_SW_RESIZE"
.LASF1400:
	.string	"SDLK_TAB 0x00000009u"
.LASF1711:
	.string	"SDL_GPU_BUFFERUSAGE_INDEX (1u << 1)"
.LASF975:
	.string	"SDL_MIN_SINT16 ((Sint16)(~0x7FFF))"
.LASF278:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF2359:
	.string	"SDL_GameControllerClose SDL_GameControllerClose_renamed_SDL_CloseGamepad"
.LASF2603:
	.string	"SDL_IntersectRectAndLine SDL_IntersectRectAndLine_renamed_SDL_GetRectAndLineIntersection"
.LASF119:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF2672:
	.string	"SDL_SCANCODE_AUDIOFASTFORWARD SDL_SCANCODE_AUDIOFASTFORWARD_renamed_SDL_SCANCODE_MEDIA_FAST_FORWARD"
.LASF1248:
	.string	"SDL_WINDOW_EXTERNAL SDL_UINT64_C(0x0000000000000800)"
.LASF782:
	.string	"__INT_WCHAR_T_H "
.LASF7:
	.string	"__GNUC_PATCHLEVEL__ 1"
.LASF1137:
	.string	"SDL_REQUIRES(x) SDL_THREAD_ANNOTATION_ATTRIBUTE__(requires_capability(x))"
.LASF614:
	.string	"__RLIM_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF2315:
	.string	"SDL_CONTROLLER_BINDTYPE_BUTTON SDL_CONTROLLER_BINDTYPE_BUTTON_renamed_SDL_GAMEPAD_BINDTYPE_BUTTON"
.LASF1127:
	.string	"SDL_PROP_THREAD_CREATE_NAME_STRING \"SDL.thread.create.name\""
.LASF405:
	.string	"SDL_PLATFORM_UNIX 1"
.LASF60:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF2669:
	.string	"SDL_WriteLE32 SDL_WriteLE32_renamed_SDL_WriteU32LE"
.LASF475:
	.string	"_SYS_CDEFS_H 1"
.LASF1681:
	.string	"SDL_BUTTON_MASK(X) (1u << ((X)-1))"
.LASF2691:
	.string	"SDL_TABLESIZE SDL_TABLESIZE_renamed_SDL_arraysize"
.LASF3258:
	.string	"SDL_EVENT_SENSOR_UPDATE"
.LASF3142:
	.string	"SDL_Keycode"
.LASF908:
	.string	"SCNu16 \"hu\""
.LASF931:
	.string	"SCNx8 \"hhx\""
.LASF1034:
	.string	"SDL_stack_alloc(type,count) (type*)alloca(sizeof(type)*(count))"
.LASF2068:
	.string	"SDL_PROP_RENDERER_CREATE_VULKAN_SURFACE_NUMBER \"SDL.renderer.create.vulkan.surface\""
.LASF2036:
	.string	"SDL_MESSAGEBOX_INFORMATION 0x00000040u"
.LASF1061:
	.string	"SDL_ASSERT_LEVEL 1"
.LASF2704:
	.string	"SDL_HasColorKey SDL_HasColorKey_renamed_SDL_SurfaceHasColorKey"
.LASF1847:
	.string	"SDL_HINT_JOYSTICK_FLIGHTSTICK_DEVICES_EXCLUDED \"SDL_JOYSTICK_FLIGHTSTICK_DEVICES_EXCLUDED\""
.LASF62:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF756:
	.string	"__HAVE_DISTINCT_FLOAT32X 0"
.LASF731:
	.string	"___int_size_t_h "
.LASF2564:
	.string	"SDL_SYSTEM_CURSOR_WINDOW_TOP SDL_SYSTEM_CURSOR_WINDOW_TOP_renamed_SDL_SYSTEM_CURSOR_N_RESIZE"
.LASF3163:
	.string	"SDL_EventType"
.LASF673:
	.string	"UINT_LEAST16_MAX (65535)"
.LASF1338:
	.string	"SDL_PROP_WINDOW_WIN32_HDC_POINTER \"SDL.window.win32.hdc\""
.LASF2025:
	.string	"SDL_PROP_APP_METADATA_IDENTIFIER_STRING \"SDL.app.metadata.identifier\""
.LASF739:
	.string	"_WCHAR_H 1"
.LASF959:
	.string	"alloca __builtin_alloca"
.LASF2033:
	.string	"SDL_messagebox_h_ "
.LASF246:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF1631:
	.string	"SDLK_AC_SAVE 0x40000115u"
.LASF2155:
	.string	"SDL_NS_PER_SECOND 1000000000LL"
.LASF393:
	.string	"__DECIMAL_BID_FORMAT__ 1"
.LASF2060:
	.string	"SDL_render_h_ "
.LASF1840:
	.string	"SDL_HINT_JOYSTICK_ARCADESTICK_DEVICES \"SDL_JOYSTICK_ARCADESTICK_DEVICES\""
.LASF1040:
	.string	"SDL_copyp(dst,src) { SDL_COMPILE_TIME_ASSERT(SDL_copyp, sizeof (*(dst)) == sizeof (*(src))); } SDL_memcpy((dst), (src), sizeof(*(src)))"
.LASF1121:
	.string	"SDL_properties_h_ "
.LASF517:
	.string	"__attribute_noinline__ __attribute__ ((__noinline__))"
.LASF199:
	.string	"__LDBL_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951L"
.LASF1539:
	.string	"SDLK_FIND 0x4000007eu"
.LASF2190:
	.string	"SDL_AtomicUnlock SDL_AtomicUnlock_renamed_SDL_UnlockSpinlock"
.LASF2326:
	.string	"SDL_CONTROLLER_BUTTON_INVALID SDL_CONTROLLER_BUTTON_INVALID_renamed_SDL_GAMEPAD_BUTTON_INVALID"
.LASF168:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF1133:
	.string	"SDL_GUARDED_BY(x) SDL_THREAD_ANNOTATION_ATTRIBUTE__(guarded_by(x))"
.LASF686:
	.string	"UINT_FAST32_MAX (18446744073709551615UL)"
.LASF2509:
	.string	"SDLK_MEDIASELECT SDLK_MEDIASELECT_renamed_SDLK_MEDIA_SELECT"
.LASF2310:
	.string	"SDL_CONTROLLER_AXIS_RIGHTX SDL_CONTROLLER_AXIS_RIGHTX_renamed_SDL_GAMEPAD_AXIS_RIGHTX"
.LASF3015:
	.string	"SDL_SCANCODE_PASTE"
.LASF369:
	.string	"__x86_64__ 1"
.LASF827:
	.string	"PRIoLEAST8 \"o\""
.LASF2360:
	.string	"SDL_GameControllerFromInstanceID SDL_GameControllerFromInstanceID_renamed_SDL_GetGamepadFromID"
.LASF82:
	.string	"__WCHAR_MAX__ 0x7fffffff"
.LASF2262:
	.string	"SDL_JOYAXISMOTION SDL_JOYAXISMOTION_renamed_SDL_EVENT_JOYSTICK_AXIS_MOTION"
.LASF1955:
	.string	"SDL_HINT_VIDEO_ALLOW_SCREENSAVER \"SDL_VIDEO_ALLOW_SCREENSAVER\""
.LASF1688:
	.string	"SDL_touch_h_ "
.LASF2172:
	.string	"SDL_MINOR_VERSION 2"
.LASF3362:
	.string	"owner"
.LASF1445:
	.string	"SDLK_F 0x00000066u"
.LASF793:
	.string	"____FILE_defined 1"
.LASF444:
	.string	"__USE_DYNAMIC_STACK_SIZE"
.LASF304:
	.string	"__BFLT16_MAX_EXP__ 128"
.LASF1723:
	.string	"SDL_GPU_COLORCOMPONENT_R (1u << 0)"
.LASF223:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF2565:
	.string	"SDL_SYSTEM_CURSOR_WINDOW_TOPLEFT SDL_SYSTEM_CURSOR_WINDOW_TOPLEFT_renamed_SDL_SYSTEM_CURSOR_NW_RESIZE"
.LASF291:
	.string	"__FLT64X_MAX__ 1.18973149535723176502126385303097021e+4932F64x"
.LASF1824:
	.string	"SDL_HINT_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT \"SDL_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT\""
.LASF1456:
	.string	"SDLK_Q 0x00000071u"
.LASF52:
	.string	"__INT32_TYPE__ int"
.LASF2554:
	.string	"SDL_SYSTEM_CURSOR_SIZENESW SDL_SYSTEM_CURSOR_SIZENESW_renamed_SDL_SYSTEM_CURSOR_NESW_RESIZE"
.LASF287:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF1498:
	.string	"SDLK_KP_DIVIDE 0x40000054u"
.LASF305:
	.string	"__BFLT16_MAX_10_EXP__ 38"
.LASF2305:
	.string	"SDL_eventaction SDL_eventaction_renamed_SDL_EventAction"
.LASF495:
	.string	"__bos(ptr) __builtin_object_size (ptr, __USE_FORTIFY_LEVEL > 1)"
.LASF2453:
	.string	"SDL_JoystickGetFirmwareVersion SDL_JoystickGetFirmwareVersion_renamed_SDL_GetJoystickFirmwareVersion"
.LASF2436:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_PS5_RUMBLE SDL_HINT_JOYSTICK_HIDAPI_PS5_RUMBLE_renamed_SDL_HINT_JOYSTICK_ENHANCED_REPORTS"
.LASF646:
	.string	"__WCHAR_MAX __WCHAR_MAX__"
.LASF156:
	.string	"__FLT_DIG__ 6"
.LASF967:
	.ascii	"SDL_FOURCC(A,"
	.string	"B,C,D) ((SDL_static_cast(Uint32, SDL_static_cast(Uint8, (A))) << 0) | (SDL_static_cast(Uint32, SDL_static_cast(Uint8, (B))) << 8) | (SDL_static_cast(Uint32, SDL_static_cast(Uint8, (C))) << 16) | (SDL_static_cast(Uint32, SDL_static_cast(Uint8, (D))) << 24))"
.LASF2562:
	.string	"SDL_SYSTEM_CURSOR_WINDOW_LEFT SDL_SYSTEM_CURSOR_WINDOW_LEFT_renamed_SDL_SYSTEM_CURSOR_W_RESIZE"
.LASF2199:
	.string	"AUDIO_S16SYS AUDIO_S16SYS_renamed_SDL_AUDIO_S16"
.LASF1058:
	.string	"SDL_size_add_check_overflow(a,b,ret) SDL_size_add_check_overflow_builtin(a, b, ret)"
.LASF130:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF2212:
	.string	"SDL_FreeWAV SDL_FreeWAV_renamed_SDL_free"
.LASF3454:
	.string	"__builtin___ubsan_handle_mul_overflow"
.LASF3324:
	.string	"axis"
.LASF543:
	.string	"__LDBL_REDIR1(name,proto,alias) name proto"
.LASF1382:
	.string	"SDL_HAT_RIGHTDOWN (SDL_HAT_RIGHT|SDL_HAT_DOWN)"
.LASF1393:
	.string	"SDLK_EXTENDED_MASK (1u << 29)"
.LASF1108:
	.string	"SDL_Swap16LE(x) (x)"
.LASF867:
	.string	"PRIXFAST8 \"X\""
.LASF1639:
	.string	"SDLK_AC_REFRESH 0x4000011du"
.LASF2258:
	.string	"SDL_FINGERDOWN SDL_FINGERDOWN_renamed_SDL_EVENT_FINGER_DOWN"
.LASF2839:
	.string	"SDL_PIXELFORMAT_BGR48_FLOAT"
.LASF1617:
	.string	"SDLK_MEDIA_PAUSE 0x40000107u"
.LASF3284:
	.string	"timestamp"
.LASF1001:
	.string	"SDL_PRILLX SDL_PRILL_PREFIX \"X\""
.LASF3085:
	.string	"SDL_SCANCODE_KP_MEMRECALL"
.LASF1163:
	.string	"SDL_AUDIO_MASK_SIGNED (1u<<15)"
.LASF1873:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_SWITCH_PLAYER_LED \"SDL_JOYSTICK_HIDAPI_SWITCH_PLAYER_LED\""
.LASF3241:
	.string	"SDL_EVENT_GAMEPAD_TOUCHPAD_UP"
.LASF3152:
	.string	"SDL_PenID"
.LASF1734:
	.string	"SDL_PROP_GPU_DEVICE_CREATE_SHADERS_MSL_BOOLEAN \"SDL.gpu.device.create.shaders.msl\""
.LASF191:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF1733:
	.string	"SDL_PROP_GPU_DEVICE_CREATE_SHADERS_DXIL_BOOLEAN \"SDL.gpu.device.create.shaders.dxil\""
.LASF727:
	.string	"_SIZE_T_DEFINED "
.LASF2083:
	.string	"SDL_PROP_RENDERER_D3D9_DEVICE_POINTER \"SDL.renderer.d3d9.device\""
.LASF3256:
	.string	"SDL_EVENT_AUDIO_DEVICE_REMOVED"
.LASF2224:
	.string	"SDL_APP_DIDENTERBACKGROUND SDL_APP_DIDENTERBACKGROUND_renamed_SDL_EVENT_DID_ENTER_BACKGROUND"
.LASF2497:
	.string	"KMOD_RSHIFT KMOD_RSHIFT_renamed_SDL_KMOD_RSHIFT"
.LASF1267:
	.string	"SDL_WINDOWPOS_CENTERED_DISPLAY(X) (SDL_WINDOWPOS_CENTERED_MASK|(X))"
.LASF3405:
	.string	"SDL_LOG_CATEGORY_APPLICATION"
.LASF1371:
	.string	"SDL_PROP_JOYSTICK_CAP_MONO_LED_BOOLEAN \"SDL.joystick.cap.mono_led\""
.LASF1542:
	.string	"SDLK_VOLUMEDOWN 0x40000081u"
.LASF313:
	.string	"__BFLT16_HAS_INFINITY__ 1"
.LASF1281:
	.string	"SDL_PROP_DISPLAY_HDR_ENABLED_BOOLEAN \"SDL.display.HDR_enabled\""
.LASF751:
	.string	"__HAVE_FLOAT32X 1"
.LASF3396:
	.string	"pmotion"
.LASF178:
	.string	"__DBL_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF272:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF2008:
	.string	"SDL_HINT_X11_WINDOW_TYPE \"SDL_X11_WINDOW_TYPE\""
.LASF693:
	.string	"UINTMAX_MAX (__UINT64_C(18446744073709551615))"
.LASF1363:
	.string	"SDL_gamepad_h_ "
.LASF1868:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_STEAM_HOME_LED \"SDL_JOYSTICK_HIDAPI_STEAM_HOME_LED\""
.LASF118:
	.string	"__INT16_C(c) c"
.LASF2714:
	.string	"SDL_UpperBlit SDL_UpperBlit_renamed_SDL_BlitSurface"
.LASF114:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF779:
	.string	"_WCHAR_T_DEFINED "
.LASF1482:
	.string	"SDLK_F10 0x40000043u"
.LASF1207:
	.string	"SDL_DEFINE_COLORSPACE(type,range,primaries,transfer,matrix,chroma) (((Uint32)(type) << 28) | ((Uint32)(range) << 24) | ((Uint32)(chroma) << 20) | ((Uint32)(primaries) << 10) | ((Uint32)(transfer) << 5) | ((Uint32)(matrix) << 0))"
.LASF565:
	.string	"__stub_gtty "
.LASF2058:
	.string	"SDL_PROP_PROCESS_STDERR_POINTER \"SDL.process.stderr\""
.LASF2492:
	.string	"KMOD_NONE KMOD_NONE_renamed_SDL_KMOD_NONE"
.LASF3435:
	.string	"SDL_SetRenderDrawColor"
.LASF596:
	.string	"__ULONG32_TYPE unsigned int"
.LASF2885:
	.string	"SDL_POWERSTATE_UNKNOWN"
.LASF1055:
	.string	"SDL_iconv_utf8_ucs4(S) (Uint32 *)SDL_iconv_string(\"UCS-4\", \"UTF-8\", S, SDL_strlen(S)+1)"
.LASF2370:
	.string	"SDL_GameControllerGetJoystick SDL_GameControllerGetJoystick_renamed_SDL_GetGamepadJoystick"
.LASF424:
	.string	"__USE_ISOC11"
.LASF1404:
	.string	"SDLK_HASH 0x00000023u"
.LASF1593:
	.string	"SDLK_KP_MEMSUBTRACT 0x400000d4u"
.LASF2020:
	.string	"SDL_INIT_EVENTS 0x00004000u"
.LASF3427:
	.string	"SDL_DestroyWindow"
.LASF890:
	.string	"SCNdLEAST64 __PRI64_PREFIX \"d\""
.LASF2537:
	.string	"SDLK_z SDLK_z_renamed_SDLK_Z"
.LASF470:
	.string	"__GNU_LIBRARY__"
.LASF1610:
	.string	"SDLK_RGUI 0x400000e7u"
.LASF1355:
	.string	"SDL_PROP_FILE_DIALOG_NFILTERS_NUMBER \"SDL.filedialog.nfilters\""
.LASF1074:
	.string	"SDL_asyncio_h_ "
.LASF2328:
	.string	"SDL_CONTROLLER_BUTTON_LEFTSTICK SDL_CONTROLLER_BUTTON_LEFTSTICK_renamed_SDL_GAMEPAD_BUTTON_LEFT_STICK"
.LASF1101:
	.string	"SDL_Swap16(x) __builtin_bswap16(x)"
.LASF1389:
	.string	"SDL_PROP_GAMEPAD_CAP_TRIGGER_RUMBLE_BOOLEAN SDL_PROP_JOYSTICK_CAP_TRIGGER_RUMBLE_BOOLEAN"
.LASF2064:
	.string	"SDL_PROP_RENDERER_CREATE_SURFACE_POINTER \"SDL.renderer.create.surface\""
.LASF1538:
	.string	"SDLK_PASTE 0x4000007du"
.LASF2837:
	.string	"SDL_PIXELFORMAT_ABGR64"
.LASF2578:
	.string	"SDL_cond SDL_cond_renamed_SDL_Condition"
.LASF3452:
	.string	"main"
.LASF882:
	.string	"PRIXPTR __PRIPTR_PREFIX \"X\""
.LASF2806:
	.string	"SDL_PIXELFORMAT_XRGB1555"
.LASF2404:
	.string	"SDL_IsGameController SDL_IsGameController_renamed_SDL_IsGamepad"
.LASF3262:
	.string	"SDL_EVENT_PEN_UP"
.LASF1696:
	.string	"SDL_PEN_INPUT_BUTTON_3 (1u << 3)"
.LASF1315:
	.string	"SDL_PROP_WINDOW_CREATE_WIN32_PIXEL_FORMAT_HWND_POINTER \"SDL.window.create.win32.pixel_format_hwnd\""
.LASF195:
	.string	"__LDBL_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF2034:
	.string	"SDL_MESSAGEBOX_ERROR 0x00000010u"
.LASF1759:
	.string	"SDL_HAPTIC_DAMPER (1u<<8)"
.LASF270:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF679:
	.string	"INT_FAST64_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF1996:
	.string	"SDL_HINT_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN \"SDL_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN\""
.LASF1797:
	.string	"SDL_HINT_AUDIO_DISK_OUTPUT_FILE \"SDL_AUDIO_DISK_OUTPUT_FILE\""
.LASF2598:
	.string	"SDL_HasIntersection SDL_HasIntersection_renamed_SDL_HasRectIntersection"
.LASF3255:
	.string	"SDL_EVENT_AUDIO_DEVICE_ADDED"
.LASF987:
	.string	"SDL_MIN_TIME SDL_MIN_SINT64"
.LASF3047:
	.string	"SDL_SCANCODE_OUT"
.LASF1340:
	.string	"SDL_PROP_WINDOW_WAYLAND_DISPLAY_POINTER \"SDL.window.wayland.display\""
.LASF2684:
	.string	"SDL_SensorGetInstanceID SDL_SensorGetInstanceID_renamed_SDL_GetSensorID"
.LASF1140:
	.string	"SDL_ACQUIRE_SHARED(x) SDL_THREAD_ANNOTATION_ATTRIBUTE__(acquire_shared_capability(x))"
.LASF244:
	.string	"__FLT64_NORM_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF1422:
	.string	"SDLK_5 0x00000035u"
.LASF1263:
	.string	"SDL_WINDOWPOS_UNDEFINED_DISPLAY(X) (SDL_WINDOWPOS_UNDEFINED_MASK|(X))"
.LASF3055:
	.string	"SDL_SCANCODE_DECIMALSEPARATOR"
.LASF1870:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_STEAM_HORI \"SDL_JOYSTICK_HIDAPI_STEAM_HORI\""
.LASF2645:
	.string	"SDL_ScaleModeNearest SDL_ScaleModeNearest_renamed_SDL_SCALEMODE_NEAREST"
.LASF325:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF800:
	.string	"PRId16 \"d\""
.LASF1841:
	.string	"SDL_HINT_JOYSTICK_ARCADESTICK_DEVICES_EXCLUDED \"SDL_JOYSTICK_ARCADESTICK_DEVICES_EXCLUDED\""
.LASF2241:
	.string	"SDL_CONTROLLERTOUCHPADDOWN SDL_CONTROLLERTOUCHPADDOWN_renamed_SDL_EVENT_GAMEPAD_TOUCHPAD_DOWN"
.LASF879:
	.string	"PRIoPTR __PRIPTR_PREFIX \"o\""
.LASF896:
	.string	"SCNi16 \"hi\""
.LASF1450:
	.string	"SDLK_K 0x0000006bu"
.LASF2448:
	.string	"SDL_JoystickGetAttached SDL_JoystickGetAttached_renamed_SDL_JoystickConnected"
.LASF3132:
	.string	"SDL_SCANCODE_AC_FORWARD"
.LASF1050:
	.string	"SDL_ICONV_E2BIG (size_t)-2"
.LASF241:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF594:
	.string	"__UWORD_TYPE unsigned long int"
.LASF2308:
	.string	"SDL_CONTROLLER_AXIS_LEFTY SDL_CONTROLLER_AXIS_LEFTY_renamed_SDL_GAMEPAD_AXIS_LEFTY"
.LASF2988:
	.string	"SDL_SCANCODE_KP_0"
.LASF2979:
	.string	"SDL_SCANCODE_KP_1"
.LASF2980:
	.string	"SDL_SCANCODE_KP_2"
.LASF1769:
	.string	"SDL_HAPTIC_STATUS (1u<<18)"
.LASF2982:
	.string	"SDL_SCANCODE_KP_4"
.LASF2983:
	.string	"SDL_SCANCODE_KP_5"
.LASF2984:
	.string	"SDL_SCANCODE_KP_6"
.LASF274:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF2986:
	.string	"SDL_SCANCODE_KP_8"
.LASF1819:
	.string	"SDL_HINT_FRAMEBUFFER_ACCELERATION \"SDL_FRAMEBUFFER_ACCELERATION\""
.LASF258:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF1975:
	.string	"SDL_HINT_VIDEO_X11_NODIRECTCOLOR \"SDL_VIDEO_X11_NODIRECTCOLOR\""
.LASF1080:
	.string	"SDL_AtomicIncRef(a) SDL_AddAtomicInt(a, 1)"
.LASF2280:
	.string	"SDL_QUIT SDL_QUIT_renamed_SDL_EVENT_QUIT"
.LASF915:
	.string	"SCNuFAST8 \"hhu\""
.LASF3066:
	.string	"SDL_SCANCODE_KP_C"
.LASF2200:
	.string	"AUDIO_S32 AUDIO_S32_renamed_SDL_AUDIO_S32LE"
.LASF3068:
	.string	"SDL_SCANCODE_KP_E"
.LASF1239:
	.string	"SDL_WINDOW_OCCLUDED SDL_UINT64_C(0x0000000000000004)"
.LASF79:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF1813:
	.string	"SDL_HINT_EMSCRIPTEN_CANVAS_SELECTOR \"SDL_EMSCRIPTEN_CANVAS_SELECTOR\""
.LASF700:
	.string	"WCHAR_MAX __WCHAR_MAX"
.LASF1990:
	.string	"SDL_HINT_WAVE_CHUNK_LIMIT \"SDL_WAVE_CHUNK_LIMIT\""
.LASF828:
	.string	"PRIoLEAST16 \"o\""
.LASF2335:
	.string	"SDL_CONTROLLER_BUTTON_RIGHTSHOULDER SDL_CONTROLLER_BUTTON_RIGHTSHOULDER_renamed_SDL_GAMEPAD_BUTTON_RIGHT_SHOULDER"
.LASF1830:
	.string	"SDL_HINT_GDK_TEXTINPUT_TITLE \"SDL_GDK_TEXTINPUT_TITLE\""
.LASF1487:
	.string	"SDLK_PAUSE 0x40000048u"
.LASF2775:
	.string	"__uint16_t"
.LASF2539:
	.string	"SDL_LogGetPriority SDL_LogGetPriority_renamed_SDL_GetLogPriority"
.LASF3172:
	.string	"SDL_EVENT_LOCALE_CHANGED"
.LASF994:
	.string	"SDL_PRIu32 PRIu32"
.LASF1479:
	.string	"SDLK_F7 0x40000040u"
.LASF1525:
	.string	"SDLK_F21 0x40000070u"
.LASF3011:
	.string	"SDL_SCANCODE_AGAIN"
.LASF1366:
	.string	"SDL_power_h_ "
.LASF3140:
	.string	"SDL_SCANCODE_RESERVED"
.LASF689:
	.string	"INTPTR_MAX (9223372036854775807L)"
.LASF2069:
	.string	"SDL_PROP_RENDERER_CREATE_VULKAN_PHYSICAL_DEVICE_POINTER \"SDL.renderer.create.vulkan.physical_device\""
.LASF2173:
	.string	"SDL_MICRO_VERSION 5"
.LASF1971:
	.string	"SDL_HINT_VIDEO_WAYLAND_SCALE_TO_DISPLAY \"SDL_VIDEO_WAYLAND_SCALE_TO_DISPLAY\""
.LASF1187:
	.string	"SDL_pixels_h_ "
.LASF26:
	.string	"__SIZEOF_SHORT__ 2"
.LASF2109:
	.string	"SDL_PROP_TEXTURE_CREATE_D3D12_TEXTURE_V_POINTER \"SDL.texture.create.d3d12.texture_v\""
.LASF2787:
	.string	"Uint8"
.LASF3203:
	.string	"SDL_EVENT_WINDOW_OCCLUDED"
.LASF685:
	.string	"UINT_FAST16_MAX (18446744073709551615UL)"
.LASF3382:
	.string	"jbutton"
.LASF311:
	.string	"__BFLT16_DENORM_MIN__ 9.18354961579912115600575419704879436e-41BF16"
.LASF406:
	.string	"_STDARG_H "
.LASF1922:
	.string	"SDL_HINT_MUTE_CONSOLE_KEYBOARD \"SDL_MUTE_CONSOLE_KEYBOARD\""
.LASF45:
	.string	"__INTMAX_TYPE__ long int"
.LASF744:
	.string	"__HAVE_FLOAT64X_LONG_DOUBLE 1"
.LASF669:
	.string	"INT_LEAST16_MAX (32767)"
.LASF72:
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
.LASF2192:
	.string	"AUDIO_F32 AUDIO_F32_renamed_SDL_AUDIO_F32LE"
.LASF819:
	.string	"PRIiFAST8 \"i\""
.LASF3246:
	.string	"SDL_EVENT_FINGER_UP"
.LASF1549:
	.string	"SDLK_PRIOR 0x4000009du"
.LASF226:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF2663:
	.string	"SDL_ReadLE32 SDL_ReadLE32_renamed_SDL_ReadU32LE"
.LASF3269:
	.string	"SDL_EVENT_CAMERA_DEVICE_APPROVED"
.LASF1358:
	.string	"SDL_PROP_FILE_DIALOG_MANY_BOOLEAN \"SDL.filedialog.many\""
.LASF2134:
	.string	"SDL_PROP_TEXTURE_OPENGL_TEXTURE_UV_NUMBER \"SDL.texture.opengl.texture_uv\""
.LASF2652:
	.string	"SDL_RWclose SDL_RWclose_renamed_SDL_CloseIO"
.LASF3414:
	.string	"SDL_LOG_CATEGORY_GPU"
.LASF402:
	.string	"SDL_stdinc_h_ "
.LASF2786:
	.string	"uint64_t"
.LASF2323:
	.string	"SDL_CONTROLLER_BUTTON_DPAD_RIGHT SDL_CONTROLLER_BUTTON_DPAD_RIGHT_renamed_SDL_GAMEPAD_BUTTON_DPAD_RIGHT"
.LASF1607:
	.string	"SDLK_RCTRL 0x400000e4u"
.LASF3282:
	.string	"SDL_CommonEvent"
.LASF158:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF218:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF100:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF2276:
	.string	"SDL_MOUSEBUTTONUP SDL_MOUSEBUTTONUP_renamed_SDL_EVENT_MOUSE_BUTTON_UP"
.LASF2178:
	.string	"SDL_VERSION SDL_VERSIONNUM(SDL_MAJOR_VERSION, SDL_MINOR_VERSION, SDL_MICRO_VERSION)"
.LASF549:
	.string	"__REDIRECT_LDBL(name,proto,alias) __REDIRECT (name, proto, alias)"
.LASF3267:
	.string	"SDL_EVENT_CAMERA_DEVICE_ADDED"
.LASF511:
	.string	"__attribute_alloc_size__(params) __attribute__ ((__alloc_size__ params))"
.LASF3105:
	.string	"SDL_SCANCODE_RGUI"
.LASF1056:
	.string	"SDL_iconv_wchar_utf8(S) SDL_iconv_string(\"UTF-8\", \"WCHAR_T\", (char *)S, (SDL_wcslen(S)+1)*sizeof(wchar_t))"
.LASF1333:
	.string	"SDL_PROP_WINDOW_OPENVR_OVERLAY_ID \"SDL.window.openvr.overlay_id\""
.LASF3268:
	.string	"SDL_EVENT_CAMERA_DEVICE_REMOVED"
.LASF3173:
	.string	"SDL_EVENT_SYSTEM_THEME_CHANGED"
.LASF2545:
	.string	"SDL_MESSAGEBOX_COLOR_MAX SDL_MESSAGEBOX_COLOR_MAX_renamed_SDL_MESSAGEBOX_COLOR_COUNT"
.LASF455:
	.string	"__glibc_clang_prereq(maj,min) 0"
.LASF3243:
	.string	"SDL_EVENT_GAMEPAD_UPDATE_COMPLETE"
.LASF2049:
	.string	"SDL_PROP_PROCESS_CREATE_STDOUT_NUMBER \"SDL.process.create.stdout_option\""
.LASF1777:
	.string	"SDL_hints_h_ "
.LASF1534:
	.string	"SDLK_AGAIN 0x40000079u"
.LASF1635:
	.string	"SDLK_AC_HOME 0x40000119u"
.LASF2123:
	.string	"SDL_PROP_TEXTURE_WIDTH_NUMBER \"SDL.texture.width\""
.LASF2039:
	.string	"SDL_MESSAGEBOX_BUTTON_RETURNKEY_DEFAULT 0x00000001u"
.LASF2159:
	.string	"SDL_NS_TO_SECONDS(NS) ((NS) / SDL_NS_PER_SECOND)"
.LASF2439:
	.string	"SDL_HINT_LINUX_JOYSTICK_CLASSIC SDL_HINT_LINUX_JOYSTICK_CLASSIC_renamed_SDL_HINT_JOYSTICK_LINUX_CLASSIC"
.LASF652:
	.string	"INT8_MIN (-128)"
.LASF2863:
	.string	"SDL_PIXELFORMAT_ABGR32"
.LASF3207:
	.string	"SDL_EVENT_WINDOW_HDR_STATE_CHANGED"
.LASF1503:
	.string	"SDLK_KP_1 0x40000059u"
.LASF2104:
	.string	"SDL_PROP_TEXTURE_CREATE_D3D11_TEXTURE_POINTER \"SDL.texture.create.d3d11.texture\""
.LASF2236:
	.string	"SDL_CONTROLLERDEVICEADDED SDL_CONTROLLERDEVICEADDED_renamed_SDL_EVENT_GAMEPAD_ADDED"
.LASF695:
	.string	"PTRDIFF_MAX (9223372036854775807L)"
.LASF3049:
	.string	"SDL_SCANCODE_CLEARAGAIN"
.LASF1705:
	.string	"SDL_GPU_TEXTUREUSAGE_DEPTH_STENCIL_TARGET (1u << 2)"
.LASF3067:
	.string	"SDL_SCANCODE_KP_D"
.LASF3370:
	.string	"display"
.LASF735:
	.string	"__need_size_t"
.LASF2579:
	.string	"SDL_mutex SDL_mutex_renamed_SDL_Mutex"
.LASF86:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF196:
	.string	"__LDBL_NORM_MAX__ 1.18973149535723176502126385303097021e+4932L"
.LASF250:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF459:
	.string	"__USE_ISOC99 1"
.LASF3380:
	.string	"jball"
.LASF1019:
	.string	"SDL_UNUSED __attribute__((unused))"
.LASF300:
	.string	"__BFLT16_MANT_DIG__ 8"
.LASF3373:
	.string	"edit"
.LASF1574:
	.string	"SDLK_KP_F 0x400000c1u"
.LASF253:
	.string	"__FLT128_DIG__ 33"
.LASF2133:
	.string	"SDL_PROP_TEXTURE_OPENGL_TEXTURE_NUMBER \"SDL.texture.opengl.texture\""
.LASF2807:
	.string	"SDL_PIXELFORMAT_XBGR1555"
.LASF2938:
	.string	"SDL_SCANCODE_RIGHTBRACKET"
.LASF874:
	.string	"PRIuMAX __PRI64_PREFIX \"u\""
.LASF378:
	.string	"__MMX__ 1"
.LASF2437:
	.string	"SDL_HINT_LINUX_DIGITAL_HATS SDL_HINT_LINUX_DIGITAL_HATS_renamed_SDL_HINT_JOYSTICK_LINUX_DIGITAL_HATS"
.LASF451:
	.string	"__GLIBC_USE_DEPRECATED_SCANF"
.LASF3318:
	.string	"padding"
.LASF2705:
	.string	"SDL_HasSurfaceRLE SDL_HasSurfaceRLE_renamed_SDL_SurfaceHasRLE"
.LASF1492:
	.string	"SDLK_PAGEDOWN 0x4000004eu"
.LASF2609:
	.string	"SDL_RenderCopy SDL_RenderCopy_renamed_SDL_RenderTexture"
.LASF2793:
	.string	"_Bool"
.LASF44:
	.string	"__WINT_TYPE__ unsigned int"
.LASF3371:
	.string	"window"
.LASF3060:
	.string	"SDL_SCANCODE_KP_LEFTBRACE"
.LASF3079:
	.string	"SDL_SCANCODE_KP_COLON"
.LASF3043:
	.string	"SDL_SCANCODE_CLEAR"
.LASF232:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF131:
	.string	"__UINT32_C(c) c ## U"
.LASF1964:
	.string	"SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS \"SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS\""
.LASF2061:
	.string	"SDL_SOFTWARE_RENDERER \"software\""
.LASF648:
	.string	"_BITS_STDINT_INTN_H 1"
.LASF1805:
	.string	"SDL_HINT_AUTO_UPDATE_SENSORS \"SDL_AUTO_UPDATE_SENSORS\""
.LASF429:
	.string	"__USE_POSIX2"
.LASF698:
	.string	"SIZE_MAX (18446744073709551615UL)"
.LASF1132:
	.string	"SDL_SCOPED_CAPABILITY SDL_THREAD_ANNOTATION_ATTRIBUTE__(scoped_lockable)"
.LASF71:
	.string	"__UINT_FAST16_TYPE__ long unsigned int"
.LASF2101:
	.string	"SDL_PROP_TEXTURE_CREATE_HEIGHT_NUMBER \"SDL.texture.create.height\""
.LASF3393:
	.string	"tfinger"
.LASF776:
	.string	"_WCHAR_T_ "
.LASF2815:
	.string	"SDL_PIXELFORMAT_BGRA5551"
.LASF1634:
	.string	"SDLK_AC_SEARCH 0x40000118u"
.LASF2235:
	.string	"SDL_CONTROLLERBUTTONUP SDL_CONTROLLERBUTTONUP_renamed_SDL_EVENT_GAMEPAD_BUTTON_UP"
.LASF2621:
	.string	"SDL_RenderDrawRect SDL_RenderDrawRect_renamed_SDL_RenderRect"
.LASF2765:
	.string	"TILE_SIZE 16"
.LASF1473:
	.string	"SDLK_F1 0x4000003au"
.LASF3178:
	.string	"SDL_EVENT_DISPLAY_DESKTOP_MODE_CHANGED"
.LASF2795:
	.string	"SDL_PIXELFORMAT_UNKNOWN"
.LASF351:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF1374:
	.string	"SDL_PROP_JOYSTICK_CAP_RUMBLE_BOOLEAN \"SDL.joystick.cap.rumble\""
.LASF480:
	.string	"__LEAF , __leaf__"
.LASF1988:
	.string	"SDL_HINT_VULKAN_LIBRARY \"SDL_VULKAN_LIBRARY\""
.LASF3096:
	.string	"SDL_SCANCODE_KP_DECIMAL"
.LASF1828:
	.string	"SDL_HINT_GDK_TEXTINPUT_MAX_LENGTH \"SDL_GDK_TEXTINPUT_MAX_LENGTH\""
.LASF2136:
	.string	"SDL_PROP_TEXTURE_OPENGL_TEXTURE_V_NUMBER \"SDL.texture.opengl.texture_v\""
.LASF47:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF38:
	.string	"__SIZEOF_POINTER__ 8"
.LASF2694:
	.string	"SDL_size_add_overflow SDL_size_add_overflow_renamed_SDL_size_add_check_overflow"
.LASF55:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF674:
	.string	"UINT_LEAST32_MAX (4294967295U)"
.LASF1162:
	.string	"SDL_AUDIO_MASK_BIG_ENDIAN (1u<<12)"
.LASF1517:
	.string	"SDLK_F13 0x40000068u"
.LASF111:
	.string	"__UINT16_MAX__ 0xffff"
.LASF821:
	.string	"PRIiFAST32 __PRIPTR_PREFIX \"i\""
.LASF2587:
	.string	"SDL_PIXELFORMAT_BGR555 SDL_PIXELFORMAT_BGR555_renamed_SDL_PIXELFORMAT_XBGR1555"
.LASF2962:
	.string	"SDL_SCANCODE_PAUSE"
.LASF2213:
	.string	"SDL_LoadWAV_RW SDL_LoadWAV_RW_renamed_SDL_LoadWAV_IO"
.LASF600:
	.string	"_BITS_TYPESIZES_H 1"
.LASF2294:
	.string	"SDL_WINDOWEVENT_HIDDEN SDL_WINDOWEVENT_HIDDEN_renamed_SDL_EVENT_WINDOW_HIDDEN"
.LASF2888:
	.string	"SDL_POWERSTATE_CHARGING"
.LASF288:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF2290:
	.string	"SDL_WINDOWEVENT_ENTER SDL_WINDOWEVENT_ENTER_renamed_SDL_EVENT_WINDOW_MOUSE_ENTER"
.LASF2740:
	.string	"SDL_TLSGet SDL_TLSGet_renamed_SDL_GetTLS"
.LASF2003:
	.string	"SDL_HINT_WINDOWS_INTRESOURCE_ICON \"SDL_WINDOWS_INTRESOURCE_ICON\""
.LASF2589:
	.string	"SDL_PIXELFORMAT_RGB444 SDL_PIXELFORMAT_RGB444_renamed_SDL_PIXELFORMAT_XRGB4444"
.LASF527:
	.string	"__always_inline"
.LASF597:
	.string	"__S64_TYPE long int"
.LASF2712:
	.string	"SDL_SetClipRect SDL_SetClipRect_renamed_SDL_SetSurfaceClipRect"
.LASF3020:
	.string	"SDL_SCANCODE_KP_COMMA"
.LASF2372:
	.string	"SDL_GameControllerGetNumTouchpads SDL_GameControllerGetNumTouchpads_renamed_SDL_GetNumGamepadTouchpads"
.LASF1410:
	.string	"SDLK_RIGHTPAREN 0x00000029u"
.LASF426:
	.string	"__USE_ISOC95"
.LASF2650:
	.string	"SDL_RWFromFile SDL_RWFromFile_renamed_SDL_IOFromFile"
.LASF2479:
	.string	"SDL_JoystickSetVirtualHat SDL_JoystickSetVirtualHat_renamed_SDL_SetJoystickVirtualHat"
.LASF3353:
	.string	"SDL_PenMotionEvent"
.LASF425:
	.string	"__USE_ISOC99"
.LASF2331:
	.string	"SDL_CONTROLLER_BUTTON_PADDLE1 SDL_CONTROLLER_BUTTON_PADDLE1_renamed_SDL_GAMEPAD_BUTTON_RIGHT_PADDLE1"
.LASF2720:
	.string	"SDL_AndroidGetInternalStoragePath SDL_AndroidGetInternalStoragePath_renamed_SDL_GetAndroidInternalStoragePath"
.LASF2085:
	.string	"SDL_PROP_RENDERER_D3D11_SWAPCHAIN_POINTER \"SDL.renderer.d3d11.swap_chain\""
.LASF3050:
	.string	"SDL_SCANCODE_CRSEL"
.LASF1826:
	.string	"SDL_HINT_GDK_TEXTINPUT_DEFAULT_TEXT \"SDL_GDK_TEXTINPUT_DEFAULT_TEXT\""
.LASF414:
	.string	"__va_copy(d,s) __builtin_va_copy(d,s)"
.LASF2568:
	.string	"SDL_CondSignal SDL_CondSignal_renamed_SDL_SignalCondition"
.LASF1614:
	.string	"SDLK_CHANNEL_INCREMENT 0x40000104u"
.LASF2260:
	.string	"SDL_FINGERUP SDL_FINGERUP_renamed_SDL_EVENT_FINGER_UP"
.LASF6:
	.string	"__GNUC_MINOR__ 2"
.LASF249:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF1494:
	.string	"SDLK_LEFT 0x40000050u"
.LASF2431:
	.string	"SDL_HINT_ALLOW_TOPMOST SDL_HINT_ALLOW_TOPMOST_renamed_SDL_HINT_WINDOW_ALLOW_TOPMOST"
.LASF1337:
	.string	"SDL_PROP_WINDOW_WIN32_HWND_POINTER \"SDL.window.win32.hwnd\""
.LASF165:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF2266:
	.string	"SDL_JOYDEVICEADDED SDL_JOYDEVICEADDED_renamed_SDL_EVENT_JOYSTICK_ADDED"
.LASF2371:
	.string	"SDL_GameControllerGetNumTouchpadFingers SDL_GameControllerGetNumTouchpadFingers_renamed_SDL_GetNumGamepadTouchpadFingers"
.LASF2788:
	.string	"Sint16"
.LASF1725:
	.string	"SDL_GPU_COLORCOMPONENT_B (1u << 2)"
.LASF500:
	.string	"__errordecl(name,msg) extern void name (void) __attribute__((__error__ (msg)))"
.LASF162:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF1683:
	.string	"SDL_BUTTON_MMASK SDL_BUTTON_MASK(SDL_BUTTON_MIDDLE)"
.LASF366:
	.string	"__amd64 1"
.LASF1152:
	.string	"SDL_PROP_IOSTREAM_WINDOWS_HANDLE_POINTER \"SDL.iostream.windows.handle\""
.LASF299:
	.string	"__FLT64X_IS_IEC_60559__ 1"
.LASF553:
	.string	"__HAVE_GENERIC_SELECTION 1"
.LASF920:
	.string	"SCNo16 \"ho\""
.LASF1480:
	.string	"SDLK_F8 0x40000041u"
.LASF2288:
	.string	"SDL_WINDOWEVENT_CLOSE SDL_WINDOWEVENT_CLOSE_renamed_SDL_EVENT_WINDOW_CLOSE_REQUESTED"
.LASF2488:
	.string	"KMOD_LCTRL KMOD_LCTRL_renamed_SDL_KMOD_LCTRL"
.LASF2298:
	.string	"SDL_WINDOWEVENT_MAXIMIZED SDL_WINDOWEVENT_MAXIMIZED_renamed_SDL_EVENT_WINDOW_MAXIMIZED"
.LASF50:
	.string	"__INT8_TYPE__ signed char"
.LASF957:
	.string	"false 0"
.LASF3131:
	.string	"SDL_SCANCODE_AC_BACK"
.LASF639:
	.string	"__STATFS_MATCHES_STATFS64 1"
.LASF3110:
	.string	"SDL_SCANCODE_CHANNEL_DECREMENT"
.LASF417:
	.string	"_VA_LIST_DEFINED "
.LASF507:
	.string	"__ASMNAME2(prefix,cname) __STRING (prefix) cname"
.LASF855:
	.string	"PRIxFAST8 \"x\""
.LASF499:
	.string	"__warnattr(msg) __attribute__((__warning__ (msg)))"
.LASF1294:
	.string	"SDL_PROP_WINDOW_CREATE_METAL_BOOLEAN \"SDL.window.create.metal\""
.LASF1829:
	.string	"SDL_HINT_GDK_TEXTINPUT_SCOPE \"SDL_GDK_TEXTINPUT_SCOPE\""
.LASF1581:
	.string	"SDLK_KP_DBLAMPERSAND 0x400000c8u"
.LASF3230:
	.string	"SDL_EVENT_JOYSTICK_REMOVED"
.LASF1321:
	.string	"SDL_PROP_WINDOW_ANDROID_WINDOW_POINTER \"SDL.window.android.window\""
.LASF2444:
	.string	"SDL_JoystickDetachVirtual SDL_JoystickDetachVirtual_renamed_SDL_DetachVirtualJoystick"
.LASF1970:
	.string	"SDL_HINT_VIDEO_WAYLAND_PREFER_LIBDECOR \"SDL_VIDEO_WAYLAND_PREFER_LIBDECOR\""
.LASF1685:
	.string	"SDL_BUTTON_X1MASK SDL_BUTTON_MASK(SDL_BUTTON_X1)"
.LASF730:
	.string	"__DEFINED_size_t "
.LASF580:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT_C23"
.LASF789:
	.string	"__wint_t_defined 1"
.LASF2274:
	.string	"SDL_LOCALECHANGED SDL_LOCALECHANGED_renamed_SDL_EVENT_LOCALE_CHANGED"
.LASF917:
	.string	"SCNuFAST32 __PRIPTR_PREFIX \"u\""
.LASF2521:
	.string	"SDLK_j SDLK_j_renamed_SDLK_J"
.LASF2517:
	.string	"SDLK_f SDLK_f_renamed_SDLK_F"
.LASF815:
	.string	"PRIiLEAST8 \"i\""
.LASF41:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF1095:
	.string	"SDL_BYTEORDER __BYTE_ORDER"
.LASF1508:
	.string	"SDLK_KP_6 0x4000005eu"
.LASF463:
	.string	"__SYSCALL_WORDSIZE 64"
.LASF2612:
	.string	"SDL_RenderCopyF SDL_RenderCopyF_renamed_SDL_RenderTexture"
.LASF3287:
	.string	"data1"
.LASF1414:
	.string	"SDLK_MINUS 0x0000002du"
.LASF2869:
	.string	"SDL_FRect"
.LASF2664:
	.string	"SDL_ReadLE64 SDL_ReadLE64_renamed_SDL_ReadU64LE"
.LASF3141:
	.string	"SDL_SCANCODE_COUNT"
.LASF1624:
	.string	"SDLK_MEDIA_EJECT 0x4000010eu"
.LASF1995:
	.string	"SDL_HINT_WINDOW_ALLOW_TOPMOST \"SDL_WINDOW_ALLOW_TOPMOST\""
.LASF691:
	.string	"INTMAX_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF2367:
	.string	"SDL_GameControllerGetButton SDL_GameControllerGetButton_renamed_SDL_GetGamepadButton"
.LASF1053:
	.string	"SDL_iconv_utf8_locale(S) SDL_iconv_string(\"\", \"UTF-8\", S, SDL_strlen(S)+1)"
.LASF117:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF39:
	.string	"__GNUC_EXECUTION_CHARSET_NAME \"UTF-8\""
.LASF330:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF3302:
	.string	"candidates"
.LASF2296:
	.string	"SDL_WINDOWEVENT_ICCPROF_CHANGED SDL_WINDOWEVENT_ICCPROF_CHANGED_renamed_SDL_EVENT_WINDOW_ICCPROF_CHANGED"
.LASF2533:
	.string	"SDLK_v SDLK_v_renamed_SDLK_V"
.LASF2529:
	.string	"SDLK_r SDLK_r_renamed_SDLK_R"
.LASF2790:
	.string	"Sint32"
.LASF1746:
	.string	"SDL_PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_STENCIL_UINT8 \"SDL.gpu.texture.create.d3d12.clear.stencil\""
.LASF2270:
	.string	"SDL_KEYDOWN SDL_KEYDOWN_renamed_SDL_EVENT_KEY_DOWN"
.LASF1942:
	.string	"SDL_HINT_ROG_GAMEPAD_MICE \"SDL_ROG_GAMEPAD_MICE\""
.LASF2525:
	.string	"SDLK_n SDLK_n_renamed_SDLK_N"
.LASF2443:
	.string	"SDL_JoystickClose SDL_JoystickClose_renamed_SDL_CloseJoystick"
.LASF1499:
	.string	"SDLK_KP_MULTIPLY 0x40000055u"
.LASF1427:
	.string	"SDLK_COLON 0x0000003au"
.LASF2075:
	.string	"SDL_PROP_RENDERER_SURFACE_POINTER \"SDL.renderer.surface\""
.LASF210:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF2936:
	.string	"SDL_SCANCODE_EQUALS"
.LASF1646:
	.string	"SDLK_LEVEL5_SHIFT 0x20000002u"
.LASF802:
	.string	"PRId64 __PRI64_PREFIX \"d\""
.LASF3375:
	.string	"mdevice"
.LASF1334:
	.string	"SDL_PROP_WINDOW_VIVANTE_DISPLAY_POINTER \"SDL.window.vivante.display\""
.LASF2496:
	.string	"KMOD_RGUI KMOD_RGUI_renamed_SDL_KMOD_RGUI"
.LASF2707:
	.string	"SDL_LowerBlit SDL_LowerBlit_renamed_SDL_BlitSurfaceUnchecked"
.LASF2817:
	.string	"SDL_PIXELFORMAT_BGR565"
.LASF2346:
	.string	"SDL_CONTROLLER_TYPE_PS4 SDL_CONTROLLER_TYPE_PS4_renamed_SDL_GAMEPAD_TYPE_PS4"
.LASF3145:
	.string	"SDL_MouseID"
.LASF786:
	.string	"_BSD_WCHAR_T_"
.LASF1367:
	.string	"SDL_sensor_h_ "
.LASF2179:
	.string	"SDL_VERSION_ATLEAST(X,Y,Z) (SDL_VERSION >= SDL_VERSIONNUM(X, Y, Z))"
.LASF1183:
	.string	"SDL_BLENDMODE_MOD 0x00000004u"
.LASF1923:
	.string	"SDL_HINT_NO_SIGNAL_HANDLERS \"SDL_NO_SIGNAL_HANDLERS\""
.LASF2380:
	.string	"SDL_GameControllerGetStringForAxis SDL_GameControllerGetStringForAxis_renamed_SDL_GetGamepadStringForAxis"
.LASF1585:
	.string	"SDLK_KP_HASH 0x400000ccu"
.LASF78:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF1816:
	.string	"SDL_HINT_EVDEV_DEVICES \"SDL_EVDEV_DEVICES\""
.LASF2327:
	.string	"SDL_CONTROLLER_BUTTON_LEFTSHOULDER SDL_CONTROLLER_BUTTON_LEFTSHOULDER_renamed_SDL_GAMEPAD_BUTTON_LEFT_SHOULDER"
.LASF2267:
	.string	"SDL_JOYDEVICEREMOVED SDL_JOYDEVICEREMOVED_renamed_SDL_EVENT_JOYSTICK_REMOVED"
.LASF375:
	.string	"__k8 1"
.LASF1778:
	.string	"SDL_HINT_ALLOW_ALT_TAB_WHILE_GRABBED \"SDL_ALLOW_ALT_TAB_WHILE_GRABBED\""
.LASF578:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT"
.LASF3390:
	.string	"cdevice"
.LASF1186:
	.string	"SDL_camera_h_ "
.LASF644:
	.string	"__STD_TYPE"
.LASF706:
	.string	"INT64_C(c) c ## L"
.LASF2886:
	.string	"SDL_POWERSTATE_ON_BATTERY"
.LASF81:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF3317:
	.string	"clicks"
.LASF92:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF2573:
	.string	"SDL_SemPost SDL_SemPost_renamed_SDL_SignalSemaphore"
.LASF1255:
	.string	"SDL_WINDOW_TOOLTIP SDL_UINT64_C(0x0000000000040000)"
.LASF133:
	.string	"__UINT64_C(c) c ## UL"
.LASF54:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF2283:
	.string	"SDL_SENSORUPDATE SDL_SENSORUPDATE_renamed_SDL_EVENT_SENSOR_UPDATE"
.LASF2251:
	.string	"SDL_DISPLAYEVENT_MOVED SDL_DISPLAYEVENT_MOVED_renamed_SDL_EVENT_DISPLAY_MOVED"
.LASF758:
	.string	"__HAVE_DISTINCT_FLOAT128X __HAVE_FLOAT128X"
.LASF3358:
	.string	"SDL_PenAxisEvent"
.LASF115:
	.string	"__INT8_C(c) c"
.LASF2230:
	.string	"SDL_AUDIODEVICEADDED SDL_AUDIODEVICEADDED_renamed_SDL_EVENT_AUDIO_DEVICE_ADDED"
.LASF1836:
	.string	"SDL_HINT_HIDAPI_IGNORE_DEVICES \"SDL_HIDAPI_IGNORE_DEVICES\""
.LASF75:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF954:
	.string	"_STDBOOL_H "
.LASF2677:
	.string	"SDL_SCANCODE_AUDIOREWIND SDL_SCANCODE_AUDIOREWIND_renamed_SDL_SCANCODE_MEDIA_REWIND"
.LASF3006:
	.string	"SDL_SCANCODE_EXECUTE"
.LASF1301:
	.string	"SDL_PROP_WINDOW_CREATE_TITLE_STRING \"SDL.window.create.title\""
.LASF112:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF2945:
	.string	"SDL_SCANCODE_PERIOD"
.LASF1763:
	.string	"SDL_HAPTIC_RESERVED1 (1u<<12)"
.LASF259:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF548:
	.string	"__LDBL_REDIR_DECL(name) "
.LASF3081:
	.string	"SDL_SCANCODE_KP_SPACE"
.LASF1118:
	.string	"SDL_InvalidParamError(param) SDL_SetError(\"Parameter '%s' is invalid\", (param))"
.LASF2858:
	.string	"SDL_PIXELFORMAT_EXTERNAL_OES"
.LASF3017:
	.string	"SDL_SCANCODE_MUTE"
.LASF2992:
	.string	"SDL_SCANCODE_POWER"
.LASF367:
	.string	"__amd64__ 1"
.LASF1507:
	.string	"SDLK_KP_5 0x4000005du"
.LASF632:
	.string	"__BLKSIZE_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF1203:
	.string	"SDL_ISPIXELFORMAT_10BIT(format) (!SDL_ISPIXELFORMAT_FOURCC(format) && ((SDL_PIXELTYPE(format) == SDL_PIXELTYPE_PACKED32) && (SDL_PIXELLAYOUT(format) == SDL_PACKEDLAYOUT_2101010)))"
.LASF2196:
	.string	"AUDIO_S16 AUDIO_S16_renamed_SDL_AUDIO_S16LE"
.LASF2356:
	.string	"SDL_GameControllerAxis SDL_GameControllerAxis_renamed_SDL_GamepadAxis"
.LASF2628:
	.string	"SDL_RenderFlush SDL_RenderFlush_renamed_SDL_FlushRenderer"
.LASF2189:
	.string	"SDL_AtomicTryLock SDL_AtomicTryLock_renamed_SDL_TryLockSpinlock"
.LASF659:
	.string	"INT64_MAX (__INT64_C(9223372036854775807))"
.LASF255:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF3263:
	.string	"SDL_EVENT_PEN_BUTTON_DOWN"
.LASF725:
	.string	"_BSD_SIZE_T_ "
.LASF3205:
	.string	"SDL_EVENT_WINDOW_LEAVE_FULLSCREEN"
.LASF1927:
	.string	"SDL_HINT_OPENVR_LIBRARY \"SDL_OPENVR_LIBRARY\""
.LASF51:
	.string	"__INT16_TYPE__ short int"
.LASF1236:
	.string	"SDL_PROP_GLOBAL_VIDEO_WAYLAND_WL_DISPLAY_POINTER \"SDL.video.wayland.wl_display\""
.LASF2057:
	.string	"SDL_PROP_PROCESS_STDOUT_POINTER \"SDL.process.stdout\""
.LASF3261:
	.string	"SDL_EVENT_PEN_DOWN"
.LASF2544:
	.string	"SDL_NUM_LOG_PRIORITIES SDL_NUM_LOG_PRIORITIES_renamed_SDL_LOG_PRIORITY_COUNT"
.LASF2639:
	.string	"SDL_RenderSetLogicalSize SDL_RenderSetLogicalSize_renamed_SDL_SetRenderLogicalPresentation"
.LASF1799:
	.string	"SDL_HINT_AUDIO_DRIVER \"SDL_AUDIO_DRIVER\""
.LASF1429:
	.string	"SDLK_LESS 0x0000003cu"
.LASF2324:
	.string	"SDL_CONTROLLER_BUTTON_DPAD_UP SDL_CONTROLLER_BUTTON_DPAD_UP_renamed_SDL_GAMEPAD_BUTTON_DPAD_UP"
.LASF219:
	.string	"__FLT16_IS_IEC_60559__ 1"
.LASF1274:
	.string	"SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG 0x0002"
.LASF2841:
	.string	"SDL_PIXELFORMAT_ARGB64_FLOAT"
.LASF2142:
	.string	"SDL_PROP_TEXTURE_OPENGLES2_TEXTURE_U_NUMBER \"SDL.texture.opengles2.texture_u\""
.LASF439:
	.string	"__USE_LARGEFILE"
.LASF1446:
	.string	"SDLK_G 0x00000067u"
.LASF1700:
	.string	"SDL_filesystem_h_ "
.LASF3305:
	.string	"horizontal"
.LASF2045:
	.string	"SDL_PROP_PROCESS_CREATE_ARGS_POINTER \"SDL.process.create.args\""
.LASF544:
	.string	"__LDBL_REDIR(name,proto) name proto"
.LASF1377:
	.string	"SDL_HAT_UP 0x01u"
.LASF2358:
	.string	"SDL_GameControllerButton SDL_GameControllerButton_renamed_SDL_GamepadButton"
.LASF768:
	.string	"__CFLOAT64X _Complex _Float64x"
.LASF1789:
	.string	"SDL_HINT_AUDIO_ALSA_DEFAULT_RECORDING_DEVICE \"SDL_AUDIO_ALSA_DEFAULT_RECORDING_DEVICE\""
.LASF1007:
	.string	"SDL_OUT_Z_BYTECAP(x) "
.LASF355:
	.string	"__GCC_DESTRUCTIVE_SIZE 64"
.LASF1128:
	.string	"SDL_PROP_THREAD_CREATE_USERDATA_POINTER \"SDL.thread.create.userdata\""
.LASF3350:
	.string	"touchID"
.LASF2040:
	.string	"SDL_MESSAGEBOX_BUTTON_ESCAPEKEY_DEFAULT 0x00000002u"
.LASF2810:
	.string	"SDL_PIXELFORMAT_ABGR4444"
.LASF108:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF2922:
	.string	"SDL_SCANCODE_3"
.LASF907:
	.string	"SCNu8 \"hhu\""
.LASF83:
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
.LASF2925:
	.string	"SDL_SCANCODE_6"
.LASF2926:
	.string	"SDL_SCANCODE_7"
.LASF742:
	.string	"__HAVE_DISTINCT_FLOAT128 1"
.LASF2928:
	.string	"SDL_SCANCODE_9"
.LASF3122:
	.string	"SDL_SCANCODE_AC_NEW"
.LASF847:
	.string	"PRIx8 \"x\""
.LASF2214:
	.string	"SDL_MixAudioFormat SDL_MixAudioFormat_renamed_SDL_MixAudio"
.LASF3315:
	.string	"SDL_MouseButtonEvent"
.LASF2894:
	.string	"SDL_SCANCODE_A"
.LASF2895:
	.string	"SDL_SCANCODE_B"
.LASF2896:
	.string	"SDL_SCANCODE_C"
.LASF2897:
	.string	"SDL_SCANCODE_D"
.LASF2898:
	.string	"SDL_SCANCODE_E"
.LASF2899:
	.string	"SDL_SCANCODE_F"
.LASF2312:
	.string	"SDL_CONTROLLER_AXIS_TRIGGERLEFT SDL_CONTROLLER_AXIS_TRIGGERLEFT_renamed_SDL_GAMEPAD_AXIS_LEFT_TRIGGER"
.LASF2901:
	.string	"SDL_SCANCODE_H"
.LASF2902:
	.string	"SDL_SCANCODE_I"
.LASF261:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF2904:
	.string	"SDL_SCANCODE_K"
.LASF2905:
	.string	"SDL_SCANCODE_L"
.LASF2906:
	.string	"SDL_SCANCODE_M"
.LASF2907:
	.string	"SDL_SCANCODE_N"
.LASF2908:
	.string	"SDL_SCANCODE_O"
.LASF2909:
	.string	"SDL_SCANCODE_P"
.LASF2910:
	.string	"SDL_SCANCODE_Q"
.LASF1933:
	.string	"SDL_HINT_RENDER_DIRECT3D11_DEBUG \"SDL_RENDER_DIRECT3D11_DEBUG\""
.LASF2912:
	.string	"SDL_SCANCODE_S"
.LASF2913:
	.string	"SDL_SCANCODE_T"
.LASF2914:
	.string	"SDL_SCANCODE_U"
.LASF2915:
	.string	"SDL_SCANCODE_V"
.LASF2916:
	.string	"SDL_SCANCODE_W"
.LASF2917:
	.string	"SDL_SCANCODE_X"
.LASF2918:
	.string	"SDL_SCANCODE_Y"
.LASF2919:
	.string	"SDL_SCANCODE_Z"
.LASF225:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF3239:
	.string	"SDL_EVENT_GAMEPAD_TOUCHPAD_DOWN"
.LASF1008:
	.string	"SDL_PRINTF_FORMAT_STRING "
.LASF2238:
	.string	"SDL_CONTROLLERDEVICEREMOVED SDL_CONTROLLERDEVICEREMOVED_renamed_SDL_EVENT_GAMEPAD_REMOVED"
.LASF3450:
	.string	"SDL_Quit"
.LASF2222:
	.string	"SDL_SwapLE32 SDL_SwapLE32_renamed_SDL_Swap32LE"
.LASF1438:
	.string	"SDLK_UNDERSCORE 0x0000005fu"
.LASF1192:
	.string	"SDL_DEFINE_PIXELFOURCC(A,B,C,D) SDL_FOURCC(A, B, C, D)"
.LASF1457:
	.string	"SDLK_R 0x00000072u"
.LASF137:
	.string	"__INT_FAST16_WIDTH__ 64"
.LASF2606:
	.string	"SDL_UnionFRect SDL_UnionFRect_renamed_SDL_GetRectUnionFloat"
.LASF960:
	.string	"SDL_SIZE_MAX SIZE_MAX"
.LASF2218:
	.string	"SDL_SwapBE16 SDL_SwapBE16_renamed_SDL_Swap16BE"
.LASF2223:
	.string	"SDL_SwapLE64 SDL_SwapLE64_renamed_SDL_Swap64LE"
.LASF1135:
	.string	"SDL_ACQUIRED_BEFORE(x) SDL_THREAD_ANNOTATION_ATTRIBUTE__(acquired_before(x))"
.LASF2051:
	.string	"SDL_PROP_PROCESS_CREATE_STDERR_NUMBER \"SDL.process.create.stderr_option\""
.LASF2632:
	.string	"SDL_RenderGetMetalLayer SDL_RenderGetMetalLayer_renamed_SDL_GetRenderMetalLayer"
.LASF563:
	.string	"__stub_chflags "
.LASF541:
	.string	"_Static_assert(expr,diagnostic) extern int (*__Static_assert_function (void)) [!!sizeof (struct { int __error_if_negative: (expr) ? 2 : -1; })]"
.LASF728:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF993:
	.string	"SDL_PRIs32 PRId32"
.LASF3160:
	.string	"SDL_PEN_AXIS_SLIDER"
.LASF2872:
	.string	"flags"
.LASF1807:
	.string	"SDL_HINT_CAMERA_DRIVER \"SDL_CAMERA_DRIVER\""
.LASF2800:
	.string	"SDL_PIXELFORMAT_INDEX4LSB"
.LASF2114:
	.string	"SDL_PROP_TEXTURE_CREATE_OPENGL_TEXTURE_V_NUMBER \"SDL.texture.create.opengl.texture_v\""
.LASF1173:
	.string	"SDL_AUDIO_DEVICE_DEFAULT_PLAYBACK ((SDL_AudioDeviceID) 0xFFFFFFFFu)"
.LASF1353:
	.string	"SDL_WINDOW_SURFACE_VSYNC_ADAPTIVE (-1)"
.LASF1464:
	.string	"SDLK_Y 0x00000079u"
.LASF2857:
	.string	"SDL_PIXELFORMAT_P010"
.LASF858:
	.string	"PRIxFAST64 __PRI64_PREFIX \"x\""
.LASF2698:
	.string	"SDL_ConvertSurfaceFormat SDL_ConvertSurfaceFormat_renamed_SDL_ConvertSurface"
.LASF1332:
	.string	"SDL_PROP_WINDOW_COCOA_METAL_VIEW_TAG_NUMBER \"SDL.window.cocoa.metal_view_tag\""
.LASF2279:
	.string	"SDL_POLLSENTINEL SDL_POLLSENTINEL_renamed_SDL_EVENT_POLL_SENTINEL"
.LASF384:
	.string	"__MMX_WITH_SSE__ 1"
.LASF1550:
	.string	"SDLK_RETURN2 0x4000009eu"
.LASF1172:
	.string	"SDL_AUDIO_ISUNSIGNED(x) (!SDL_AUDIO_ISSIGNED(x))"
.LASF3310:
	.string	"SDL_MouseDeviceEvent"
.LASF1928:
	.string	"SDL_HINT_ORIENTATIONS \"SDL_ORIENTATIONS\""
.LASF794:
	.string	"WEOF (0xffffffffu)"
.LASF2118:
	.string	"SDL_PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_V_NUMBER \"SDL.texture.create.opengles2.texture_v\""
.LASF905:
	.string	"SCNiFAST32 __PRIPTR_PREFIX \"i\""
.LASF708:
	.string	"UINT16_C(c) c"
.LASF2738:
	.string	"SDL_SetThreadPriority SDL_SetThreadPriority_renamed_SDL_SetCurrentThreadPriority"
.LASF106:
	.string	"__INT8_MAX__ 0x7f"
.LASF2084:
	.string	"SDL_PROP_RENDERER_D3D11_DEVICE_POINTER \"SDL.renderer.d3d11.device\""
.LASF3188:
	.string	"SDL_EVENT_WINDOW_PIXEL_SIZE_CHANGED"
.LASF1383:
	.string	"SDL_HAT_LEFTUP (SDL_HAT_LEFT|SDL_HAT_UP)"
.LASF880:
	.string	"PRIuPTR __PRIPTR_PREFIX \"u\""
.LASF2469:
	.string	"SDL_JoystickNumHats SDL_JoystickNumHats_renamed_SDL_GetNumJoystickHats"
.LASF410:
	.string	"va_start(v,l) __builtin_va_start(v,l)"
.LASF105:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF1057:
	.string	"SDL_size_mul_check_overflow(a,b,ret) SDL_size_mul_check_overflow_builtin(a, b, ret)"
.LASF1191:
	.string	"SDL_ALPHA_TRANSPARENT_FLOAT 0.0f"
.LASF1641:
	.string	"SDLK_SOFTLEFT 0x4000011fu"
.LASF2860:
	.string	"SDL_PIXELFORMAT_RGBA32"
.LASF2056:
	.string	"SDL_PROP_PROCESS_STDIN_POINTER \"SDL.process.stdin\""
.LASF3187:
	.string	"SDL_EVENT_WINDOW_RESIZED"
.LASF2175:
	.string	"SDL_VERSIONNUM_MAJOR(version) ((version) / 1000000)"
.LASF3130:
	.string	"SDL_SCANCODE_AC_HOME"
.LASF2141:
	.string	"SDL_PROP_TEXTURE_OPENGLES2_TEXTURE_UV_NUMBER \"SDL.texture.opengles2.texture_uv\""
.LASF1642:
	.string	"SDLK_SOFTRIGHT 0x40000120u"
.LASF267:
	.string	"__FLT128_IS_IEC_60559__ 1"
.LASF1072:
	.string	"SDL_assert_paranoid(condition) SDL_disabled_assert(condition)"
.LASF1676:
	.string	"SDL_BUTTON_LEFT 1"
.LASF2599:
	.string	"SDL_HasIntersectionF SDL_HasIntersectionF_renamed_SDL_HasRectIntersectionFloat"
.LASF1803:
	.string	"SDL_HINT_AUDIO_INCLUDE_MONITORS \"SDL_AUDIO_INCLUDE_MONITORS\""
.LASF63:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF1874:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_VERTICAL_JOY_CONS \"SDL_JOYSTICK_HIDAPI_VERTICAL_JOY_CONS\""
.LASF1893:
	.string	"SDL_HINT_JOYSTICK_THROTTLE_DEVICES \"SDL_JOYSTICK_THROTTLE_DEVICES\""
.LASF202:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF3169:
	.string	"SDL_EVENT_DID_ENTER_BACKGROUND"
.LASF1775:
	.string	"SDL_HAPTIC_INFINITY 4294967295U"
.LASF1713:
	.string	"SDL_GPU_BUFFERUSAGE_GRAPHICS_STORAGE_READ (1u << 3)"
.LASF803:
	.string	"PRIdLEAST8 \"d\""
.LASF1409:
	.string	"SDLK_LEFTPAREN 0x00000028u"
.LASF1091:
	.string	"_BITS_ENDIANNESS_H 1"
.LASF217:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF562:
	.string	"__stub___compat_bdflush "
.LASF2309:
	.string	"SDL_CONTROLLER_AXIS_MAX SDL_CONTROLLER_AXIS_MAX_renamed_SDL_GAMEPAD_AXIS_COUNT"
.LASF2171:
	.string	"SDL_MAJOR_VERSION 3"
.LASF2261:
	.string	"SDL_FIRSTEVENT SDL_FIRSTEVENT_renamed_SDL_EVENT_FIRST"
.LASF2138:
	.string	"SDL_PROP_TEXTURE_OPENGL_TEX_W_FLOAT \"SDL.texture.opengl.tex_w\""
.LASF539:
	.string	"__attribute_copy__"
.LASF885:
	.string	"SCNd32 \"d\""
.LASF2877:
	.string	"reserved"
.LASF850:
	.string	"PRIx64 __PRI64_PREFIX \"x\""
.LASF1727:
	.string	"SDL_PROP_GPU_DEVICE_CREATE_DEBUGMODE_BOOLEAN \"SDL.gpu.device.create.debugmode\""
.LASF1243:
	.string	"SDL_WINDOW_MINIMIZED SDL_UINT64_C(0x0000000000000040)"
.LASF1204:
	.string	"SDL_ISPIXELFORMAT_FLOAT(format) (!SDL_ISPIXELFORMAT_FOURCC(format) && ((SDL_PIXELTYPE(format) == SDL_PIXELTYPE_ARRAYF16) || (SDL_PIXELTYPE(format) == SDL_PIXELTYPE_ARRAYF32)))"
.LASF714:
	.string	"_STRING_H 1"
.LASF1139:
	.string	"SDL_ACQUIRE(x) SDL_THREAD_ANNOTATION_ATTRIBUTE__(acquire_capability(x))"
.LASF971:
	.string	"SDL_MIN_SINT8 ((Sint8)(~0x7F))"
.LASF1825:
	.string	"SDL_HINT_GAMECONTROLLER_SENSOR_FUSION \"SDL_GAMECONTROLLER_SENSOR_FUSION\""
.LASF2681:
	.string	"SDL_SensorClose SDL_SensorClose_renamed_SDL_CloseSensor"
.LASF884:
	.string	"SCNd16 \"hd\""
.LASF3337:
	.string	"SDL_GamepadTouchpadEvent"
.LASF229:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF3189:
	.string	"SDL_EVENT_WINDOW_METAL_VIEW_RESIZED"
.LASF1349:
	.string	"SDL_PROP_WINDOW_X11_DISPLAY_POINTER \"SDL.window.x11.display\""
.LASF314:
	.string	"__BFLT16_HAS_QUIET_NAN__ 1"
.LASF1846:
	.string	"SDL_HINT_JOYSTICK_FLIGHTSTICK_DEVICES \"SDL_JOYSTICK_FLIGHTSTICK_DEVICES\""
.LASF1615:
	.string	"SDLK_CHANNEL_DECREMENT 0x40000105u"
.LASF805:
	.string	"PRIdLEAST32 \"d\""
.LASF2770:
	.string	"short unsigned int"
.LASF818:
	.string	"PRIiLEAST64 __PRI64_PREFIX \"i\""
.LASF3280:
	.string	"SDL_EVENT_LAST"
.LASF1978:
	.string	"SDL_HINT_VIDEO_X11_WINDOW_VISUALID \"SDL_VIDEO_X11_WINDOW_VISUALID\""
.LASF221:
	.string	"__FLT32_DIG__ 6"
.LASF350:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF1774:
	.string	"SDL_HAPTIC_STEERING_AXIS 3"
.LASF2228:
	.string	"SDL_APP_WILLENTERBACKGROUND SDL_APP_WILLENTERBACKGROUND_renamed_SDL_EVENT_WILL_ENTER_BACKGROUND"
.LASF2376:
	.string	"SDL_GameControllerGetSensorData SDL_GameControllerGetSensorData_renamed_SDL_GetGamepadSensorData"
.LASF1461:
	.string	"SDLK_V 0x00000076u"
.LASF2120:
	.string	"SDL_PROP_TEXTURE_COLORSPACE_NUMBER \"SDL.texture.colorspace\""
.LASF2131:
	.string	"SDL_PROP_TEXTURE_D3D12_TEXTURE_U_POINTER \"SDL.texture.d3d12.texture_u\""
.LASF1849:
	.string	"SDL_HINT_JOYSTICK_GAMECUBE_DEVICES \"SDL_JOYSTICK_GAMECUBE_DEVICES\""
.LASF1423:
	.string	"SDLK_6 0x00000036u"
.LASF2334:
	.string	"SDL_CONTROLLER_BUTTON_PADDLE4 SDL_CONTROLLER_BUTTON_PADDLE4_renamed_SDL_GAMEPAD_BUTTON_LEFT_PADDLE2"
.LASF1276:
	.string	"SDL_GL_CONTEXT_RESET_ISOLATION_FLAG 0x0008"
.LASF824:
	.string	"PRIo16 \"o\""
.LASF359:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF2867:
	.string	"SDL_PIXELFORMAT_XBGR32"
.LASF645:
	.string	"_BITS_WCHAR_H 1"
.LASF2462:
	.string	"SDL_JoystickGetVendor SDL_JoystickGetVendor_renamed_SDL_GetJoystickVendor"
.LASF964:
	.string	"SDL_reinterpret_cast(type,expression) ((type)(expression))"
.LASF1124:
	.string	"SDL_CreateThread(fn,name,data) SDL_CreateThreadRuntime((fn), (name), (data), (SDL_FunctionPointer) (SDL_BeginThreadFunction), (SDL_FunctionPointer) (SDL_EndThreadFunction))"
.LASF835:
	.string	"PRIu8 \"u\""
.LASF3447:
	.string	"window_width"
.LASF1451:
	.string	"SDLK_L 0x0000006cu"
.LASF1526:
	.string	"SDLK_F22 0x40000071u"
.LASF3397:
	.string	"pbutton"
.LASF2059:
	.string	"SDL_PROP_PROCESS_BACKGROUND_BOOLEAN \"SDL.process.background\""
.LASF540:
	.string	"__attribute_copy__(arg) __attribute__ ((__copy__ (arg)))"
.LASF2773:
	.string	"__int16_t"
.LASF1149:
	.string	"SDL_RETURN_CAPABILITY(x) SDL_THREAD_ANNOTATION_ATTRIBUTE__(lock_returned(x))"
.LASF1833:
	.string	"SDL_HINT_HIDAPI_UDEV \"SDL_HIDAPI_UDEV\""
.LASF538:
	.string	"__attribute_nonstring__ __attribute__ ((__nonstring__))"
.LASF1965:
	.string	"SDL_HINT_VIDEO_OFFSCREEN_SAVE_FRAMES \"SDL_VIDEO_OFFSCREEN_SAVE_FRAMES\""
.LASF844:
	.string	"PRIuFAST16 __PRIPTR_PREFIX \"u\""
.LASF1541:
	.string	"SDLK_VOLUMEUP 0x40000080u"
.LASF1867:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_STEAM \"SDL_JOYSTICK_HIDAPI_STEAM\""
.LASF2834:
	.string	"SDL_PIXELFORMAT_RGBA64"
.LASF1051:
	.string	"SDL_ICONV_EILSEQ (size_t)-3"
.LASF2634:
	.string	"SDL_RenderGetViewport SDL_RenderGetViewport_renamed_SDL_GetRenderViewport"
.LASF3376:
	.string	"motion"
.LASF825:
	.string	"PRIo32 \"o\""
.LASF84:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF403:
	.string	"SDL_platform_defines_h_ "
.LASF638:
	.string	"__RLIM_T_MATCHES_RLIM64_T 1"
.LASF2964:
	.string	"SDL_SCANCODE_HOME"
.LASF1535:
	.string	"SDLK_UNDO 0x4000007au"
.LASF377:
	.string	"__code_model_small__ 1"
.LASF3349:
	.string	"SDL_TouchFingerEvent"
.LASF2463:
	.string	"SDL_JoystickInstanceID SDL_JoystickInstanceID_renamed_SDL_GetJoystickID"
.LASF1022:
	.string	"SDL_INLINE __inline__"
.LASF873:
	.string	"PRIoMAX __PRI64_PREFIX \"o\""
.LASF1206:
	.string	"SDL_ISPIXELFORMAT_FOURCC(format) ((format) && (SDL_PIXELFLAG(format) != 1))"
.LASF1628:
	.string	"SDLK_AC_OPEN 0x40000112u"
.LASF441:
	.string	"__USE_FILE_OFFSET64"
.LASF2393:
	.string	"SDL_GameControllerOpen SDL_GameControllerOpen_renamed_SDL_OpenGamepad"
.LASF619:
	.string	"__FSBLKCNT64_T_TYPE __UQUAD_TYPE"
.LASF2275:
	.string	"SDL_MOUSEBUTTONDOWN SDL_MOUSEBUTTONDOWN_renamed_SDL_EVENT_MOUSE_BUTTON_DOWN"
.LASF1293:
	.string	"SDL_PROP_WINDOW_CREATE_MENU_BOOLEAN \"SDL.window.create.menu\""
.LASF3210:
	.string	"SDL_EVENT_KEY_DOWN"
.LASF662:
	.string	"UINT32_MAX (4294967295U)"
.LASF3364:
	.string	"mime_types"
.LASF2350:
	.string	"SDL_CONTROLLER_TYPE_XBOX360 SDL_CONTROLLER_TYPE_XBOX360_renamed_SDL_GAMEPAD_TYPE_XBOX360"
.LASF3346:
	.string	"recording"
.LASF633:
	.string	"__FSID_T_TYPE struct { int __val[2]; }"
.LASF2607:
	.string	"SDL_UnionRect SDL_UnionRect_renamed_SDL_GetRectUnion"
.LASF1981:
	.string	"SDL_HINT_VITA_ENABLE_FRONT_TOUCH \"SDL_VITA_ENABLE_FRONT_TOUCH\""
.LASF1211:
	.string	"SDL_COLORSPACEPRIMARIES(cspace) (SDL_ColorPrimaries)(((cspace) >> 10) & 0x1F)"
.LASF2037:
	.string	"SDL_MESSAGEBOX_BUTTONS_LEFT_TO_RIGHT 0x00000080u"
.LASF2717:
	.string	"SDL_AndroidGetActivity SDL_AndroidGetActivity_renamed_SDL_GetAndroidActivity"
.LASF653:
	.string	"INT16_MIN (-32767-1)"
.LASF1657:
	.string	"SDL_KMOD_RCTRL 0x0080u"
.LASF1663:
	.string	"SDL_KMOD_CAPS 0x2000u"
.LASF1863:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_PS5 \"SDL_JOYSTICK_HIDAPI_PS5\""
.LASF1662:
	.string	"SDL_KMOD_NUM 0x1000u"
.LASF1439:
	.string	"SDLK_GRAVE 0x00000060u"
.LASF2637:
	.string	"SDL_RenderLogicalToWindow SDL_RenderLogicalToWindow_renamed_SDL_RenderCoordinatesToWindow"
.LASF2152:
	.string	"SDL_timer_h_ "
.LASF1891:
	.string	"SDL_HINT_JOYSTICK_ROG_CHAKRAM \"SDL_JOYSTICK_ROG_CHAKRAM\""
.LASF3394:
	.string	"pproximity"
.LASF3229:
	.string	"SDL_EVENT_JOYSTICK_ADDED"
.LASF1199:
	.string	"SDL_BYTESPERPIXEL(format) (SDL_ISPIXELFORMAT_FOURCC(format) ? ((((format) == SDL_PIXELFORMAT_YUY2) || ((format) == SDL_PIXELFORMAT_UYVY) || ((format) == SDL_PIXELFORMAT_YVYU) || ((format) == SDL_PIXELFORMAT_P010)) ? 2 : 1) : (((format) >> 0) & 0xFF))"
.LASF2046:
	.string	"SDL_PROP_PROCESS_CREATE_ENVIRONMENT_POINTER \"SDL.process.create.environment\""
.LASF237:
	.string	"__FLT64_DIG__ 15"
.LASF1064:
	.string	"SDL_FILE __FILE__"
.LASF2511:
	.string	"SDLK_QUOTEDBL SDLK_QUOTEDBL_renamed_SDLK_DBLAPOSTROPHE"
.LASF1179:
	.string	"SDL_BLENDMODE_BLEND 0x00000001u"
.LASF4:
	.string	"__STDC_HOSTED__ 1"
.LASF3084:
	.string	"SDL_SCANCODE_KP_MEMSTORE"
.LASF2991:
	.string	"SDL_SCANCODE_APPLICATION"
.LASF1077:
	.string	"SDL_MemoryBarrierRelease() SDL_CompilerBarrier()"
.LASF2783:
	.string	"uint8_t"
.LASF2809:
	.string	"SDL_PIXELFORMAT_RGBA4444"
.LASF749:
	.string	"__HAVE_FLOAT32 1"
.LASF2941:
	.string	"SDL_SCANCODE_SEMICOLON"
.LASF1936:
	.string	"SDL_HINT_RENDER_GPU_LOW_POWER \"SDL_RENDER_GPU_LOW_POWER\""
.LASF2759:
	.string	"SDL_SetWindowDisplayMode SDL_SetWindowDisplayMode_renamed_SDL_SetWindowFullscreenMode"
.LASF3238:
	.string	"SDL_EVENT_GAMEPAD_REMAPPED"
.LASF2570:
	.string	"SDL_CondWaitTimeout SDL_CondWaitTimeout_renamed_SDL_WaitConditionTimeout"
.LASF1979:
	.string	"SDL_HINT_VIDEO_X11_XRANDR \"SDL_VIDEO_X11_XRANDR\""
.LASF1783:
	.string	"SDL_HINT_APP_ID \"SDL_APP_ID\""
.LASF3042:
	.string	"SDL_SCANCODE_CANCEL"
.LASF376:
	.string	"__k8__ 1"
.LASF3404:
	.string	"SDL_LogCategory"
.LASF1735:
	.string	"SDL_PROP_GPU_DEVICE_CREATE_SHADERS_METALLIB_BOOLEAN \"SDL.gpu.device.create.shaders.metallib\""
.LASF3313:
	.string	"xrel"
.LASF649:
	.string	"_BITS_STDINT_UINTN_H 1"
.LASF953:
	.string	"SDL_INCLUDE_STDBOOL_H "
.LASF1582:
	.string	"SDLK_KP_VERTICALBAR 0x400000c9u"
.LASF2893:
	.string	"SDL_SCANCODE_UNKNOWN"
.LASF2220:
	.string	"SDL_SwapBE64 SDL_SwapBE64_renamed_SDL_Swap64BE"
.LASF759:
	.string	"__HAVE_FLOAT128_UNLIKE_LDBL (__HAVE_DISTINCT_FLOAT128 && __LDBL_MANT_DIG__ != 113)"
.LASF2750:
	.string	"SDL_GLprofile SDL_GLprofile_renamed_SDL_GLProfile"
.LASF2162:
	.string	"SDL_US_TO_NS(US) (((Uint64)(US)) * SDL_NS_PER_US)"
.LASF2074:
	.string	"SDL_PROP_RENDERER_WINDOW_POINTER \"SDL.renderer.window\""
.LASF1851:
	.string	"SDL_HINT_JOYSTICK_HIDAPI \"SDL_JOYSTICK_HIDAPI\""
.LASF3185:
	.string	"SDL_EVENT_WINDOW_EXPOSED"
.LASF1084:
	.string	"SDL_LIL_ENDIAN 1234"
.LASF1217:
	.string	"SDL_ISCOLORSPACE_LIMITED_RANGE(cspace) (SDL_COLORSPACERANGE(cspace) != SDL_COLOR_RANGE_FULL)"
.LASF1046:
	.string	"SDL_INVALID_UNICODE_CODEPOINT 0xFFFD"
.LASF2456:
	.string	"SDL_JoystickGetHat SDL_JoystickGetHat_renamed_SDL_GetJoystickHat"
.LASF3176:
	.string	"SDL_EVENT_DISPLAY_REMOVED"
.LASF134:
	.string	"__INT_FAST8_MAX__ 0x7f"
.LASF2388:
	.string	"SDL_GameControllerIsSensorEnabled SDL_GameControllerIsSensorEnabled_renamed_SDL_GamepadSensorEnabled"
.LASF942:
	.string	"SCNxFAST64 __PRI64_PREFIX \"x\""
.LASF33:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF1917:
	.string	"SDL_HINT_MOUSE_RELATIVE_SPEED_SCALE \"SDL_MOUSE_RELATIVE_SPEED_SCALE\""
.LASF1941:
	.string	"SDL_HINT_RETURN_KEY_HIDES_IME \"SDL_RETURN_KEY_HIDES_IME\""
.LASF2679:
	.string	"SDL_SCANCODE_EJECT SDL_SCANCODE_EJECT_renamed_SDL_SCANCODE_MEDIA_EJECT"
.LASF1670:
	.string	"SDL_PROP_TEXTINPUT_TYPE_NUMBER \"SDL.textinput.type\""
.LASF2507:
	.string	"SDLK_BACKQUOTE SDLK_BACKQUOTE_renamed_SDLK_GRAVE"
.LASF2111:
	.string	"SDL_PROP_TEXTURE_CREATE_OPENGL_TEXTURE_NUMBER \"SDL.texture.create.opengl.texture\""
.LASF428:
	.string	"__USE_POSIX"
.LASF1945:
	.string	"SDL_HINT_SCREENSAVER_INHIBIT_ACTIVITY_NAME \"SDL_SCREENSAVER_INHIBIT_ACTIVITY_NAME\""
.LASF458:
	.string	"__GLIBC_USE_ISOC23 0"
.LASF182:
	.string	"__DBL_DENORM_MIN__ ((double)4.94065645841246544176568792868221372e-324L)"
.LASF1012:
	.string	"SDL_SCANF_VARARG_FUNC(fmtargnumber) __attribute__ (( format( __scanf__, fmtargnumber, fmtargnumber+1 )))"
.LASF1844:
	.string	"SDL_HINT_JOYSTICK_DEVICE \"SDL_JOYSTICK_DEVICE\""
.LASF309:
	.string	"__BFLT16_MIN__ 1.17549435082228750796873653722224568e-38BF16"
.LASF841:
	.string	"PRIuLEAST32 \"u\""
.LASF144:
	.string	"__UINT_FAST32_MAX__ 0xffffffffffffffffUL"
.LASF1604:
	.string	"SDLK_LSHIFT 0x400000e1u"
.LASF1740:
	.string	"SDL_PROP_GPU_SHADER_CREATE_NAME_STRING \"SDL.gpu.shader.create.name\""
.LASF2233:
	.string	"SDL_CONTROLLERAXISMOTION SDL_CONTROLLERAXISMOTION_renamed_SDL_EVENT_GAMEPAD_AXIS_MOTION"
.LASF1343:
	.string	"SDL_PROP_WINDOW_WAYLAND_EGL_WINDOW_POINTER \"SDL.window.wayland.egl_window\""
.LASF2766:
	.string	"float"
.LASF2397:
	.string	"SDL_GameControllerSendEffect SDL_GameControllerSendEffect_renamed_SDL_SendGamepadEffect"
.LASF1078:
	.string	"SDL_MemoryBarrierAcquire() SDL_CompilerBarrier()"
.LASF949:
	.string	"SCNiPTR __PRIPTR_PREFIX \"i\""
.LASF2070:
	.string	"SDL_PROP_RENDERER_CREATE_VULKAN_DEVICE_POINTER \"SDL.renderer.create.vulkan.device\""
.LASF2366:
	.string	"SDL_GameControllerGetAxisFromString SDL_GameControllerGetAxisFromString_renamed_SDL_GetGamepadAxisFromString"
.LASF852:
	.string	"PRIxLEAST16 \"x\""
.LASF599:
	.string	"__STD_TYPE typedef"
.LASF912:
	.string	"SCNuLEAST16 \"hu\""
.LASF2879:
	.string	"SDL_DisplayID"
.LASF321:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF3303:
	.string	"num_candidates"
.LASF1886:
	.string	"SDL_HINT_JOYSTICK_LINUX_DIGITAL_HATS \"SDL_JOYSTICK_LINUX_DIGITAL_HATS\""
.LASF264:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF1310:
	.string	"SDL_PROP_WINDOW_CREATE_COCOA_VIEW_POINTER \"SDL.window.create.cocoa.view\""
.LASF1655:
	.string	"SDL_KMOD_LEVEL5 0x0004u"
.LASF435:
	.string	"__USE_XOPEN2K"
.LASF1536:
	.string	"SDLK_CUT 0x4000007bu"
.LASF1474:
	.string	"SDLK_F2 0x4000003bu"
.LASF2852:
	.string	"SDL_PIXELFORMAT_YUY2"
.LASF1141:
	.string	"SDL_RELEASE(x) SDL_THREAD_ANNOTATION_ATTRIBUTE__(release_capability(x))"
.LASF1066:
	.string	"SDL_NULL_WHILE_LOOP_CONDITION (0)"
.LASF3090:
	.string	"SDL_SCANCODE_KP_MEMDIVIDE"
.LASF2416:
	.string	"SDL_HapticPause SDL_HapticPause_renamed_SDL_PauseHaptic"
.LASF423:
	.string	"_FEATURES_H 1"
.LASF468:
	.string	"__GLIBC_USE_DEPRECATED_SCANF 0"
.LASF853:
	.string	"PRIxLEAST32 \"x\""
.LASF1278:
	.string	"SDL_GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH 0x0001"
.LASF2600:
	.string	"SDL_IntersectFRect SDL_IntersectFRect_renamed_SDL_GetRectIntersectionFloat"
.LASF126:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF2797:
	.string	"SDL_PIXELFORMAT_INDEX1MSB"
.LASF547:
	.string	"__LDBL_REDIR2_DECL(name) "
.LASF1406:
	.string	"SDLK_PERCENT 0x00000025u"
.LASF205:
	.string	"__FLT16_DIG__ 3"
.LASF1533:
	.string	"SDLK_STOP 0x40000078u"
.LASF2126:
	.string	"SDL_PROP_TEXTURE_HDR_HEADROOM_FLOAT \"SDL.texture.HDR_headroom\""
.LASF2701:
	.string	"SDL_FreeSurface SDL_FreeSurface_renamed_SDL_DestroySurface"
.LASF3222:
	.string	"SDL_EVENT_MOUSE_ADDED"
.LASF3153:
	.string	"SDL_PenInputFlags"
.LASF1059:
	.string	"SDL_begin_code_h"
.LASF2400:
	.string	"SDL_GameControllerSetSensorEnabled SDL_GameControllerSetSensorEnabled_renamed_SDL_SetGamepadSensorEnabled"
.LASF16:
	.string	"__PIC__ 2"
.LASF3231:
	.string	"SDL_EVENT_JOYSTICK_BATTERY_UPDATED"
.LASF2934:
	.string	"SDL_SCANCODE_SPACE"
.LASF319:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF3113:
	.string	"SDL_SCANCODE_MEDIA_RECORD"
.LASF1736:
	.string	"SDL_PROP_GPU_DEVICE_CREATE_D3D12_SEMANTIC_NAME_STRING \"SDL.gpu.device.create.d3d12.semantic\""
.LASF2734:
	.string	"SDL_iOSSetAnimationCallback SDL_iOSSetAnimationCallback_renamed_SDL_SetiOSAnimationCallback"
.LASF2435:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_PS4_RUMBLE SDL_HINT_JOYSTICK_HIDAPI_PS4_RUMBLE_renamed_SDL_HINT_JOYSTICK_ENHANCED_REPORTS"
.LASF1115:
	.string	"SDL_SwapFloatBE(x) SDL_SwapFloat(x)"
.LASF2117:
	.string	"SDL_PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_U_NUMBER \"SDL.texture.create.opengles2.texture_u\""
.LASF64:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF583:
	.string	"__GLIBC_USE_IEC_60559_TYPES_EXT 0"
.LASF577:
	.string	"__GLIBC_USE_IEC_60559_EXT 0"
.LASF618:
	.string	"__FSBLKCNT_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF1103:
	.string	"SDL_Swap64(x) __builtin_bswap64(x)"
.LASF1939:
	.string	"SDL_HINT_RENDER_METAL_PREFER_LOW_POWER_DEVICE \"SDL_RENDER_METAL_PREFER_LOW_POWER_DEVICE\""
.LASF282:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF2826:
	.string	"SDL_PIXELFORMAT_ABGR8888"
.LASF2887:
	.string	"SDL_POWERSTATE_NO_BATTERY"
.LASF2581:
	.string	"SDL_AllocFormat SDL_AllocFormat_renamed_SDL_GetPixelFormatDetails"
.LASF1946:
	.string	"SDL_HINT_SHUTDOWN_DBUS_ON_QUIT \"SDL_SHUTDOWN_DBUS_ON_QUIT\""
.LASF2183:
	.string	"SDL_AtomicCASPtr SDL_AtomicCASPtr_renamed_SDL_CompareAndSwapAtomicPointer"
.LASF2498:
	.string	"KMOD_SCROLL KMOD_SCROLL_renamed_SDL_KMOD_SCROLL"
.LASF2216:
	.string	"SDL_GetCPUCount SDL_GetCPUCount_renamed_SDL_GetNumLogicalCPUCores"
.LASF1976:
	.string	"SDL_HINT_VIDEO_X11_SCALING_FACTOR \"SDL_VIDEO_X11_SCALING_FACTOR\""
.LASF289:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF2487:
	.string	"KMOD_LALT KMOD_LALT_renamed_SDL_KMOD_LALT"
.LASF2504:
	.string	"SDLK_AUDIOPREV SDLK_AUDIOPREV_renamed_SDLK_MEDIA_PREVIOUS_TRACK"
.LASF2466:
	.string	"SDL_JoystickNumAxes SDL_JoystickNumAxes_renamed_SDL_GetNumJoystickAxes"
.LASF705:
	.string	"INT32_C(c) c"
.LASF3195:
	.string	"SDL_EVENT_WINDOW_FOCUS_GAINED"
.LASF1730:
	.string	"SDL_PROP_GPU_DEVICE_CREATE_SHADERS_PRIVATE_BOOLEAN \"SDL.gpu.device.create.shaders.private\""
.LASF962:
	.string	"SDL_arraysize(array) (sizeof(array)/sizeof(array[0]))"
.LASF784:
	.string	"_WCHAR_T_DECLARED "
.LASF397:
	.string	"__STDC_IEC_60559_BFP__ 201404L"
.LASF2697:
	.string	"SDL_BlitScaled SDL_BlitScaled_renamed_SDL_BlitSurfaceScaled"
.LASF401:
	.string	"SDL_h_ "
.LASF3088:
	.string	"SDL_SCANCODE_KP_MEMSUBTRACT"
.LASF2301:
	.string	"SDL_WINDOWEVENT_RESIZED SDL_WINDOWEVENT_RESIZED_renamed_SDL_EVENT_WINDOW_RESIZED"
.LASF409:
	.string	"__GNUC_VA_LIST "
.LASF1608:
	.string	"SDLK_RSHIFT 0x400000e5u"
.LASF524:
	.string	"__returns_nonnull __attribute__ ((__returns_nonnull__))"
.LASF2658:
	.string	"SDL_RWwrite SDL_RWwrite_renamed_SDL_WriteIO"
.LASF1344:
	.string	"SDL_PROP_WINDOW_WAYLAND_XDG_SURFACE_POINTER \"SDL.window.wayland.xdg_surface\""
.LASF1210:
	.string	"SDL_COLORSPACECHROMA(cspace) (SDL_ChromaLocation)(((cspace) >> 20) & 0x0F)"
.LASF701:
	.string	"WINT_MIN (0u)"
.LASF1509:
	.string	"SDLK_KP_7 0x4000005fu"
.LASF2054:
	.string	"SDL_PROP_PROCESS_CREATE_BACKGROUND_BOOLEAN \"SDL.process.create.background\""
.LASF1324:
	.string	"SDL_PROP_WINDOW_UIKIT_METAL_VIEW_TAG_NUMBER \"SDL.window.uikit.metal_view_tag\""
.LASF1413:
	.string	"SDLK_COMMA 0x0000002cu"
.LASF1838:
	.string	"SDL_HINT_IOS_HIDE_HOME_INDICATOR \"SDL_IOS_HIDE_HOME_INDICATOR\""
.LASF3010:
	.string	"SDL_SCANCODE_STOP"
.LASF2316:
	.string	"SDL_CONTROLLER_BINDTYPE_HAT SDL_CONTROLLER_BINDTYPE_HAT_renamed_SDL_GAMEPAD_BINDTYPE_HAT"
.LASF3201:
	.string	"SDL_EVENT_WINDOW_DISPLAY_SCALE_CHANGED"
.LASF1546:
	.string	"SDLK_SYSREQ 0x4000009au"
.LASF902:
	.string	"SCNiLEAST64 __PRI64_PREFIX \"i\""
.LASF1399:
	.string	"SDLK_BACKSPACE 0x00000008u"
.LASF1771:
	.string	"SDL_HAPTIC_POLAR 0"
.LASF360:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF2474:
	.string	"SDL_JoystickSendEffect SDL_JoystickSendEffect_renamed_SDL_SendJoystickEffect"
.LASF2434:
	.string	"SDL_HINT_JOYSTICK_GAMECUBE_RUMBLE_BRAKE SDL_HINT_JOYSTICK_GAMECUBE_RUMBLE_BRAKE_renamed_SDL_HINT_JOYSTICK_HIDAPI_GAMECUBE_RUMBLE_BRAKE"
.LASF1592:
	.string	"SDLK_KP_MEMADD 0x400000d3u"
.LASF2585:
	.string	"SDL_MasksToPixelFormatEnum SDL_MasksToPixelFormatEnum_renamed_SDL_GetPixelFormatForMasks"
.LASF1116:
	.string	"SDL_error_h_ "
.LASF2387:
	.string	"SDL_GameControllerHasSensor SDL_GameControllerHasSensor_renamed_SDL_GamepadHasSensor"
.LASF1961:
	.string	"SDL_HINT_VIDEO_FORCE_EGL \"SDL_VIDEO_FORCE_EGL\""
.LASF627:
	.string	"__SUSECONDS64_T_TYPE __SQUAD_TYPE"
.LASF2605:
	.string	"SDL_RectEquals SDL_RectEquals_renamed_SDL_RectsEqual"
.LASF723:
	.string	"__SIZE_T "
.LASF1966:
	.string	"SDL_HINT_VIDEO_SYNC_WINDOW_OPERATIONS \"SDL_VIDEO_SYNC_WINDOW_OPERATIONS\""
.LASF3355:
	.string	"SDL_PenTouchEvent"
.LASF1176:
	.string	"SDL_bits_h_ "
.LASF1960:
	.string	"SDL_HINT_VIDEO_EGL_ALLOW_GETDISPLAY_FALLBACK \"SDL_VIDEO_EGL_ALLOW_GETDISPLAY_FALLBACK\""
.LASF3283:
	.string	"type"
.LASF1872:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_SWITCH_HOME_LED \"SDL_JOYSTICK_HIDAPI_SWITCH_HOME_LED\""
.LASF505:
	.string	"__REDIRECT_NTHNL(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROWNL"
.LASF1762:
	.string	"SDL_HAPTIC_LEFTRIGHT (1u<<11)"
.LASF312:
	.string	"__BFLT16_HAS_DENORM__ 1"
.LASF434:
	.string	"__USE_UNIX98"
.LASF916:
	.string	"SCNuFAST16 __PRIPTR_PREFIX \"u\""
.LASF564:
	.string	"__stub_fchflags "
.LASF1174:
	.string	"SDL_AUDIO_DEVICE_DEFAULT_RECORDING ((SDL_AudioDeviceID) 0xFFFFFFFEu)"
.LASF1205:
	.ascii	"SDL_ISPIXELFORMAT_ALPHA(format) ((SDL_ISPIXELFORMAT_PACKED(f"
	.ascii	"ormat) && ((SDL_PIXELORDER(format) == SDL_PACKEDORDER_ARGB) "
	.ascii	"|| (SDL_PIXELORDER(format) == SDL_PACKEDORDER_RGBA) || (SDL_"
	.ascii	"PIXELORDER(format) == SDL_PACKEDORDER_ABGR) || (SDL_PIXELORD"
	.ascii	"ER(format) == SDL_PACKEDO"
	.string	"RDER_BGRA))) || (SDL_ISPIXELFORMAT_ARRAY(format) && ((SDL_PIXELORDER(format) == SDL_ARRAYORDER_ARGB) || (SDL_PIXELORDER(format) == SDL_ARRAYORDER_RGBA) || (SDL_PIXELORDER(format) == SDL_ARRAYORDER_ABGR) || (SDL_PIXELORDER(format) == SDL_ARRAYORDER_BGRA))))"
.LASF2699:
	.string	"SDL_FillRect SDL_FillRect_renamed_SDL_FillSurfaceRect"
.LASF2408:
	.string	"SDL_HapticGetEffectStatus SDL_HapticGetEffectStatus_renamed_SDL_GetHapticEffectStatus"
.LASF823:
	.string	"PRIo8 \"o\""
.LASF3408:
	.string	"SDL_LOG_CATEGORY_SYSTEM"
.LASF349:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF561:
	.string	"__USE_EXTERN_INLINES 1"
.LASF3175:
	.string	"SDL_EVENT_DISPLAY_ADDED"
.LASF620:
	.string	"__FSFILCNT_T_TYPE __SYSCALL_ULONG_TYPE"
.LASF2349:
	.string	"SDL_CONTROLLER_TYPE_VIRTUAL SDL_CONTROLLER_TYPE_VIRTUAL_renamed_SDL_GAMEPAD_TYPE_VIRTUAL"
.LASF413:
	.string	"va_copy(d,s) __builtin_va_copy(d,s)"
.LASF3057:
	.string	"SDL_SCANCODE_CURRENCYSUBUNIT"
.LASF2208:
	.string	"SDL_AudioStreamFlush SDL_AudioStreamFlush_renamed_SDL_FlushAudioStream"
.LASF1098:
	.string	"HAS_BUILTIN_BSWAP32 (SDL_HAS_BUILTIN(__builtin_bswap32)) || (__GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 3))"
.LASF2471:
	.string	"SDL_JoystickPath SDL_JoystickPath_renamed_SDL_GetJoystickPath"
.LASF1033:
	.string	"SDL_INIT_INTERFACE(iface) do { SDL_zerop(iface); (iface)->version = sizeof(*(iface)); } while (0)"
.LASF2710:
	.string	"SDL_SIMD_ALIGNED SDL_SIMD_ALIGNED_renamed_SDL_SURFACE_SIMD_ALIGNED"
.LASF2215:
	.string	"SDL_NewAudioStream SDL_NewAudioStream_renamed_SDL_CreateAudioStream"
.LASF2169:
	.string	"SDL_TRAYENTRY_CHECKED 0x40000000u"
.LASF2689:
	.string	"SDL_SensorUpdate SDL_SensorUpdate_renamed_SDL_UpdateSensors"
.LASF1678:
	.string	"SDL_BUTTON_RIGHT 3"
.LASF263:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF1123:
	.string	"SDL_EndThreadFunction NULL"
.LASF1919:
	.string	"SDL_HINT_MOUSE_RELATIVE_WARP_MOTION \"SDL_MOUSE_RELATIVE_WARP_MOTION\""
.LASF624:
	.string	"__TIME_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF2017:
	.string	"SDL_INIT_JOYSTICK 0x00000200u"
.LASF28:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF159:
	.string	"__FLT_MAX_EXP__ 128"
.LASF2629:
	.string	"SDL_RenderGetClipRect SDL_RenderGetClipRect_renamed_SDL_GetRenderClipRect"
.LASF204:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF2745:
	.string	"SDL_PATCHLEVEL SDL_PATCHLEVEL_renamed_SDL_MICRO_VERSION"
.LASF154:
	.string	"__FLT_RADIX__ 2"
.LASF2490:
	.string	"KMOD_LSHIFT KMOD_LSHIFT_renamed_SDL_KMOD_LSHIFT"
.LASF2566:
	.string	"SDL_SYSTEM_CURSOR_WINDOW_TOPRIGHT SDL_SYSTEM_CURSOR_WINDOW_TOPRIGHT_renamed_SDL_SYSTEM_CURSOR_NE_RESIZE"
.LASF136:
	.string	"__INT_FAST16_MAX__ 0x7fffffffffffffffL"
.LASF2540:
	.string	"SDL_LogResetPriorities SDL_LogResetPriorities_renamed_SDL_ResetLogPriorities"
.LASF961:
	.string	"SDL_COMPILE_TIME_ASSERT(name,x) typedef int SDL_compile_time_assert_ ## name[(x) * 2 - 1]"
.LASF2259:
	.string	"SDL_FINGERMOTION SDL_FINGERMOTION_renamed_SDL_EVENT_FINGER_MOTION"
.LASF1679:
	.string	"SDL_BUTTON_X1 4"
.LASF2406:
	.string	"SDL_HapticClose SDL_HapticClose_renamed_SDL_CloseHaptic"
.LASF1529:
	.string	"SDLK_EXECUTE 0x40000074u"
.LASF2001:
	.string	"SDL_HINT_WINDOWS_RAW_KEYBOARD \"SDL_WINDOWS_RAW_KEYBOARD\""
.LASF3102:
	.string	"SDL_SCANCODE_RCTRL"
.LASF1303:
	.string	"SDL_PROP_WINDOW_CREATE_TOOLTIP_BOOLEAN \"SDL.window.create.tooltip\""
.LASF2419:
	.string	"SDL_HapticRumblePlay SDL_HapticRumblePlay_renamed_SDL_PlayHapticRumble"
.LASF528:
	.string	"__always_inline __inline __attribute__ ((__always_inline__))"
.LASF3056:
	.string	"SDL_SCANCODE_CURRENCYUNIT"
.LASF98:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF412:
	.string	"va_arg(v,l) __builtin_va_arg(v,l)"
.LASF2009:
	.string	"SDL_HINT_X11_XCB_LIBRARY \"SDL_X11_XCB_LIBRARY\""
.LASF590:
	.string	"__ULONGWORD_TYPE unsigned long int"
.LASF2254:
	.string	"SDL_DROPCOMPLETE SDL_DROPCOMPLETE_renamed_SDL_EVENT_DROP_COMPLETE"
.LASF2655:
	.string	"SDL_RWseek SDL_RWseek_renamed_SDL_SeekIO"
.LASF510:
	.string	"__attribute_malloc__ __attribute__ ((__malloc__))"
.LASF1812:
	.string	"SDL_HINT_EMSCRIPTEN_ASYNCIFY \"SDL_EMSCRIPTEN_ASYNCIFY\""
.LASF2671:
	.string	"SDL_NUM_SCANCODES SDL_NUM_SCANCODES_renamed_SDL_SCANCODE_COUNT"
.LASF2140:
	.string	"SDL_PROP_TEXTURE_OPENGLES2_TEXTURE_NUMBER \"SDL.texture.opengles2.texture\""
.LASF2975:
	.string	"SDL_SCANCODE_KP_MULTIPLY"
.LASF1283:
	.string	"SDL_PROP_WINDOW_CREATE_ALWAYS_ON_TOP_BOOLEAN \"SDL.window.create.always_on_top\""
.LASF2506:
	.string	"SDLK_AUDIOSTOP SDLK_AUDIOSTOP_renamed_SDLK_MEDIA_STOP"
.LASF1440:
	.string	"SDLK_A 0x00000061u"
.LASF1277:
	.string	"SDL_GL_CONTEXT_RELEASE_BEHAVIOR_NONE 0x0000"
.LASF186:
	.string	"__DBL_IS_IEC_60559__ 1"
.LASF795:
	.string	"_INTTYPES_H 1"
.LASF2873:
	.string	"format"
.LASF2168:
	.string	"SDL_TRAYENTRY_DISABLED 0x80000000u"
.LASF1092:
	.string	"__BYTE_ORDER __LITTLE_ENDIAN"
.LASF2232:
	.string	"SDL_CLIPBOARDUPDATE SDL_CLIPBOARDUPDATE_renamed_SDL_EVENT_CLIPBOARD_UPDATE"
.LASF3108:
	.string	"SDL_SCANCODE_WAKE"
.LASF2475:
	.string	"SDL_JoystickSetLED SDL_JoystickSetLED_renamed_SDL_SetJoystickLED"
.LASF3336:
	.string	"SDL_GamepadDeviceEvent"
.LASF2989:
	.string	"SDL_SCANCODE_KP_PERIOD"
.LASF883:
	.string	"SCNd8 \"hhd\""
.LASF617:
	.string	"__BLKCNT64_T_TYPE __SQUAD_TYPE"
.LASF1146:
	.string	"SDL_EXCLUDES(x) SDL_THREAD_ANNOTATION_ATTRIBUTE__(locks_excluded(x))"
.LASF11:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF2543:
	.string	"SDL_LogSetPriority SDL_LogSetPriority_renamed_SDL_SetLogPriority"
.LASF3306:
	.string	"padding1"
.LASF1989:
	.string	"SDL_HINT_WAVE_FACT_CHUNK \"SDL_WAVE_FACT_CHUNK\""
.LASF1577:
	.string	"SDLK_KP_PERCENT 0x400000c4u"
.LASF3326:
	.string	"padding4"
.LASF1447:
	.string	"SDLK_H 0x00000068u"
.LASF2532:
	.string	"SDLK_u SDLK_u_renamed_SDLK_U"
.LASF13:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF2147:
	.string	"SDL_RENDERER_VSYNC_ADAPTIVE (-1)"
.LASF1877:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_XBOX \"SDL_JOYSTICK_HIDAPI_XBOX\""
.LASF820:
	.string	"PRIiFAST16 __PRIPTR_PREFIX \"i\""
.LASF227:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF2625:
	.string	"SDL_RenderFillRectF SDL_RenderFillRectF_renamed_SDL_RenderFillRect"
.LASF2320:
	.string	"SDL_CONTROLLER_BUTTON_BACK SDL_CONTROLLER_BUTTON_BACK_renamed_SDL_GAMEPAD_BUTTON_BACK"
.LASF1871:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_SWITCH \"SDL_JOYSTICK_HIDAPI_SWITCH\""
.LASF1458:
	.string	"SDLK_S 0x00000073u"
.LASF2614:
	.string	"SDL_RenderDrawLineF SDL_RenderDrawLineF_renamed_SDL_RenderLine"
.LASF1169:
	.string	"SDL_AUDIO_ISLITTLEENDIAN(x) (!SDL_AUDIO_ISBIGENDIAN(x))"
.LASF2347:
	.string	"SDL_CONTROLLER_TYPE_PS5 SDL_CONTROLLER_TYPE_PS5_renamed_SDL_GAMEPAD_TYPE_PS5"
.LASF448:
	.string	"__GLIBC_USE_ISOC23"
.LASF2777:
	.string	"__uint32_t"
.LASF2424:
	.string	"SDL_HapticStopAll SDL_HapticStopAll_renamed_SDL_StopHapticEffects"
.LASF1081:
	.string	"SDL_AtomicDecRef(a) (SDL_AddAtomicInt(a, -1) == 1)"
.LASF1561:
	.string	"SDLK_CURRENCYUNIT 0x400000b4u"
.LASF3325:
	.string	"value"
.LASF2106:
	.string	"SDL_PROP_TEXTURE_CREATE_D3D11_TEXTURE_V_POINTER \"SDL.texture.create.d3d11.texture_v\""
.LASF2317:
	.string	"SDL_CONTROLLER_BINDTYPE_NONE SDL_CONTROLLER_BINDTYPE_NONE_renamed_SDL_GAMEPAD_BINDTYPE_NONE"
.LASF3107:
	.string	"SDL_SCANCODE_SLEEP"
.LASF1313:
	.string	"SDL_PROP_WINDOW_CREATE_WAYLAND_WL_SURFACE_POINTER \"SDL.window.create.wayland.wl_surface\""
.LASF3389:
	.string	"adevice"
.LASF1926:
	.string	"SDL_HINT_OPENGL_ES_DRIVER \"SDL_OPENGL_ES_DRIVER\""
.LASF1747:
	.string	"SDL_PROP_GPU_TEXTURE_CREATE_NAME_STRING \"SDL.gpu.texture.create.name\""
.LASF868:
	.string	"PRIXFAST16 __PRIPTR_PREFIX \"X\""
.LASF447:
	.string	"__KERNEL_STRICT_NAMES"
.LASF1024:
	.string	"SDL_NORETURN __attribute__((noreturn))"
.LASF1488:
	.string	"SDLK_INSERT 0x40000049u"
.LASF3094:
	.string	"SDL_SCANCODE_KP_BINARY"
.LASF3335:
	.string	"SDL_GamepadButtonEvent"
.LASF3162:
	.string	"SDL_PEN_AXIS_COUNT"
.LASF273:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF3192:
	.string	"SDL_EVENT_WINDOW_RESTORED"
.LASF532:
	.string	"__fortify_function __extern_always_inline __attribute_artificial__"
.LASF1543:
	.string	"SDLK_KP_COMMA 0x40000085u"
.LASF2022:
	.string	"SDL_INIT_CAMERA 0x00010000u"
.LASF3281:
	.string	"SDL_EVENT_ENUM_PADDING"
.LASF68:
	.string	"__INT_FAST32_TYPE__ long int"
.LASF2615:
	.string	"SDL_RenderDrawLines SDL_RenderDrawLines_renamed_SDL_RenderLines"
.LASF1850:
	.string	"SDL_HINT_JOYSTICK_GAMECUBE_DEVICES_EXCLUDED \"SDL_JOYSTICK_GAMECUBE_DEVICES_EXCLUDED\""
.LASF1347:
	.string	"SDL_PROP_WINDOW_WAYLAND_XDG_POPUP_POINTER \"SDL.window.wayland.xdg_popup\""
.LASF3300:
	.string	"length"
.LASF10:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF1385:
	.string	"SDL_PROP_GAMEPAD_CAP_MONO_LED_BOOLEAN SDL_PROP_JOYSTICK_CAP_MONO_LED_BOOLEAN"
.LASF682:
	.string	"INT_FAST32_MAX (9223372036854775807L)"
.LASF2237:
	.string	"SDL_CONTROLLERDEVICEREMAPPED SDL_CONTROLLERDEVICEREMAPPED_renamed_SDL_EVENT_GAMEPAD_REMAPPED"
.LASF449:
	.string	"__GLIBC_USE_ISOC2Y"
.LASF1500:
	.string	"SDLK_KP_MINUS 0x40000056u"
.LASF1785:
	.string	"SDL_HINT_APPLE_TV_CONTROLLER_UI_EVENTS \"SDL_APPLE_TV_CONTROLLER_UI_EVENTS\""
.LASF1044:
	.string	"SDL_zerop(x) SDL_memset((x), 0, sizeof(*(x)))"
.LASF1591:
	.string	"SDLK_KP_MEMCLEAR 0x400000d2u"
.LASF467:
	.string	"__GLIBC_USE_DEPRECATED_GETS 1"
.LASF534:
	.string	"__va_arg_pack_len() __builtin_va_arg_pack_len ()"
.LASF780:
	.string	"_WCHAR_T_H "
.LASF801:
	.string	"PRId32 \"d\""
.LASF91:
	.string	"__LONG_WIDTH__ 64"
.LASF1776:
	.string	"SDL_hidapi_h_ "
.LASF266:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF2843:
	.string	"SDL_PIXELFORMAT_ABGR64_FLOAT"
.LASF1779:
	.string	"SDL_HINT_ANDROID_ALLOW_RECREATE_ACTIVITY \"SDL_ANDROID_ALLOW_RECREATE_ACTIVITY\""
.LASF3077:
	.string	"SDL_SCANCODE_KP_VERTICALBAR"
.LASF642:
	.string	"_BITS_TIME64_H 1"
.LASF1843:
	.string	"SDL_HINT_JOYSTICK_BLACKLIST_DEVICES_EXCLUDED \"SDL_JOYSTICK_BLACKLIST_DEVICES_EXCLUDED\""
.LASF3228:
	.string	"SDL_EVENT_JOYSTICK_BUTTON_UP"
.LASF2206:
	.string	"SDL_AudioStreamAvailable SDL_AudioStreamAvailable_renamed_SDL_GetAudioStreamAvailable"
.LASF1632:
	.string	"SDLK_AC_PRINT 0x40000116u"
.LASF2333:
	.string	"SDL_CONTROLLER_BUTTON_PADDLE3 SDL_CONTROLLER_BUTTON_PADDLE3_renamed_SDL_GAMEPAD_BUTTON_RIGHT_PADDLE2"
.LASF722:
	.string	"_T_SIZE "
.LASF2263:
	.string	"SDL_JOYBATTERYUPDATED SDL_JOYBATTERYUPDATED_renamed_SDL_EVENT_JOYSTICK_BATTERY_UPDATED"
.LASF1006:
	.string	"SDL_OUT_BYTECAP(x) "
.LASF2825:
	.string	"SDL_PIXELFORMAT_RGBA8888"
.LASF228:
	.string	"__FLT32_NORM_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF3386:
	.string	"gbutton"
.LASF1929:
	.string	"SDL_HINT_POLL_SENTINEL \"SDL_POLL_SENTINEL\""
.LASF2818:
	.string	"SDL_PIXELFORMAT_RGB24"
.LASF2361:
	.string	"SDL_GameControllerFromPlayerIndex SDL_GameControllerFromPlayerIndex_renamed_SDL_GetGamepadFromPlayerIndex"
.LASF877:
	.string	"PRIdPTR __PRIPTR_PREFIX \"d\""
.LASF3433:
	.string	"SDL_GetWindowSize"
.LASF2610:
	.string	"SDL_RenderCopyEx SDL_RenderCopyEx_renamed_SDL_RenderTextureRotated"
.LASF3217:
	.string	"SDL_EVENT_TEXT_EDITING_CANDIDATES"
.LASF2306:
	.string	"SDL_CONTROLLER_AXIS_INVALID SDL_CONTROLLER_AXIS_INVALID_renamed_SDL_GAMEPAD_AXIS_INVALID"
.LASF692:
	.string	"INTMAX_MAX (__INT64_C(9223372036854775807))"
.LASF1932:
	.string	"SDL_HINT_RENDER_DIRECT3D_THREADSAFE \"SDL_RENDER_DIRECT3D_THREADSAFE\""
.LASF2304:
	.string	"SDL_WINDOWEVENT_SIZE_CHANGED SDL_WINDOWEVENT_SIZE_CHANGED_renamed_SDL_EVENT_WINDOW_PIXEL_SIZE_CHANGED"
.LASF2752:
	.string	"SDL_GetDisplayOrientation SDL_GetDisplayOrientation_renamed_SDL_GetCurrentDisplayOrientation"
.LASF2729:
	.string	"SDL_GDKGetTaskQueue SDL_GDKGetTaskQueue_renamed_SDL_GetGDKTaskQueue"
.LASF3128:
	.string	"SDL_SCANCODE_AC_PROPERTIES"
.LASF927:
	.string	"SCNoFAST8 \"hho\""
.LASF2188:
	.string	"SDL_AtomicSetPtr SDL_AtomicSetPtr_renamed_SDL_SetAtomicPointer"
.LASF1680:
	.string	"SDL_BUTTON_X2 5"
.LASF2410:
	.string	"SDL_HapticNumAxes SDL_HapticNumAxes_renamed_SDL_GetNumHapticAxes"
.LASF2808:
	.string	"SDL_PIXELFORMAT_ARGB4444"
.LASF2736:
	.string	"SDL_iPhoneSetAnimationCallback SDL_iPhoneSetAnimationCallback_renamed_SDL_iOSSetAnimationCallback"
.LASF899:
	.string	"SCNiLEAST8 \"hhi\""
.LASF864:
	.string	"PRIXLEAST16 \"X\""
.LASF570:
	.string	"__GLIBC_USE_LIB_EXT2"
.LASF1980:
	.string	"SDL_HINT_VITA_ENABLE_BACK_TOUCH \"SDL_VITA_ENABLE_BACK_TOUCH\""
.LASF148:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF3074:
	.string	"SDL_SCANCODE_KP_GREATER"
.LASF3008:
	.string	"SDL_SCANCODE_MENU"
.LASF368:
	.string	"__x86_64 1"
.LASF1672:
	.string	"SDL_PROP_TEXTINPUT_AUTOCORRECT_BOOLEAN \"SDL.textinput.autocorrect\""
.LASF1082:
	.string	"SDL_audio_h_ "
.LASF365:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF2864:
	.string	"SDL_PIXELFORMAT_RGBX32"
.LASF2429:
	.string	"SDL_MouseIsHaptic SDL_MouseIsHaptic_renamed_SDL_IsMouseHaptic"
.LASF3332:
	.string	"SDL_JoyBatteryEvent"
.LASF585:
	.string	"__S16_TYPE short int"
.LASF1235:
	.string	"SDL_video_h_ "
.LASF80:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF678:
	.string	"INT_FAST32_MIN (-9223372036854775807L-1)"
.LASF1339:
	.string	"SDL_PROP_WINDOW_WIN32_INSTANCE_POINTER \"SDL.window.win32.instance\""
.LASF1424:
	.string	"SDLK_7 0x00000037u"
.LASF921:
	.string	"SCNo32 \"o\""
.LASF2286:
	.string	"SDL_TEXTINPUT SDL_TEXTINPUT_renamed_SDL_EVENT_TEXT_INPUT"
.LASF729:
	.string	"_SIZE_T_DECLARED "
.LASF2721:
	.string	"SDL_AndroidGetJNIEnv SDL_AndroidGetJNIEnv_renamed_SDL_GetAndroidJNIEnv"
.LASF2210:
	.string	"SDL_AudioStreamPut SDL_AudioStreamPut_renamed_SDL_PutAudioStreamData"
.LASF1483:
	.string	"SDLK_F11 0x40000044u"
.LASF2271:
	.string	"SDL_KEYMAPCHANGED SDL_KEYMAPCHANGED_renamed_SDL_EVENT_KEYMAP_CHANGED"
.LASF1540:
	.string	"SDLK_MUTE 0x4000007fu"
.LASF1569:
	.string	"SDLK_KP_A 0x400000bcu"
.LASF2043:
	.string	"SDL_platform_h_ "
.LASF2743:
	.string	"SDL_GetTicks64 SDL_GetTicks64_renamed_SDL_GetTicks"
.LASF2832:
	.string	"SDL_PIXELFORMAT_RGB48"
.LASF420:
	.string	"_STDINT_H 1"
.LASF1452:
	.string	"SDLK_M 0x0000006du"
.LASF2097:
	.string	"SDL_PROP_TEXTURE_CREATE_COLORSPACE_NUMBER \"SDL.texture.create.colorspace\""
.LASF2432:
	.string	"SDL_HINT_DIRECTINPUT_ENABLED SDL_HINT_DIRECTINPUT_ENABLED_renamed_SDL_HINT_JOYSTICK_DIRECTINPUT"
.LASF1405:
	.string	"SDLK_DOLLAR 0x00000024u"
.LASF2551:
	.string	"SDL_SYSTEM_CURSOR_IBEAM SDL_SYSTEM_CURSOR_IBEAM_renamed_SDL_SYSTEM_CURSOR_TEXT"
.LASF1567:
	.string	"SDLK_KP_TAB 0x400000bau"
.LASF1519:
	.string	"SDLK_F15 0x4000006au"
.LASF3260:
	.string	"SDL_EVENT_PEN_PROXIMITY_OUT"
.LASF1935:
	.string	"SDL_HINT_RENDER_GPU_DEBUG \"SDL_RENDER_GPU_DEBUG\""
.LASF865:
	.string	"PRIXLEAST32 \"X\""
.LASF913:
	.string	"SCNuLEAST32 \"u\""
.LASF1555:
	.string	"SDLK_CRSEL 0x400000a3u"
.LASF710:
	.string	"UINT64_C(c) c ## UL"
.LASF170:
	.string	"__FLT_IS_IEC_60559__ 1"
.LASF1715:
	.string	"SDL_GPU_BUFFERUSAGE_COMPUTE_STORAGE_WRITE (1u << 5)"
.LASF3199:
	.string	"SDL_EVENT_WINDOW_ICCPROF_CHANGED"
.LASF1514:
	.string	"SDLK_APPLICATION 0x40000065u"
.LASF2636:
	.string	"SDL_RenderIsClipEnabled SDL_RenderIsClipEnabled_renamed_SDL_RenderClipEnabled"
.LASF1489:
	.string	"SDLK_HOME 0x4000004au"
.LASF1668:
	.string	"SDL_KMOD_ALT (SDL_KMOD_LALT | SDL_KMOD_RALT)"
.LASF2730:
	.string	"SDL_LinuxSetThreadPriority SDL_LinuxSetThreadPriority_renamed_SDL_SetLinuxThreadPriority"
.LASF2903:
	.string	"SDL_SCANCODE_J"
.LASF623:
	.string	"__CLOCK_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF1527:
	.string	"SDLK_F23 0x40000072u"
.LASF2553:
	.string	"SDL_SYSTEM_CURSOR_SIZEALL SDL_SYSTEM_CURSOR_SIZEALL_renamed_SDL_SYSTEM_CURSOR_MOVE"
.LASF2546:
	.string	"SDL_BUTTON SDL_BUTTON_renamed_SDL_BUTTON_MASK"
.LASF1361:
	.string	"SDL_PROP_FILE_DIALOG_CANCEL_STRING \"SDL.filedialog.cancel\""
.LASF416:
	.string	"_VA_LIST "
.LASF1481:
	.string	"SDLK_F9 0x40000042u"
.LASF2947:
	.string	"SDL_SCANCODE_CAPSLOCK"
.LASF171:
	.string	"__DBL_MANT_DIG__ 53"
.LASF1262:
	.string	"SDL_WINDOWPOS_UNDEFINED_MASK 0x1FFF0000u"
.LASF2391:
	.string	"SDL_GameControllerMappingForGUID SDL_GameControllerMappingForGUID_renamed_SDL_GetGamepadMappingForGUID"
.LASF1225:
	.string	"SDL_MUSTLOCK(S) (((S)->flags & SDL_SURFACE_LOCK_NEEDED) == SDL_SURFACE_LOCK_NEEDED)"
.LASF2794:
	.string	"SDL_AudioDeviceID"
.LASF3410:
	.string	"SDL_LOG_CATEGORY_VIDEO"
.LASF145:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF2526:
	.string	"SDLK_o SDLK_o_renamed_SDLK_O"
.LASF811:
	.string	"PRIi8 \"i\""
.LASF2420:
	.string	"SDL_HapticRumbleStop SDL_HapticRumbleStop_renamed_SDL_StopHapticRumble"
.LASF2066:
	.string	"SDL_PROP_RENDERER_CREATE_PRESENT_VSYNC_NUMBER \"SDL.renderer.create.present_vsync\""
.LASF1654:
	.string	"SDL_KMOD_RSHIFT 0x0002u"
.LASF128:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF2402:
	.string	"SDL_GameControllerUpdate SDL_GameControllerUpdate_renamed_SDL_UpdateGamepads"
.LASF3244:
	.string	"SDL_EVENT_GAMEPAD_STEAM_HANDLE_UPDATED"
.LASF2829:
	.string	"SDL_PIXELFORMAT_XBGR2101010"
.LASF3327:
	.string	"SDL_JoyBallEvent"
.LASF897:
	.string	"SCNi32 \"i\""
.LASF876:
	.string	"PRIXMAX __PRI64_PREFIX \"X\""
.LASF522:
	.string	"__attribute_nonnull__(params) __attribute__ ((__nonnull__ params))"
.LASF2021:
	.string	"SDL_INIT_SENSOR 0x00008000u"
.LASF2154:
	.string	"SDL_US_PER_SECOND 1000000"
.LASF2647:
	.string	"RW_SEEK_END RW_SEEK_END_renamed_SDL_IO_SEEK_END"
.LASF1387:
	.string	"SDL_PROP_GAMEPAD_CAP_PLAYER_LED_BOOLEAN SDL_PROP_JOYSTICK_CAP_PLAYER_LED_BOOLEAN"
.LASF1190:
	.string	"SDL_ALPHA_TRANSPARENT 0"
.LASF3348:
	.string	"SDL_RenderEvent"
.LASF310:
	.string	"__BFLT16_EPSILON__ 7.81250000000000000000000000000000000e-3BF16"
.LASF1028:
	.string	"SDL_HAS_FALLTHROUGH"
.LASF2124:
	.string	"SDL_PROP_TEXTURE_HEIGHT_NUMBER \"SDL.texture.height\""
.LASF1842:
	.string	"SDL_HINT_JOYSTICK_BLACKLIST_DEVICES \"SDL_JOYSTICK_BLACKLIST_DEVICES\""
.LASF3058:
	.string	"SDL_SCANCODE_KP_LEFTPAREN"
.LASF2465:
	.string	"SDL_JoystickName SDL_JoystickName_renamed_SDL_GetJoystickName"
.LASF603:
	.string	"__DEV_T_TYPE __UQUAD_TYPE"
.LASF3295:
	.string	"down"
.LASF958:
	.string	"__bool_true_false_are_defined 1"
.LASF2638:
	.string	"SDL_RenderSetClipRect SDL_RenderSetClipRect_renamed_SDL_SetRenderClipRect"
.LASF2840:
	.string	"SDL_PIXELFORMAT_RGBA64_FLOAT"
.LASF1697:
	.string	"SDL_PEN_INPUT_BUTTON_4 (1u << 4)"
.LASF651:
	.string	"__intptr_t_defined "
.LASF1810:
	.string	"SDL_HINT_FILE_DIALOG_DRIVER \"SDL_FILE_DIALOG_DRIVER\""
.LASF1876:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_WII_PLAYER_LED \"SDL_JOYSTICK_HIDAPI_WII_PLAYER_LED\""
.LASF950:
	.string	"SCNoPTR __PRIPTR_PREFIX \"o\""
.LASF1247:
	.string	"SDL_WINDOW_MOUSE_FOCUS SDL_UINT64_C(0x0000000000000400)"
.LASF281:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF518:
	.string	"__attribute_deprecated__ __attribute__ ((__deprecated__))"
.LASF1821:
	.string	"SDL_HINT_GAMECONTROLLERCONFIG_FILE \"SDL_GAMECONTROLLERCONFIG_FILE\""
.LASF2520:
	.string	"SDLK_i SDLK_i_renamed_SDLK_I"
.LASF2516:
	.string	"SDLK_e SDLK_e_renamed_SDLK_E"
.LASF2512:
	.string	"SDLK_a SDLK_a_renamed_SDLK_A"
.LASF1817:
	.string	"SDL_HINT_EVENT_LOGGING \"SDL_EVENT_LOGGING\""
.LASF2472:
	.string	"SDL_JoystickRumble SDL_JoystickRumble_renamed_SDL_RumbleJoystick"
.LASF966:
	.string	"SDL_const_cast(type,expression) ((type)(expression))"
.LASF2733:
	.string	"SDL_OnApplicationWillResignActive SDL_OnApplicationWillResignActive_renamed_SDL_OnApplicationWillEnterBackground"
.LASF991:
	.string	"SDL_PRIx64 PRIx64"
.LASF1753:
	.string	"SDL_HAPTIC_SQUARE (1u<<2)"
.LASF315:
	.string	"__BFLT16_IS_IEC_60559__ 0"
.LASF230:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF501:
	.string	"__flexarr []"
.LASF1993:
	.string	"SDL_HINT_WINDOW_ACTIVATE_WHEN_RAISED \"SDL_WINDOW_ACTIVATE_WHEN_RAISED\""
.LASF3098:
	.string	"SDL_SCANCODE_LCTRL"
.LASF2968:
	.string	"SDL_SCANCODE_PAGEDOWN"
.LASF2719:
	.string	"SDL_AndroidGetExternalStorageState SDL_AndroidGetExternalStorageState_renamed_SDL_GetAndroidExternalStorageState"
.LASF2501:
	.string	"SDLK_AUDIOMUTE SDLK_AUDIOMUTE_renamed_SDLK_MUTE"
.LASF1787:
	.string	"SDL_HINT_AUDIO_ALSA_DEFAULT_DEVICE \"SDL_AUDIO_ALSA_DEFAULT_DEVICE\""
.LASF2438:
	.string	"SDL_HINT_LINUX_HAT_DEADZONES SDL_HINT_LINUX_HAT_DEADZONES_renamed_SDL_HINT_JOYSTICK_LINUX_HAT_DEADZONES"
.LASF268:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF1530:
	.string	"SDLK_HELP 0x40000075u"
.LASF347:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF1953:
	.string	"SDL_HINT_TRACKPAD_IS_TOUCH_ONLY \"SDL_TRACKPAD_IS_TOUCH_ONLY\""
.LASF2764:
	.string	"SCREEN_HEIGHT 240"
.LASF2065:
	.string	"SDL_PROP_RENDERER_CREATE_OUTPUT_COLORSPACE_NUMBER \"SDL.renderer.create.output_colorspace\""
.LASF1883:
	.string	"SDL_HINT_JOYSTICK_IOKIT \"SDL_JOYSTICK_IOKIT\""
.LASF840:
	.string	"PRIuLEAST16 \"u\""
.LASF1153:
	.string	"SDL_PROP_IOSTREAM_STDIO_FILE_POINTER \"SDL.iostream.stdio.file\""
.LASF1258:
	.string	"SDL_WINDOW_VULKAN SDL_UINT64_C(0x0000000010000000)"
.LASF110:
	.string	"__UINT8_MAX__ 0xff"
.LASF2524:
	.string	"SDLK_m SDLK_m_renamed_SDLK_M"
.LASF9:
	.string	"__ATOMIC_RELAXED 0"
.LASF1579:
	.string	"SDLK_KP_GREATER 0x400000c6u"
.LASF183:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF286:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF3360:
	.string	"source"
.LASF3366:
	.string	"SDL_QuitEvent"
.LASF2010:
	.string	"SDL_HINT_XINPUT_ENABLED \"SDL_XINPUT_ENABLED\""
.LASF265:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF924:
	.string	"SCNoLEAST16 \"ho\""
.LASF1009:
	.string	"SDL_SCANF_FORMAT_STRING "
.LASF3183:
	.string	"SDL_EVENT_WINDOW_SHOWN"
.LASF2874:
	.string	"pitch"
.LASF901:
	.string	"SCNiLEAST32 \"i\""
.LASF1954:
	.string	"SDL_HINT_TV_REMOTE_AS_JOYSTICK \"SDL_TV_REMOTE_AS_JOYSTICK\""
.LASF777:
	.string	"_BSD_WCHAR_T_ "
.LASF696:
	.string	"SIG_ATOMIC_MIN (-2147483647-1)"
.LASF294:
	.string	"__FLT64X_EPSILON__ 1.08420217248550443400745280086994171e-19F64x"
.LASF2023:
	.string	"SDL_PROP_APP_METADATA_NAME_STRING \"SDL.app.metadata.name\""
.LASF3299:
	.string	"start"
.LASF1704:
	.string	"SDL_GPU_TEXTUREUSAGE_COLOR_TARGET (1u << 1)"
.LASF2536:
	.string	"SDLK_y SDLK_y_renamed_SDLK_Y"
.LASF1742:
	.string	"SDL_PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_G_FLOAT \"SDL.gpu.texture.create.d3d12.clear.g\""
.LASF2425:
	.string	"SDL_HapticStopEffect SDL_HapticStopEffect_renamed_SDL_StopHapticEffect"
.LASF936:
	.string	"SCNxLEAST16 \"hx\""
.LASF2973:
	.string	"SDL_SCANCODE_NUMLOCKCLEAR"
.LASF2291:
	.string	"SDL_WINDOWEVENT_EXPOSED SDL_WINDOWEVENT_EXPOSED_renamed_SDL_EVENT_WINDOW_EXPOSED"
.LASF2314:
	.string	"SDL_CONTROLLER_BINDTYPE_AXIS SDL_CONTROLLER_BINDTYPE_AXIS_renamed_SDL_GAMEPAD_BINDTYPE_AXIS"
.LASF166:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF2802:
	.string	"SDL_PIXELFORMAT_INDEX8"
.LASF3278:
	.string	"SDL_EVENT_POLL_SENTINEL"
.LASF798:
	.string	"__PRIPTR_PREFIX \"l\""
.LASF3298:
	.string	"text"
.LASF1583:
	.string	"SDLK_KP_DBLVERTICALBAR 0x400000cau"
.LASF2103:
	.string	"SDL_PROP_TEXTURE_CREATE_HDR_HEADROOM_FLOAT \"SDL.texture.create.HDR_headroom\""
.LASF2319:
	.string	"SDL_CONTROLLER_BUTTON_B SDL_CONTROLLER_BUTTON_B_renamed_SDL_GAMEPAD_BUTTON_EAST"
.LASF1356:
	.string	"SDL_PROP_FILE_DIALOG_WINDOW_POINTER \"SDL.filedialog.window\""
.LASF2157:
	.string	"SDL_NS_PER_US 1000"
.LASF1475:
	.string	"SDLK_F3 0x4000003cu"
.LASF1902:
	.string	"SDL_HINT_LOGGING \"SDL_LOGGING\""
.LASF3208:
	.string	"SDL_EVENT_WINDOW_FIRST"
.LASF1290:
	.string	"SDL_PROP_WINDOW_CREATE_HIDDEN_BOOLEAN \"SDL.window.create.hidden\""
.LASF625:
	.string	"__USECONDS_T_TYPE __U32_TYPE"
.LASF1415:
	.string	"SDLK_PERIOD 0x0000002eu"
.LASF955:
	.string	"bool _Bool"
.LASF66:
	.string	"__INT_FAST8_TYPE__ signed char"
.LASF1766:
	.string	"SDL_HAPTIC_CUSTOM (1u<<15)"
.LASF2265:
	.string	"SDL_JOYBUTTONUP SDL_JOYBUTTONUP_renamed_SDL_EVENT_JOYSTICK_BUTTON_UP"
.LASF1270:
	.string	"SDL_GL_CONTEXT_PROFILE_CORE 0x0001"
.LASF1661:
	.string	"SDL_KMOD_RGUI 0x0800u"
.LASF1565:
	.string	"SDLK_KP_LEFTBRACE 0x400000b8u"
.LASF1687:
	.string	"SDL_pen_h_ "
.LASF2098:
	.string	"SDL_PROP_TEXTURE_CREATE_FORMAT_NUMBER \"SDL.texture.create.format\""
.LASF2073:
	.string	"SDL_PROP_RENDERER_NAME_STRING \"SDL.renderer.name\""
.LASF1370:
	.string	"SDL_JOYSTICK_AXIS_MIN -32768"
.LASF1625:
	.string	"SDLK_MEDIA_PLAY_PAUSE 0x4000010fu"
.LASF658:
	.string	"INT32_MAX (2147483647)"
.LASF3086:
	.string	"SDL_SCANCODE_KP_MEMCLEAR"
.LASF2122:
	.string	"SDL_PROP_TEXTURE_ACCESS_NUMBER \"SDL.texture.access\""
.LASF911:
	.string	"SCNuLEAST8 \"hhu\""
.LASF56:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF1931:
	.string	"SDL_HINT_QUIT_ON_LAST_WINDOW_CLOSE \"SDL_QUIT_ON_LAST_WINDOW_CLOSE\""
.LASF1071:
	.string	"SDL_assert_release(condition) SDL_enabled_assert(condition)"
.LASF3451:
	.string	"SDL_GetError"
.LASF1272:
	.string	"SDL_GL_CONTEXT_PROFILE_ES 0x0004"
.LASF1616:
	.string	"SDLK_MEDIA_PLAY 0x40000106u"
.LASF104:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF2883:
	.string	"SDL_PowerState"
.LASF167:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF1744:
	.string	"SDL_PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_A_FLOAT \"SDL.gpu.texture.create.d3d12.clear.a\""
.LASF2002:
	.string	"SDL_HINT_WINDOWS_FORCE_SEMAPHORE_KERNEL \"SDL_WINDOWS_FORCE_SEMAPHORE_KERNEL\""
.LASF660:
	.string	"UINT8_MAX (255)"
.LASF214:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF3211:
	.string	"SDL_EVENT_KEY_UP"
.LASF582:
	.string	"__GLIBC_USE_IEC_60559_TYPES_EXT"
.LASF1959:
	.string	"SDL_HINT_VIDEO_DUMMY_SAVE_FRAMES \"SDL_VIDEO_DUMMY_SAVE_FRAMES\""
.LASF2249:
	.string	"SDL_DISPLAYEVENT_CONNECTED SDL_DISPLAYEVENT_CONNECTED_renamed_SDL_EVENT_DISPLAY_ADDED"
.LASF2713:
	.string	"SDL_SetColorKey SDL_SetColorKey_renamed_SDL_SetSurfaceColorKey"
.LASF778:
	.string	"_WCHAR_T_DEFINED_ "
.LASF29:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF2423:
	.string	"SDL_HapticSetGain SDL_HapticSetGain_renamed_SDL_SetHapticGain"
.LASF2486:
	.string	"KMOD_GUI KMOD_GUI_renamed_SDL_KMOD_GUI"
.LASF1640:
	.string	"SDLK_AC_BOOKMARKS 0x4000011eu"
.LASF203:
	.string	"__LDBL_IS_IEC_60559__ 1"
.LASF2295:
	.string	"SDL_WINDOWEVENT_HIT_TEST SDL_WINDOWEVENT_HIT_TEST_renamed_SDL_EVENT_WINDOW_HIT_TEST"
.LASF1878:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_XBOX_360 \"SDL_JOYSTICK_HIDAPI_XBOX_360\""
.LASF2969:
	.string	"SDL_SCANCODE_RIGHT"
.LASF3446:
	.string	"window_height"
.LASF438:
	.string	"__USE_XOPEN2K8XSI"
.LASF2482:
	.string	"SDL_IsTextInputActive SDL_IsTextInputActive_renamed_SDL_TextInputActive"
.LASF999:
	.string	"SDL_PRILLu SDL_PRILL_PREFIX \"u\""
.LASF2355:
	.string	"SDL_GameControllerAddMappingsFromRW SDL_GameControllerAddMappingsFromRW_renamed_SDL_AddGamepadMappingsFromIO"
.LASF1014:
	.string	"SDL_WPRINTF_VARARG_FUNC(fmtargnumber) "
.LASF2067:
	.string	"SDL_PROP_RENDERER_CREATE_VULKAN_INSTANCE_POINTER \"SDL.renderer.create.vulkan.instance\""
.LASF2099:
	.string	"SDL_PROP_TEXTURE_CREATE_ACCESS_NUMBER \"SDL.texture.create.access\""
.LASF822:
	.string	"PRIiFAST64 __PRI64_PREFIX \"i\""
.LASF418:
	.string	"_VA_LIST_T_H "
.LASF1466:
	.string	"SDLK_LEFTBRACE 0x0000007bu"
.LASF1856:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_JOYCON_HOME_LED \"SDL_JOYSTICK_HIDAPI_JOYCON_HOME_LED\""
.LASF1669:
	.string	"SDL_KMOD_GUI (SDL_KMOD_LGUI | SDL_KMOD_RGUI)"
.LASF333:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF1658:
	.string	"SDL_KMOD_LALT 0x0100u"
.LASF2723:
	.string	"SDL_AndroidRequestPermissionCallback SDL_AndroidRequestPermissionCallback_renamed_SDL_RequestAndroidPermissionCallback"
.LASF1048:
	.string	"SDL_PI_F 3.141592653589793238462643383279502884F"
.LASF3100:
	.string	"SDL_SCANCODE_LALT"
.LASF2382:
	.string	"SDL_GameControllerGetTouchpadFinger SDL_GameControllerGetTouchpadFinger_renamed_SDL_GetGamepadTouchpadFinger"
.LASF3354:
	.string	"pen_state"
.LASF1758:
	.string	"SDL_HAPTIC_SPRING (1u<<7)"
.LASF88:
	.string	"__SCHAR_WIDTH__ 8"
.LASF1861:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_PS4 \"SDL_JOYSTICK_HIDAPI_PS4\""
.LASF2801:
	.string	"SDL_PIXELFORMAT_INDEX4MSB"
.LASF2119:
	.string	"SDL_PROP_TEXTURE_CREATE_VULKAN_TEXTURE_NUMBER \"SDL.texture.create.vulkan.texture\""
.LASF1369:
	.string	"SDL_JOYSTICK_AXIS_MAX 32767"
.LASF2530:
	.string	"SDLK_s SDLK_s_renamed_SDLK_S"
.LASF1368:
	.string	"SDL_STANDARD_GRAVITY 9.80665f"
.LASF1800:
	.string	"SDL_HINT_AUDIO_DUMMY_TIMESCALE \"SDL_AUDIO_DUMMY_TIMESCALE\""
.LASF37:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF978:
	.string	"SDL_MAX_SINT32 ((Sint32)0x7FFFFFFF)"
.LASF1254:
	.string	"SDL_WINDOW_UTILITY SDL_UINT64_C(0x0000000000020000)"
.LASF1130:
	.string	"SDL_THREAD_ANNOTATION_ATTRIBUTE__(x) "
.LASF201:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF3143:
	.string	"SDL_Keymod"
.LASF2478:
	.string	"SDL_JoystickSetVirtualButton SDL_JoystickSetVirtualButton_renamed_SDL_SetJoystickVirtualButton"
.LASF1570:
	.string	"SDLK_KP_B 0x400000bdu"
.LASF945:
	.string	"SCNoMAX __PRI64_PREFIX \"o\""
.LASF684:
	.string	"UINT_FAST8_MAX (255)"
.LASF2651:
	.string	"SDL_RWFromMem SDL_RWFromMem_renamed_SDL_IOFromMem"
.LASF3312:
	.string	"state"
.LASF1105:
	.string	"HAS_BUILTIN_BSWAP16"
.LASF1336:
	.string	"SDL_PROP_WINDOW_VIVANTE_SURFACE_POINTER \"SDL.window.vivante.surface\""
.LASF1094:
	.string	"__LONG_LONG_PAIR(HI,LO) LO, HI"
.LASF1761:
	.string	"SDL_HAPTIC_FRICTION (1u<<10)"
.LASF2167:
	.string	"SDL_TRAYENTRY_SUBMENU 0x00000004u"
.LASF1637:
	.string	"SDLK_AC_FORWARD 0x4000011bu"
.LASF2385:
	.string	"SDL_GameControllerHasAxis SDL_GameControllerHasAxis_renamed_SDL_GamepadHasAxis"
.LASF1357:
	.string	"SDL_PROP_FILE_DIALOG_LOCATION_STRING \"SDL.filedialog.location\""
.LASF1039:
	.string	"SDL_memcpy memcpy"
.LASF3437:
	.string	"SDL_CreateWindowAndRenderer"
.LASF1279:
	.string	"SDL_GL_CONTEXT_RESET_NO_NOTIFICATION 0x0000"
.LASF985:
	.string	"SDL_MIN_UINT64 SDL_UINT64_C(0x0000000000000000)"
.LASF2696:
	.string	"SDL_strtokr SDL_strtokr_renamed_SDL_strtok_r"
.LASF2591:
	.string	"SDL_PIXELFORMAT_RGB888 SDL_PIXELFORMAT_RGB888_renamed_SDL_PIXELFORMAT_XRGB8888"
.LASF3453:
	.string	"__ubsan_handle_mul_overflow"
.LASF3279:
	.string	"SDL_EVENT_USER"
.LASF222:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF2538:
	.string	"SDL_LogGetOutputFunction SDL_LogGetOutputFunction_renamed_SDL_GetLogOutputFunction"
.LASF2426:
	.string	"SDL_HapticUnpause SDL_HapticUnpause_renamed_SDL_ResumeHaptic"
.LASF3054:
	.string	"SDL_SCANCODE_THOUSANDSSEPARATOR"
.LASF1181:
	.string	"SDL_BLENDMODE_ADD 0x00000002u"
.LASF1070:
	.string	"SDL_assert(condition) SDL_disabled_assert(condition)"
.LASF718:
	.string	"__SIZE_T__ "
.LASF773:
	.string	"_T_WCHAR_ "
.LASF2971:
	.string	"SDL_SCANCODE_DOWN"
.LASF717:
	.string	"__size_t__ "
.LASF1325:
	.string	"SDL_PROP_WINDOW_UIKIT_OPENGL_FRAMEBUFFER_NUMBER \"SDL.window.uikit.opengl.framebuffer\""
.LASF1216:
	.string	"SDL_ISCOLORSPACE_MATRIX_BT2020_NCL(cspace) (SDL_COLORSPACEMATRIX(cspace) == SDL_MATRIX_COEFFICIENTS_BT2020_NCL)"
.LASF666:
	.string	"INT_LEAST32_MIN (-2147483647-1)"
.LASF1894:
	.string	"SDL_HINT_JOYSTICK_THROTTLE_DEVICES_EXCLUDED \"SDL_JOYSTICK_THROTTLE_DEVICES_EXCLUDED\""
.LASF2756:
	.string	"SDL_GetWindowDisplayMode SDL_GetWindowDisplayMode_renamed_SDL_GetWindowFullscreenMode"
.LASF1694:
	.string	"SDL_PEN_INPUT_BUTTON_1 (1u << 1)"
.LASF2583:
	.string	"SDL_Colour SDL_Colour_renamed_SDL_Color"
.LASF147:
	.string	"__INTPTR_WIDTH__ 64"
.LASF1145:
	.string	"SDL_TRY_ACQUIRE_SHARED(x,y) SDL_THREAD_ANNOTATION_ATTRIBUTE__(try_acquire_shared_capability(x, y))"
.LASF2485:
	.string	"KMOD_CTRL KMOD_CTRL_renamed_SDL_KMOD_CTRL"
.LASF2642:
	.string	"SDL_RenderSetViewport SDL_RenderSetViewport_renamed_SDL_SetRenderViewport"
.LASF2470:
	.string	"SDL_JoystickOpen SDL_JoystickOpen_renamed_SDL_OpenJoystick"
.LASF2798:
	.string	"SDL_PIXELFORMAT_INDEX2LSB"
.LASF997:
	.string	"SDL_PRILL_PREFIX \"ll\""
.LASF3237:
	.string	"SDL_EVENT_GAMEPAD_REMOVED"
.LASF1601:
	.string	"SDLK_KP_DECIMAL 0x400000dcu"
.LASF910:
	.string	"SCNu64 __PRI64_PREFIX \"u\""
.LASF979:
	.string	"SDL_MIN_SINT32 ((Sint32)(~0x7FFFFFFF))"
.LASF2731:
	.string	"SDL_LinuxSetThreadPriorityAndPolicy SDL_LinuxSetThreadPriorityAndPolicy_renamed_SDL_SetLinuxThreadPriorityAndPolicy"
.LASF2342:
	.string	"SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_JOYCON_PAIR SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_JOYCON_PAIR_renamed_SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_PAIR"
.LASF3363:
	.string	"num_mime_types"
.LASF2890:
	.string	"SDL_SensorID"
.LASF3116:
	.string	"SDL_SCANCODE_MEDIA_NEXT_TRACK"
.LASF3197:
	.string	"SDL_EVENT_WINDOW_CLOSE_REQUESTED"
.LASF3072:
	.string	"SDL_SCANCODE_KP_PERCENT"
.LASF2253:
	.string	"SDL_DROPBEGIN SDL_DROPBEGIN_renamed_SDL_EVENT_DROP_BEGIN"
.LASF3154:
	.string	"SDL_PenAxis"
.LASF453:
	.string	"__KERNEL_STRICT_NAMES "
.LASF3235:
	.string	"SDL_EVENT_GAMEPAD_BUTTON_UP"
.LASF791:
	.string	"__mbstate_t_defined 1"
.LASF1354:
	.string	"SDL_PROP_FILE_DIALOG_FILTERS_POINTER \"SDL.filedialog.filters\""
.LASF3134:
	.string	"SDL_SCANCODE_AC_REFRESH"
.LASF487:
	.string	"__P(args) args"
.LASF2455:
	.string	"SDL_JoystickGetGUIDFromString SDL_JoystickGetGUIDFromString_renamed_SDL_GUIDFromString"
.LASF2014:
	.string	"SDL_init_h_ "
.LASF1707:
	.string	"SDL_GPU_TEXTUREUSAGE_COMPUTE_STORAGE_READ (1u << 4)"
.LASF316:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF1229:
	.string	"SDL_PROP_SURFACE_HOTSPOT_X_NUMBER \"SDL.surface.hotspot.x\""
.LASF938:
	.string	"SCNxLEAST64 __PRI64_PREFIX \"x\""
.LASF3186:
	.string	"SDL_EVENT_WINDOW_MOVED"
.LASF20:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF379:
	.string	"__SSE__ 1"
.LASF672:
	.string	"UINT_LEAST8_MAX (255)"
.LASF46:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF2824:
	.string	"SDL_PIXELFORMAT_ARGB8888"
.LASF2019:
	.string	"SDL_INIT_GAMEPAD 0x00002000u"
.LASF3413:
	.string	"SDL_LOG_CATEGORY_TEST"
.LASF767:
	.string	"__CFLOAT32X _Complex _Float32x"
.LASF680:
	.string	"INT_FAST8_MAX (127)"
.LASF358:
	.string	"__HAVE_SPECULATION_SAFE_VALUE 1"
.LASF637:
	.string	"__INO_T_MATCHES_INO64_T 1"
.LASF1052:
	.string	"SDL_ICONV_EINVAL (size_t)-4"
.LASF1880:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_XBOX_360_WIRELESS \"SDL_JOYSTICK_HIDAPI_XBOX_360_WIRELESS\""
.LASF493:
	.string	"__END_DECLS "
.LASF1728:
	.string	"SDL_PROP_GPU_DEVICE_CREATE_PREFERLOWPOWER_BOOLEAN \"SDL.gpu.device.create.preferlowpower\""
.LASF655:
	.string	"INT64_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF15:
	.string	"__pic__ 2"
.LASF2732:
	.string	"SDL_OnApplicationDidBecomeActive SDL_OnApplicationDidBecomeActive_renamed_SDL_OnApplicationDidEnterForeground"
.LASF3181:
	.string	"SDL_EVENT_DISPLAY_FIRST"
.LASF400:
	.string	"__STDC_ISO_10646__ 201706L"
.LASF613:
	.string	"__PID_T_TYPE __S32_TYPE"
.LASF2838:
	.string	"SDL_PIXELFORMAT_RGB48_FLOAT"
.LASF845:
	.string	"PRIuFAST32 __PRIPTR_PREFIX \"u\""
.LASF251:
	.string	"__FLT64_IS_IEC_60559__ 1"
.LASF1083:
	.string	"SDL_endian_h_ "
.LASF245:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF588:
	.string	"__U32_TYPE unsigned int"
.LASF3232:
	.string	"SDL_EVENT_JOYSTICK_UPDATE_COMPLETE"
.LASF2204:
	.string	"AUDIO_S8 AUDIO_S8_renamed_SDL_AUDIO_S8"
.LASF2446:
	.string	"SDL_JoystickFromPlayerIndex SDL_JoystickFromPlayerIndex_renamed_SDL_GetJoystickFromPlayerIndex"
.LASF1545:
	.string	"SDLK_ALTERASE 0x40000099u"
.LASF262:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF1674:
	.string	"SDL_PROP_TEXTINPUT_ANDROID_INPUTTYPE_NUMBER \"SDL.textinput.android.inputtype\""
.LASF1441:
	.string	"SDLK_B 0x00000062u"
.LASF3171:
	.string	"SDL_EVENT_DID_ENTER_FOREGROUND"
.LASF1297:
	.string	"SDL_PROP_WINDOW_CREATE_MOUSE_GRABBED_BOOLEAN \"SDL.window.create.mouse_grabbed\""
.LASF1930:
	.string	"SDL_HINT_PREFERRED_LOCALES \"SDL_PREFERRED_LOCALES\""
.LASF764:
	.string	"__f64x(x) x ##f64x"
.LASF2514:
	.string	"SDLK_c SDLK_c_renamed_SDLK_C"
.LASF3148:
	.string	"SDL_MOUSEWHEEL_FLIPPED"
.LASF494:
	.string	"__attribute_overloadable__ "
.LASF1041:
	.string	"SDL_memmove memmove"
.LASF1764:
	.string	"SDL_HAPTIC_RESERVED2 (1u<<13)"
.LASF1120:
	.string	"SDL_thread_h_ "
.LASF200:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF1013:
	.string	"SDL_SCANF_VARARG_FUNCV(fmtargnumber) __attribute__(( format( __scanf__, fmtargnumber, 0 )))"
.LASF775:
	.string	"__WCHAR_T "
.LASF3341:
	.string	"SDL_GamepadSensorEvent"
.LASF1316:
	.string	"SDL_PROP_WINDOW_CREATE_X11_WINDOW_NUMBER \"SDL.window.create.x11.window\""
.LASF2961:
	.string	"SDL_SCANCODE_SCROLLLOCK"
.LASF2268:
	.string	"SDL_JOYBALLMOTION SDL_JOYBALLMOTION_renamed_SDL_EVENT_JOYSTICK_BALL_MOTION"
.LASF591:
	.string	"__SQUAD_TYPE long int"
.LASF697:
	.string	"SIG_ATOMIC_MAX (2147483647)"
.LASF2077:
	.string	"SDL_PROP_RENDERER_MAX_TEXTURE_SIZE_NUMBER \"SDL.renderer.max_texture_size\""
.LASF3204:
	.string	"SDL_EVENT_WINDOW_ENTER_FULLSCREEN"
.LASF2523:
	.string	"SDLK_l SDLK_l_renamed_SDLK_L"
.LASF1312:
	.string	"SDL_PROP_WINDOW_CREATE_WAYLAND_CREATE_EGL_WINDOW_BOOLEAN \"SDL.window.create.wayland.create_egl_window\""
.LASF331:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF1636:
	.string	"SDLK_AC_BACK 0x4000011au"
.LASF3061:
	.string	"SDL_SCANCODE_KP_RIGHTBRACE"
.LASF1699:
	.string	"SDL_PEN_INPUT_ERASER_TIP (1u << 30)"
.LASF295:
	.string	"__FLT64X_DENORM_MIN__ 3.64519953188247460252840593361941982e-4951F64x"
.LASF2778:
	.string	"long int"
.LASF3234:
	.string	"SDL_EVENT_GAMEPAD_BUTTON_DOWN"
.LASF1823:
	.string	"SDL_HINT_GAMECONTROLLER_IGNORE_DEVICES \"SDL_GAMECONTROLLER_IGNORE_DEVICES\""
.LASF754:
	.string	"__HAVE_DISTINCT_FLOAT32 0"
.LASF3352:
	.string	"SDL_PenProximityEvent"
.LASF1351:
	.string	"SDL_PROP_WINDOW_X11_WINDOW_NUMBER \"SDL.window.x11.window\""
.LASF2027:
	.string	"SDL_PROP_APP_METADATA_COPYRIGHT_STRING \"SDL.app.metadata.copyright\""
.LASF3082:
	.string	"SDL_SCANCODE_KP_AT"
.LASF3034:
	.string	"SDL_SCANCODE_LANG4"
.LASF1760:
	.string	"SDL_HAPTIC_INERTIA (1u<<9)"
.LASF3036:
	.string	"SDL_SCANCODE_LANG6"
.LASF1402:
	.string	"SDLK_EXCLAIM 0x00000021u"
.LASF2848:
	.string	"SDL_PIXELFORMAT_BGRA128_FLOAT"
.LASF3039:
	.string	"SDL_SCANCODE_LANG9"
.LASF1341:
	.string	"SDL_PROP_WINDOW_WAYLAND_SURFACE_POINTER \"SDL.window.wayland.surface\""
.LASF1448:
	.string	"SDLK_I 0x00000069u"
.LASF1102:
	.string	"SDL_Swap32(x) __builtin_bswap32(x)"
.LASF2205:
	.string	"AUDIO_U8 AUDIO_U8_renamed_SDL_AUDIO_U8"
.LASF983:
	.string	"SDL_MIN_SINT64 ~SDL_SINT64_C(0x7FFFFFFFFFFFFFFF)"
.LASF387:
	.string	"__gnu_linux__ 1"
.LASF2211:
	.string	"SDL_FreeAudioStream SDL_FreeAudioStream_renamed_SDL_DestroyAudioStream"
.LASF3372:
	.string	"kdevice"
.LASF3342:
	.string	"sensor"
.LASF1656:
	.string	"SDL_KMOD_LCTRL 0x0040u"
.LASF1459:
	.string	"SDLK_T 0x00000074u"
.LASF231:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF1852:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_COMBINE_JOY_CONS \"SDL_JOYSTICK_HIDAPI_COMBINE_JOY_CONS\""
.LASF707:
	.string	"UINT8_C(c) c"
.LASF575:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT_C23 0"
.LASF747:
	.string	"_BITS_FLOATN_COMMON_H "
.LASF1837:
	.string	"SDL_HINT_IME_IMPLEMENTED_UI \"SDL_IME_IMPLEMENTED_UI\""
.LASF1934:
	.string	"SDL_HINT_RENDER_VULKAN_DEBUG \"SDL_RENDER_VULKAN_DEBUG\""
.LASF1365:
	.string	"SDL_joystick_h_ "
.LASF1197:
	.string	"SDL_PIXELLAYOUT(format) (((format) >> 16) & 0x0F)"
.LASF2202:
	.string	"AUDIO_S32MSB AUDIO_S32MSB_renamed_SDL_AUDIO_S32BE"
.LASF2582:
	.string	"SDL_AllocPalette SDL_AllocPalette_renamed_SDL_CreatePalette"
.LASF919:
	.string	"SCNo8 \"hho\""
.LASF1099:
	.string	"HAS_BUILTIN_BSWAP64 (SDL_HAS_BUILTIN(__builtin_bswap64)) || (__GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 3))"
.LASF1994:
	.string	"SDL_HINT_WINDOW_ACTIVATE_WHEN_SHOWN \"SDL_WINDOW_ACTIVATE_WHEN_SHOWN\""
.LASF3202:
	.string	"SDL_EVENT_WINDOW_SAFE_AREA_CHANGED"
.LASF1194:
	.string	"SDL_PIXELFLAG(format) (((format) >> 28) & 0x0F)"
.LASF2990:
	.string	"SDL_SCANCODE_NONUSBACKSLASH"
.LASF2454:
	.string	"SDL_JoystickGetGUID SDL_JoystickGetGUID_renamed_SDL_GetJoystickGUID"
.LASF2993:
	.string	"SDL_SCANCODE_KP_EQUALS"
.LASF1335:
	.string	"SDL_PROP_WINDOW_VIVANTE_WINDOW_POINTER \"SDL.window.vivante.window\""
.LASF771:
	.string	"__WCHAR_T__ "
.LASF1038:
	.string	"SDL_clamp(x,a,b) (((x) < (a)) ? (a) : (((x) > (b)) ? (b) : (x)))"
.LASF1184:
	.string	"SDL_BLENDMODE_MUL 0x00000008u"
.LASF1627:
	.string	"SDLK_AC_NEW 0x40000111u"
.LASF2823:
	.string	"SDL_PIXELFORMAT_BGRX8888"
.LASF1289:
	.string	"SDL_PROP_WINDOW_CREATE_HEIGHT_NUMBER \"SDL.window.create.height\""
.LASF1605:
	.string	"SDLK_LALT 0x400000e2u"
.LASF2095:
	.string	"SDL_PROP_RENDERER_VULKAN_SWAPCHAIN_IMAGE_COUNT_NUMBER \"SDL.renderer.vulkan.swapchain_image_count\""
.LASF1853:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_GAMECUBE \"SDL_JOYSTICK_HIDAPI_GAMECUBE\""
.LASF2007:
	.string	"SDL_HINT_X11_FORCE_OVERRIDE_REDIRECT \"SDL_X11_FORCE_OVERRIDE_REDIRECT\""
.LASF1924:
	.string	"SDL_HINT_OPENGL_LIBRARY \"SDL_OPENGL_LIBRARY\""
.LASF576:
	.string	"__GLIBC_USE_IEC_60559_EXT"
.LASF2976:
	.string	"SDL_SCANCODE_KP_MINUS"
.LASF3097:
	.string	"SDL_SCANCODE_KP_HEXADECIMAL"
.LASF3316:
	.string	"button"
.LASF1568:
	.string	"SDLK_KP_BACKSPACE 0x400000bbu"
.LASF1060:
	.string	"SDL_assert_h_ "
.LASF2850:
	.string	"SDL_PIXELFORMAT_YV12"
.LASF440:
	.string	"__USE_LARGEFILE64"
.LASF342:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF2616:
	.string	"SDL_RenderDrawLinesF SDL_RenderDrawLinesF_renamed_SDL_RenderLines"
.LASF1834:
	.string	"SDL_HINT_GPU_DRIVER \"SDL_GPU_DRIVER\""
.LASF465:
	.string	"__USE_TIME_BITS64 1"
.LASF1784:
	.string	"SDL_HINT_APP_NAME \"SDL_APP_NAME\""
.LASF3357:
	.string	"SDL_PenButtonEvent"
.LASF2748:
	.string	"SDL_GLcontextFlag SDL_GLcontextFlag_renamed_SDL_GLContextFlag"
.LASF2473:
	.string	"SDL_JoystickRumbleTriggers SDL_JoystickRumbleTriggers_renamed_SDL_RumbleJoystickTriggers"
.LASF2575:
	.string	"SDL_SemValue SDL_SemValue_renamed_SDL_GetSemaphoreValue"
.LASF2459:
	.string	"SDL_JoystickGetProductVersion SDL_JoystickGetProductVersion_renamed_SDL_GetJoystickProductVersion"
.LASF2430:
	.string	"SDL_DelHintCallback SDL_DelHintCallback_renamed_SDL_RemoveHintCallback"
.LASF1317:
	.string	"SDL_PROP_WINDOW_SHAPE_POINTER \"SDL.window.shape\""
.LASF1418:
	.string	"SDLK_1 0x00000031u"
.LASF1589:
	.string	"SDLK_KP_MEMSTORE 0x400000d0u"
.LASF213:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF2847:
	.string	"SDL_PIXELFORMAT_ARGB128_FLOAT"
.LASF650:
	.string	"_BITS_STDINT_LEAST_H 1"
.LASF1755:
	.string	"SDL_HAPTIC_SAWTOOTHUP (1u<<4)"
.LASF956:
	.string	"true 1"
.LASF1395:
	.string	"SDL_SCANCODE_TO_KEYCODE(X) (X | SDLK_SCANCODE_MASK)"
.LASF3304:
	.string	"selected_candidate"
.LASF2640:
	.string	"SDL_RenderSetScale SDL_RenderSetScale_renamed_SDL_SetRenderScale"
.LASF3013:
	.string	"SDL_SCANCODE_CUT"
.LASF2166:
	.string	"SDL_TRAYENTRY_CHECKBOX 0x00000002u"
.LASF2409:
	.string	"SDL_HapticNewEffect SDL_HapticNewEffect_renamed_SDL_CreateHapticEffect"
.LASF3388:
	.string	"gsensor"
.LASF1998:
	.string	"SDL_HINT_WINDOWS_ENABLE_MENU_MNEMONICS \"SDL_WINDOWS_ENABLE_MENU_MNEMONICS\""
.LASF1752:
	.string	"SDL_HAPTIC_SINE (1u<<1)"
.LASF2194:
	.string	"AUDIO_F32MSB AUDIO_F32MSB_renamed_SDL_AUDIO_F32BE"
.LASF750:
	.string	"__HAVE_FLOAT64 1"
.LASF2805:
	.string	"SDL_PIXELFORMAT_XBGR4444"
.LASF334:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF430:
	.string	"__USE_POSIX199309"
.LASF2571:
	.string	"SDL_CreateCond SDL_CreateCond_renamed_SDL_CreateCondition"
.LASF766:
	.string	"__CFLOAT64 _Complex _Float64"
.LASF1493:
	.string	"SDLK_RIGHT 0x4000004fu"
.LASF172:
	.string	"__DBL_DIG__ 15"
.LASF891:
	.string	"SCNdFAST8 \"hhd\""
.LASF726:
	.string	"_SIZE_T_DEFINED_ "
.LASF1436:
	.string	"SDLK_RIGHTBRACKET 0x0000005du"
.LASF1150:
	.string	"SDL_NO_THREAD_SAFETY_ANALYSIS SDL_THREAD_ANNOTATION_ATTRIBUTE__(no_thread_safety_analysis)"
.LASF3242:
	.string	"SDL_EVENT_GAMEPAD_SENSOR_UPDATE"
.LASF593:
	.string	"__SWORD_TYPE long int"
.LASF3151:
	.string	"SDL_FingerID"
.LASF1972:
	.string	"SDL_HINT_VIDEO_WIN_D3DCOMPILER \"SDL_VIDEO_WIN_D3DCOMPILER\""
.LASF293:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF109:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF2948:
	.string	"SDL_SCANCODE_F1"
.LASF2949:
	.string	"SDL_SCANCODE_F2"
.LASF2950:
	.string	"SDL_SCANCODE_F3"
.LASF2951:
	.string	"SDL_SCANCODE_F4"
.LASF2952:
	.string	"SDL_SCANCODE_F5"
.LASF2953:
	.string	"SDL_SCANCODE_F6"
.LASF2954:
	.string	"SDL_SCANCODE_F7"
.LASF2955:
	.string	"SDL_SCANCODE_F8"
.LASF2956:
	.string	"SDL_SCANCODE_F9"
.LASF2781:
	.string	"int16_t"
.LASF2965:
	.string	"SDL_SCANCODE_PAGEUP"
.LASF2668:
	.string	"SDL_WriteLE16 SDL_WriteLE16_renamed_SDL_WriteU16LE"
.LASF2015:
	.string	"SDL_INIT_AUDIO 0x00000010u"
.LASF2115:
	.string	"SDL_PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_NUMBER \"SDL.texture.create.opengles2.texture\""
.LASF529:
	.string	"__attribute_artificial__ __attribute__ ((__artificial__))"
.LASF361:
	.string	"__SSP_STRONG__ 3"
.LASF2584:
	.string	"SDL_FreePalette SDL_FreePalette_renamed_SDL_DestroyPalette"
.LASF3184:
	.string	"SDL_EVENT_WINDOW_HIDDEN"
.LASF2135:
	.string	"SDL_PROP_TEXTURE_OPENGL_TEXTURE_U_NUMBER \"SDL.texture.opengl.texture_u\""
.LASF2574:
	.string	"SDL_SemTryWait SDL_SemTryWait_renamed_SDL_TryWaitSemaphore"
.LASF2460:
	.string	"SDL_JoystickGetSerial SDL_JoystickGetSerial_renamed_SDL_GetJoystickSerial"
.LASF1987:
	.string	"SDL_HINT_VULKAN_DISPLAY \"SDL_VULKAN_DISPLAY\""
.LASF308:
	.string	"__BFLT16_NORM_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF711:
	.string	"INTMAX_C(c) c ## L"
.LASF1425:
	.string	"SDLK_8 0x00000038u"
.LASF2674:
	.string	"SDL_SCANCODE_AUDIONEXT SDL_SCANCODE_AUDIONEXT_renamed_SDL_SCANCODE_MEDIA_NEXT_TRACK"
.LASF322:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF445:
	.string	"__USE_GNU"
.LASF667:
	.string	"INT_LEAST64_MIN (-__INT64_C(9223372036854775807)-1)"
.LASF307:
	.string	"__BFLT16_MAX__ 3.38953138925153547590470800371487867e+38BF16"
.LASF3385:
	.string	"gaxis"
.LASF1412:
	.string	"SDLK_PLUS 0x0000002bu"
.LASF715:
	.string	"__need_size_t "
.LASF1710:
	.string	"SDL_GPU_BUFFERUSAGE_VERTEX (1u << 0)"
.LASF474:
	.string	"__GLIBC_PREREQ(maj,min) ((__GLIBC__ << 16) + __GLIBC_MINOR__ >= ((maj) << 16) + (min))"
.LASF702:
	.string	"WINT_MAX (4294967295u)"
.LASF2364:
	.string	"SDL_GameControllerGetAttached SDL_GameControllerGetAttached_renamed_SDL_GamepadConnected"
.LASF1885:
	.string	"SDL_HINT_JOYSTICK_LINUX_DEADZONES \"SDL_JOYSTICK_LINUX_DEADZONES\""
.LASF1453:
	.string	"SDLK_N 0x0000006eu"
.LASF3368:
	.string	"code"
.LASF3126:
	.string	"SDL_SCANCODE_AC_SAVE"
.LASF1328:
	.string	"SDL_PROP_WINDOW_KMSDRM_DEVICE_INDEX_NUMBER \"SDL.window.kmsdrm.dev_index\""
.LASF1156:
	.string	"SDL_PROP_IOSTREAM_MEMORY_POINTER \"SDL.iostream.memory.base\""
.LASF1185:
	.string	"SDL_BLENDMODE_INVALID 0x7FFFFFFFu"
.LASF1520:
	.string	"SDLK_F16 0x4000006bu"
.LASF318:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF3016:
	.string	"SDL_SCANCODE_FIND"
.LASF1109:
	.string	"SDL_Swap32LE(x) (x)"
.LASF456:
	.string	"__GLIBC_USE(F) __GLIBC_USE_ ## F"
.LASF951:
	.string	"SCNuPTR __PRIPTR_PREFIX \"u\""
.LASF1754:
	.string	"SDL_HAPTIC_TRIANGLE (1u<<3)"
.LASF2943:
	.string	"SDL_SCANCODE_GRAVE"
.LASF23:
	.string	"__SIZEOF_INT__ 4"
.LASF1644:
	.string	"SDLK_ENDCALL 0x40000122u"
.LASF3359:
	.string	"SDL_DropEvent"
.LASF2048:
	.string	"SDL_PROP_PROCESS_CREATE_STDIN_POINTER \"SDL.process.create.stdin_source\""
.LASF3218:
	.string	"SDL_EVENT_MOUSE_MOTION"
.LASF3052:
	.string	"SDL_SCANCODE_KP_00"
.LASF427:
	.string	"__USE_ISOCXX11"
.LASF461:
	.string	"__WORDSIZE 64"
.LASF1388:
	.string	"SDL_PROP_GAMEPAD_CAP_RUMBLE_BOOLEAN SDL_PROP_JOYSTICK_CAP_RUMBLE_BOOLEAN"
.LASF2041:
	.string	"SDL_metal_h_ "
.LASF1796:
	.string	"SDL_HINT_AUDIO_DISK_INPUT_FILE \"SDL_AUDIO_DISK_INPUT_FILE\""
.LASF1768:
	.string	"SDL_HAPTIC_AUTOCENTER (1u<<17)"
.LASF906:
	.string	"SCNiFAST64 __PRI64_PREFIX \"i\""
.LASF2739:
	.string	"SDL_TLSCleanup SDL_TLSCleanup_renamed_SDL_CleanupTLS"
.LASF862:
	.string	"PRIX64 __PRI64_PREFIX \"X\""
.LASF1528:
	.string	"SDLK_F24 0x40000073u"
.LASF2813:
	.string	"SDL_PIXELFORMAT_RGBA5551"
.LASF2724:
	.string	"SDL_AndroidSendMessage SDL_AndroidSendMessage_renamed_SDL_SendAndroidMessage"
.LASF2129:
	.string	"SDL_PROP_TEXTURE_D3D11_TEXTURE_V_POINTER \"SDL.texture.d3d11.texture_v\""
.LASF598:
	.string	"__U64_TYPE unsigned long int"
.LASF1188:
	.string	"SDL_ALPHA_OPAQUE 255"
.LASF2830:
	.string	"SDL_PIXELFORMAT_ARGB2101010"
.LASF1062:
	.string	"SDL_TriggerBreakpoint() __builtin_trap()"
.LASF3089:
	.string	"SDL_SCANCODE_KP_MEMMULTIPLY"
.LASF2389:
	.string	"SDL_GameControllerMapping SDL_GameControllerMapping_renamed_SDL_GetGamepadMapping"
.LASF3021:
	.string	"SDL_SCANCODE_KP_EQUALSAS400"
.LASF1296:
	.string	"SDL_PROP_WINDOW_CREATE_MODAL_BOOLEAN \"SDL.window.create.modal\""
.LASF1104:
	.string	"HAS_BROKEN_BSWAP"
.LASF848:
	.string	"PRIx16 \"x\""
.LASF1093:
	.string	"__FLOAT_WORD_ORDER __BYTE_ORDER"
.LASF762:
	.string	"__f64(x) x ##f64"
.LASF592:
	.string	"__UQUAD_TYPE unsigned long int"
.LASF636:
	.string	"__OFF_T_MATCHES_OFF64_T 1"
.LASF1002:
	.string	"SDL_IN_BYTECAP(x) "
.LASF1633:
	.string	"SDLK_AC_PROPERTIES 0x40000117u"
.LASF498:
	.string	"__glibc_objsize(__o) __bos (__o)"
.LASF626:
	.string	"__SUSECONDS_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF2161:
	.string	"SDL_NS_TO_MS(NS) ((NS) / SDL_NS_PER_MS)"
.LASF1134:
	.string	"SDL_PT_GUARDED_BY(x) SDL_THREAD_ANNOTATION_ATTRIBUTE__(pt_guarded_by(x))"
.LASF2483:
	.string	"KMOD_ALT KMOD_ALT_renamed_SDL_KMOD_ALT"
.LASF2160:
	.string	"SDL_MS_TO_NS(MS) (((Uint64)(MS)) * SDL_NS_PER_MS)"
.LASF3275:
	.string	"SDL_EVENT_PRIVATE1"
.LASF2139:
	.string	"SDL_PROP_TEXTURE_OPENGL_TEX_H_FLOAT \"SDL.texture.opengl.tex_h\""
.LASF1396:
	.string	"SDLK_UNKNOWN 0x00000000u"
.LASF1544:
	.string	"SDLK_KP_EQUALSAS400 0x40000086u"
.LASF482:
	.string	"__THROW __attribute__ ((__nothrow__ __LEAF))"
.LASF1566:
	.string	"SDLK_KP_RIGHTBRACE 0x400000b9u"
.LASF1171:
	.string	"SDL_AUDIO_ISINT(x) (!SDL_AUDIO_ISFLOAT(x))"
.LASF1691:
	.string	"SDL_PEN_MOUSEID ((SDL_MouseID)-2)"
.LASF1949:
	.string	"SDL_HINT_THREAD_FORCE_REALTIME_TIME_CRITICAL \"SDL_THREAD_FORCE_REALTIME_TIME_CRITICAL\""
.LASF2803:
	.string	"SDL_PIXELFORMAT_RGB332"
.LASF2889:
	.string	"SDL_POWERSTATE_CHARGED"
.LASF2353:
	.string	"SDL_GameControllerAddMapping SDL_GameControllerAddMapping_renamed_SDL_AddGamepadMapping"
.LASF665:
	.string	"INT_LEAST16_MIN (-32767-1)"
.LASF2946:
	.string	"SDL_SCANCODE_SLASH"
.LASF1112:
	.string	"SDL_Swap16BE(x) SDL_Swap16(x)"
.LASF1751:
	.string	"SDL_HAPTIC_CONSTANT (1u<<0)"
.LASF2528:
	.string	"SDLK_q SDLK_q_renamed_SDLK_Q"
.LASF2620:
	.string	"SDL_RenderDrawPointsF SDL_RenderDrawPointsF_renamed_SDL_RenderPoints"
.LASF1113:
	.string	"SDL_Swap32BE(x) SDL_Swap32(x)"
.LASF900:
	.string	"SCNiLEAST16 \"hi\""
.LASF2967:
	.string	"SDL_SCANCODE_END"
.LASF2746:
	.string	"SDL_GL_DeleteContext SDL_GL_DeleteContext_renamed_SDL_GL_DestroyContext"
.LASF1920:
	.string	"SDL_HINT_MOUSE_RELATIVE_CURSOR_VISIBLE \"SDL_MOUSE_RELATIVE_CURSOR_VISIBLE\""
.LASF3245:
	.string	"SDL_EVENT_FINGER_DOWN"
.LASF2170:
	.string	"SDL_version_h_ "
.LASF2231:
	.string	"SDL_AUDIODEVICEREMOVED SDL_AUDIODEVICEREMOVED_renamed_SDL_EVENT_AUDIO_DEVICE_REMOVED"
.LASF1510:
	.string	"SDLK_KP_8 0x40000060u"
.LASF1180:
	.string	"SDL_BLENDMODE_BLEND_PREMULTIPLIED 0x00000010u"
.LASF2541:
	.string	"SDL_LogSetAllPriority SDL_LogSetAllPriority_renamed_SDL_SetLogPriorities"
.LASF479:
	.string	"__glibc_has_extension(ext) __has_extension (ext)"
.LASF419:
	.string	"__va_list__ "
.LASF485:
	.string	"__NTHNL(fct) __attribute__ ((__nothrow__)) fct"
.LASF2187:
	.string	"SDL_AtomicSet SDL_AtomicSet_renamed_SDL_SetAtomicInt"
.LASF849:
	.string	"PRIx32 \"x\""
.LASF1884:
	.string	"SDL_HINT_JOYSTICK_LINUX_CLASSIC \"SDL_JOYSTICK_LINUX_CLASSIC\""
.LASF1554:
	.string	"SDLK_CLEARAGAIN 0x400000a2u"
.LASF504:
	.string	"__REDIRECT_NTH(name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROW"
.LASF236:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF2398:
	.string	"SDL_GameControllerSetLED SDL_GameControllerSetLED_renamed_SDL_SetGamepadLED"
.LASF1375:
	.string	"SDL_PROP_JOYSTICK_CAP_TRIGGER_RUMBLE_BOOLEAN \"SDL.joystick.cap.trigger_rumble\""
.LASF2338:
	.string	"SDL_CONTROLLER_BUTTON_TOUCHPAD SDL_CONTROLLER_BUTTON_TOUCHPAD_renamed_SDL_GAMEPAD_BUTTON_TOUCHPAD"
.LASF2494:
	.string	"KMOD_RALT KMOD_RALT_renamed_SDL_KMOD_RALT"
.LASF1609:
	.string	"SDLK_RALT 0x400000e6u"
.LASF1952:
	.string	"SDL_HINT_TOUCH_MOUSE_EVENTS \"SDL_TOUCH_MOUSE_EVENTS\""
.LASF1285:
	.string	"SDL_PROP_WINDOW_CREATE_FOCUSABLE_BOOLEAN \"SDL.window.create.focusable\""
.LASF34:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF30:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF269:
	.string	"__FLT32X_DIG__ 15"
.LASF320:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF2297:
	.string	"SDL_WINDOWEVENT_LEAVE SDL_WINDOWEVENT_LEAVE_renamed_SDL_EVENT_WINDOW_MOUSE_LEAVE"
.LASF663:
	.string	"UINT64_MAX (__UINT64_C(18446744073709551615))"
.LASF2859:
	.string	"SDL_PIXELFORMAT_MJPG"
.LASF2415:
	.string	"SDL_HapticOpenFromMouse SDL_HapticOpenFromMouse_renamed_SDL_OpenHapticFromMouse"
.LASF1411:
	.string	"SDLK_ASTERISK 0x0000002au"
.LASF2011:
	.string	"SDL_HINT_ASSERT \"SDL_ASSERT\""
.LASF1131:
	.string	"SDL_CAPABILITY(x) SDL_THREAD_ANNOTATION_ATTRIBUTE__(capability(x))"
.LASF1901:
	.string	"SDL_HINT_KMSDRM_REQUIRE_DRM_MASTER \"SDL_KMSDRM_REQUIRE_DRM_MASTER\""
.LASF2146:
	.string	"SDL_RENDERER_VSYNC_DISABLED 0"
.LASF2042:
	.string	"SDL_misc_h_ "
.LASF1921:
	.string	"SDL_HINT_MOUSE_TOUCH_EVENTS \"SDL_MOUSE_TOUCH_EVENTS\""
.LASF185:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF513:
	.string	"__attribute_pure__ __attribute__ ((__pure__))"
.LASF2352:
	.string	"SDL_GameController SDL_GameController_renamed_SDL_Gamepad"
.LASF1788:
	.string	"SDL_HINT_AUDIO_ALSA_DEFAULT_PLAYBACK_DEVICE \"SDL_AUDIO_ALSA_DEFAULT_PLAYBACK_DEVICE\""
.LASF3351:
	.string	"fingerID"
.LASF586:
	.string	"__U16_TYPE unsigned short int"
.LASF923:
	.string	"SCNoLEAST8 \"hho\""
.LASF1125:
	.string	"SDL_CreateThreadWithProperties(props) SDL_CreateThreadWithPropertiesRuntime((props), (SDL_FunctionPointer) (SDL_BeginThreadFunction), (SDL_FunctionPointer) (SDL_EndThreadFunction))"
.LASF1950:
	.string	"SDL_HINT_THREAD_PRIORITY_POLICY \"SDL_THREAD_PRIORITY_POLICY\""
.LASF3411:
	.string	"SDL_LOG_CATEGORY_RENDER"
.LASF3193:
	.string	"SDL_EVENT_WINDOW_MOUSE_ENTER"
.LASF3377:
	.string	"wheel"
.LASF252:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF3343:
	.string	"data"
.LASF533:
	.string	"__va_arg_pack() __builtin_va_arg_pack ()"
.LASF1148:
	.string	"SDL_ASSERT_SHARED_CAPABILITY(x) SDL_THREAD_ANNOTATION_ATTRIBUTE__(assert_shared_capability(x))"
.LASF3214:
	.string	"SDL_EVENT_KEYMAP_CHANGED"
.LASF3432:
	.string	"SDL_RenderLine"
.LASF1020:
	.string	"SDL_DECLSPEC __attribute__ ((visibility(\"default\")))"
.LASF164:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF138:
	.string	"__INT_FAST32_MAX__ 0x7fffffffffffffffL"
.LASF622:
	.string	"__ID_T_TYPE __U32_TYPE"
.LASF842:
	.string	"PRIuLEAST64 __PRI64_PREFIX \"u\""
.LASF2618:
	.string	"SDL_RenderDrawPointF SDL_RenderDrawPointF_renamed_SDL_RenderPoint"
.LASF135:
	.string	"__INT_FAST8_WIDTH__ 8"
.LASF2499:
	.string	"KMOD_SHIFT KMOD_SHIFT_renamed_SDL_KMOD_SHIFT"
.LASF2641:
	.string	"SDL_RenderSetVSync SDL_RenderSetVSync_renamed_SDL_SetRenderVSync"
.LASF2078:
	.string	"SDL_PROP_RENDERER_TEXTURE_FORMATS_POINTER \"SDL.renderer.texture_formats\""
.LASF1043:
	.string	"SDL_zero(x) SDL_memset(&(x), 0, sizeof((x)))"
.LASF3274:
	.string	"SDL_EVENT_PRIVATE0"
.LASF1944:
	.string	"SDL_HINT_RPI_VIDEO_LAYER \"SDL_RPI_VIDEO_LAYER\""
.LASF3276:
	.string	"SDL_EVENT_PRIVATE2"
.LASF3277:
	.string	"SDL_EVENT_PRIVATE3"
.LASF1476:
	.string	"SDLK_F4 0x4000003du"
.LASF3329:
	.string	"SDL_JoyHatEvent"
.LASF1613:
	.string	"SDLK_WAKE 0x40000103u"
.LASF3225:
	.string	"SDL_EVENT_JOYSTICK_BALL_MOTION"
.LASF1238:
	.string	"SDL_WINDOW_OPENGL SDL_UINT64_C(0x0000000000000002)"
.LASF2590:
	.string	"SDL_PIXELFORMAT_RGB555 SDL_PIXELFORMAT_RGB555_renamed_SDL_PIXELFORMAT_XRGB1555"
.LASF97:
	.string	"__BITINT_MAXWIDTH__ 65535"
.LASF179:
	.string	"__DBL_NORM_MAX__ ((double)1.79769313486231570814527423731704357e+308L)"
.LASF1212:
	.string	"SDL_COLORSPACETRANSFER(cspace) (SDL_TransferCharacteristics)(((cspace) >> 5) & 0x1F)"
.LASF411:
	.string	"va_end(v) __builtin_va_end(v)"
.LASF1911:
	.string	"SDL_HINT_MOUSE_DOUBLE_CLICK_TIME \"SDL_MOUSE_DOUBLE_CLICK_TIME\""
.LASF2445:
	.string	"SDL_JoystickFromInstanceID SDL_JoystickFromInstanceID_renamed_SDL_GetJoystickFromID"
.LASF1220:
	.string	"SDL_rect_h_ "
.LASF2735:
	.string	"SDL_iOSSetEventPump SDL_iOSSetEventPump_renamed_SDL_SetiOSEventPump"
.LASF370:
	.string	"__SIZEOF_FLOAT80__ 16"
.LASF3378:
	.string	"jdevice"
.LASF2313:
	.string	"SDL_CONTROLLER_AXIS_TRIGGERRIGHT SDL_CONTROLLER_AXIS_TRIGGERRIGHT_renamed_SDL_GAMEPAD_AXIS_RIGHT_TRIGGER"
.LASF677:
	.string	"INT_FAST16_MIN (-9223372036854775807L-1)"
.LASF1974:
	.string	"SDL_HINT_VIDEO_X11_NET_WM_PING \"SDL_VIDEO_X11_NET_WM_PING\""
.LASF1947:
	.string	"SDL_HINT_STORAGE_TITLE_DRIVER \"SDL_STORAGE_TITLE_DRIVER\""
.LASF2093:
	.string	"SDL_PROP_RENDERER_VULKAN_GRAPHICS_QUEUE_FAMILY_INDEX_NUMBER \"SDL.renderer.vulkan.graphics_queue_family_index\""
.LASF3062:
	.string	"SDL_SCANCODE_KP_TAB"
.LASF832:
	.string	"PRIoFAST16 __PRIPTR_PREFIX \"o\""
.LASF1266:
	.string	"SDL_WINDOWPOS_CENTERED_MASK 0x2FFF0000u"
.LASF2601:
	.string	"SDL_IntersectFRectAndLine SDL_IntersectFRectAndLine_renamed_SDL_GetRectAndLineIntersectionFloat"
.LASF3083:
	.string	"SDL_SCANCODE_KP_EXCLAM"
.LASF3401:
	.string	"clipboard"
.LASF1594:
	.string	"SDLK_KP_MEMMULTIPLY 0x400000d5u"
.LASF317:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF1331:
	.string	"SDL_PROP_WINDOW_COCOA_WINDOW_POINTER \"SDL.window.cocoa.window\""
.LASF1218:
	.string	"SDL_ISCOLORSPACE_FULL_RANGE(cspace) (SDL_COLORSPACERANGE(cspace) == SDL_COLOR_RANGE_FULL)"
.LASF2080:
	.string	"SDL_PROP_RENDERER_HDR_ENABLED_BOOLEAN \"SDL.renderer.HDR_enabled\""
.LASF869:
	.string	"PRIXFAST32 __PRIPTR_PREFIX \"X\""
.LASF3219:
	.string	"SDL_EVENT_MOUSE_BUTTON_DOWN"
.LASF2749:
	.string	"SDL_GLcontextReleaseFlag SDL_GLcontextReleaseFlag_renamed_SDL_GLContextReleaseFlag"
.LASF2292:
	.string	"SDL_WINDOWEVENT_FOCUS_GAINED SDL_WINDOWEVENT_FOCUS_GAINED_renamed_SDL_EVENT_WINDOW_FOCUS_GAINED"
.LASF174:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF595:
	.string	"__SLONG32_TYPE int"
.LASF1047:
	.string	"SDL_PI_D 3.141592653589793238462643383279502884"
.LASF1237:
	.string	"SDL_WINDOW_FULLSCREEN SDL_UINT64_C(0x0000000000000001)"
.LASF1392:
	.string	"SDL_scancode_h_ "
.LASF3063:
	.string	"SDL_SCANCODE_KP_BACKSPACE"
.LASF1908:
	.string	"SDL_HINT_MAIN_CALLBACK_RATE \"SDL_MAIN_CALLBACK_RATE\""
.LASF2440:
	.string	"SDL_HINT_LINUX_JOYSTICK_DEADZONES SDL_HINT_LINUX_JOYSTICK_DEADZONES_renamed_SDL_HINT_JOYSTICK_LINUX_DEADZONES"
.LASF2853:
	.string	"SDL_PIXELFORMAT_UYVY"
.LASF1915:
	.string	"SDL_HINT_MOUSE_NORMAL_SPEED_SCALE \"SDL_MOUSE_NORMAL_SPEED_SCALE\""
.LASF1394:
	.string	"SDLK_SCANCODE_MASK (1u << 30)"
.LASF3091:
	.string	"SDL_SCANCODE_KP_PLUSMINUS"
.LASF519:
	.string	"__attribute_deprecated_msg__(msg) __attribute__ ((__deprecated__ (msg)))"
.LASF303:
	.string	"__BFLT16_MIN_10_EXP__ (-37)"
.LASF2234:
	.string	"SDL_CONTROLLERBUTTONDOWN SDL_CONTROLLERBUTTONDOWN_renamed_SDL_EVENT_GAMEPAD_BUTTON_DOWN"
.LASF856:
	.string	"PRIxFAST16 __PRIPTR_PREFIX \"x\""
.LASF260:
	.string	"__FLT128_NORM_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF1900:
	.string	"SDL_HINT_KMSDRM_DEVICE_INDEX \"SDL_KMSDRM_DEVICE_INDEX\""
.LASF681:
	.string	"INT_FAST16_MAX (9223372036854775807L)"
.LASF2970:
	.string	"SDL_SCANCODE_LEFT"
.LASF1035:
	.string	"SDL_stack_free(data) "
.LASF509:
	.string	"__REDIRECT_FORTIFY_NTH __REDIRECT_NTH"
.LASF2675:
	.string	"SDL_SCANCODE_AUDIOPLAY SDL_SCANCODE_AUDIOPLAY_renamed_SDL_SCANCODE_MEDIA_PLAY"
.LASF810:
	.string	"PRIdFAST64 __PRI64_PREFIX \"d\""
.LASF2242:
	.string	"SDL_CONTROLLERTOUCHPADMOTION SDL_CONTROLLERTOUCHPADMOTION_renamed_SDL_EVENT_GAMEPAD_TOUCHPAD_MOTION"
.LASF1504:
	.string	"SDLK_KP_2 0x4000005au"
.LASF3339:
	.string	"finger"
.LASF1373:
	.string	"SDL_PROP_JOYSTICK_CAP_PLAYER_LED_BOOLEAN \"SDL.joystick.cap.player_led\""
.LASF2942:
	.string	"SDL_SCANCODE_APOSTROPHE"
.LASF3031:
	.string	"SDL_SCANCODE_LANG1"
.LASF3032:
	.string	"SDL_SCANCODE_LANG2"
.LASF3033:
	.string	"SDL_SCANCODE_LANG3"
.LASF354:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF3035:
	.string	"SDL_SCANCODE_LANG5"
.LASF481:
	.string	"__LEAF_ATTR __attribute__ ((__leaf__))"
.LASF3037:
	.string	"SDL_SCANCODE_LANG7"
.LASF3038:
	.string	"SDL_SCANCODE_LANG8"
.LASF390:
	.string	"__unix 1"
.LASF3120:
	.string	"SDL_SCANCODE_MEDIA_PLAY_PAUSE"
.LASF2457:
	.string	"SDL_JoystickGetPlayerIndex SDL_JoystickGetPlayerIndex_renamed_SDL_GetJoystickPlayerIndex"
.LASF3224:
	.string	"SDL_EVENT_JOYSTICK_AXIS_MOTION"
.LASF442:
	.string	"__USE_MISC"
.LASF704:
	.string	"INT16_C(c) c"
.LASF2866:
	.string	"SDL_PIXELFORMAT_BGRX32"
.LASF1649:
	.string	"SDLK_RMETA 0x20000005u"
.LASF1596:
	.string	"SDLK_KP_PLUSMINUS 0x400000d7u"
.LASF3344:
	.string	"sensor_timestamp"
.LASF3271:
	.string	"SDL_EVENT_RENDER_TARGETS_RESET"
.LASF1537:
	.string	"SDLK_COPY 0x4000007cu"
.LASF2555:
	.string	"SDL_SYSTEM_CURSOR_SIZENS SDL_SYSTEM_CURSOR_SIZENS_renamed_SDL_SYSTEM_CURSOR_NS_RESIZE"
.LASF2062:
	.string	"SDL_PROP_RENDERER_CREATE_NAME_STRING \"SDL.renderer.create.name\""
.LASF2613:
	.string	"SDL_RenderDrawLine SDL_RenderDrawLine_renamed_SDL_RenderLine"
.LASF1667:
	.string	"SDL_KMOD_SHIFT (SDL_KMOD_LSHIFT | SDL_KMOD_RSHIFT)"
.LASF1265:
	.string	"SDL_WINDOWPOS_ISUNDEFINED(X) (((X)&0xFFFF0000) == SDL_WINDOWPOS_UNDEFINED_MASK)"
.LASF2977:
	.string	"SDL_SCANCODE_KP_PLUS"
.LASF1571:
	.string	"SDLK_KP_C 0x400000beu"
.LASF2747:
	.string	"SDL_GLattr SDL_GLattr_renamed_SDL_GLAttr"
.LASF3118:
	.string	"SDL_SCANCODE_MEDIA_STOP"
.LASF1307:
	.string	"SDL_PROP_WINDOW_CREATE_X_NUMBER \"SDL.window.create.x\""
.LASF1802:
	.string	"SDL_HINT_AUDIO_FREQUENCY \"SDL_AUDIO_FREQUENCY\""
.LASF234:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF3220:
	.string	"SDL_EVENT_MOUSE_BUTTON_UP"
.LASF1689:
	.string	"SDL_TOUCH_MOUSEID ((SDL_MouseID)-1)"
.LASF2758:
	.string	"SDL_IsScreenSaverEnabled SDL_IsScreenSaverEnabled_renamed_SDL_ScreenSaverEnabled"
.LASF478:
	.string	"__glibc_has_builtin(name) __has_builtin (name)"
.LASF763:
	.string	"__f32x(x) x ##f32x"
.LASF571:
	.string	"__GLIBC_USE_LIB_EXT2 0"
.LASF2325:
	.string	"SDL_CONTROLLER_BUTTON_GUIDE SDL_CONTROLLER_BUTTON_GUIDE_renamed_SDL_GAMEPAD_BUTTON_GUIDE"
.LASF2779:
	.string	"__uint64_t"
.LASF2814:
	.string	"SDL_PIXELFORMAT_ABGR1555"
.LASF1288:
	.string	"SDL_PROP_WINDOW_CREATE_FULLSCREEN_BOOLEAN \"SDL.window.create.fullscreen\""
.LASF1144:
	.string	"SDL_TRY_ACQUIRE(x,y) SDL_THREAD_ANNOTATION_ATTRIBUTE__(try_acquire_capability(x, y))"
.LASF3286:
	.string	"displayID"
.LASF18:
	.string	"__PIE__ 2"
.LASF3412:
	.string	"SDL_LOG_CATEGORY_INPUT"
.LASF1178:
	.string	"SDL_BLENDMODE_NONE 0x00000000u"
.LASF1384:
	.string	"SDL_HAT_LEFTDOWN (SDL_HAT_LEFT|SDL_HAT_DOWN)"
.LASF1330:
	.string	"SDL_PROP_WINDOW_KMSDRM_GBM_DEVICE_POINTER \"SDL.window.kmsdrm.gbm_dev\""
.LASF1073:
	.string	"SDL_assert_always(condition) SDL_enabled_assert(condition)"
.LASF2484:
	.string	"KMOD_CAPS KMOD_CAPS_renamed_SDL_KMOD_CAPS"
.LASF1016:
	.string	"SDL_begin_code_h "
.LASF555:
	.string	"__fortified_attr_access(a,o,s) __attr_access ((a, o, s))"
.LASF343:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF977:
	.string	"SDL_MIN_UINT16 ((Uint16)0x0000)"
.LASF1214:
	.string	"SDL_ISCOLORSPACE_MATRIX_BT601(cspace) (SDL_COLORSPACEMATRIX(cspace) == SDL_MATRIX_COEFFICIENTS_BT601 || SDL_COLORSPACEMATRIX(cspace) == SDL_MATRIX_COEFFICIENTS_BT470BG)"
.LASF1597:
	.string	"SDLK_KP_CLEAR 0x400000d8u"
.LASF240:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF554:
	.string	"__attr_access(x) __attribute__ ((__access__ x))"
.LASF3436:
	.string	"SDL_PollEvent"
.LASF1786:
	.string	"SDL_HINT_APPLE_TV_REMOTE_ALLOW_ROTATION \"SDL_APPLE_TV_REMOTE_ALLOW_ROTATION\""
.LASF337:
	.string	"__REGISTER_PREFIX__ "
.LASF1003:
	.string	"SDL_INOUT_Z_CAP(x) "
.LASF27:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF1595:
	.string	"SDLK_KP_MEMDIVIDE 0x400000d6u"
.LASF2464:
	.string	"SDL_JoystickIsVirtual SDL_JoystickIsVirtual_renamed_SDL_IsJoystickVirtual"
.LASF2981:
	.string	"SDL_SCANCODE_KP_3"
.LASF2646:
	.string	"RW_SEEK_CUR RW_SEEK_CUR_renamed_SDL_IO_SEEK_CUR"
.LASF2086:
	.string	"SDL_PROP_RENDERER_D3D12_DEVICE_POINTER \"SDL.renderer.d3d12.device\""
.LASF2985:
	.string	"SDL_SCANCODE_KP_7"
.LASF545:
	.string	"__LDBL_REDIR1_NTH(name,proto,alias) name proto __THROW"
.LASF2856:
	.string	"SDL_PIXELFORMAT_NV21"
.LASF2987:
	.string	"SDL_SCANCODE_KP_9"
.LASF2108:
	.string	"SDL_PROP_TEXTURE_CREATE_D3D12_TEXTURE_U_POINTER \"SDL.texture.create.d3d12.texture_u\""
.LASF1251:
	.string	"SDL_WINDOW_MOUSE_CAPTURE SDL_UINT64_C(0x0000000000004000)"
.LASF1284:
	.string	"SDL_PROP_WINDOW_CREATE_BORDERLESS_BOOLEAN \"SDL.window.create.borderless\""
.LASF1097:
	.string	"HAS_BUILTIN_BSWAP16 (SDL_HAS_BUILTIN(__builtin_bswap16)) || (__GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 8))"
.LASF3194:
	.string	"SDL_EVENT_WINDOW_MOUSE_LEAVE"
.LASF3064:
	.string	"SDL_SCANCODE_KP_A"
.LASF3065:
	.string	"SDL_SCANCODE_KP_B"
.LASF647:
	.string	"__WCHAR_MIN __WCHAR_MIN__"
.LASF2935:
	.string	"SDL_SCANCODE_MINUS"
.LASF834:
	.string	"PRIoFAST64 __PRI64_PREFIX \"o\""
.LASF3069:
	.string	"SDL_SCANCODE_KP_F"
.LASF1244:
	.string	"SDL_WINDOW_MAXIMIZED SDL_UINT64_C(0x0000000000000080)"
.LASF431:
	.string	"__USE_POSIX199506"
.LASF356:
	.string	"__GCC_CONSTRUCTIVE_SIZE 64"
.LASF1026:
	.string	"SDL_HAS_FALLTHROUGH __has_attribute(__fallthrough__)"
.LASF3075:
	.string	"SDL_SCANCODE_KP_AMPERSAND"
.LASF1233:
	.string	"SDL_CACHELINE_SIZE 128"
.LASF2088:
	.string	"SDL_PROP_RENDERER_D3D12_COMMAND_QUEUE_POINTER \"SDL.renderer.d3d12.command_queue\""
.LASF150:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF2225:
	.string	"SDL_APP_DIDENTERFOREGROUND SDL_APP_DIDENTERFOREGROUND_renamed_SDL_EVENT_DID_ENTER_FOREGROUND"
.LASF233:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF970:
	.string	"SDL_MAX_SINT8 ((Sint8)0x7F)"
.LASF1045:
	.string	"SDL_zeroa(x) SDL_memset((x), 0, sizeof((x)))"
.LASF1532:
	.string	"SDLK_SELECT 0x40000077u"
.LASF386:
	.string	"__SEG_GS 1"
.LASF1781:
	.string	"SDL_HINT_ANDROID_LOW_LATENCY_AUDIO \"SDL_ANDROID_LOW_LATENCY_AUDIO\""
.LASF31:
	.string	"__CHAR_BIT__ 8"
.LASF2784:
	.string	"uint16_t"
.LASF1227:
	.string	"SDL_PROP_SURFACE_HDR_HEADROOM_FLOAT \"SDL.surface.HDR_headroom\""
.LASF146:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF2828:
	.string	"SDL_PIXELFORMAT_XRGB2101010"
.LASF2822:
	.string	"SDL_PIXELFORMAT_XBGR8888"
.LASF671:
	.string	"INT_LEAST64_MAX (__INT64_C(9223372036854775807))"
.LASF995:
	.string	"SDL_PRIx32 PRIx32"
.LASF2845:
	.string	"SDL_PIXELFORMAT_BGR96_FLOAT"
.LASF216:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF2577:
	.string	"SDL_SemWaitTimeout SDL_SemWaitTimeout_renamed_SDL_WaitSemaphoreTimeout"
.LASF640:
	.string	"__KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 1"
.LASF1584:
	.string	"SDLK_KP_COLON 0x400000cbu"
.LASF753:
	.string	"__HAVE_DISTINCT_FLOAT16 __HAVE_FLOAT16"
.LASF2559:
	.string	"SDL_SYSTEM_CURSOR_WINDOW_BOTTOM SDL_SYSTEM_CURSOR_WINDOW_BOTTOM_renamed_SDL_SYSTEM_CURSOR_S_RESIZE"
.LASF2722:
	.string	"SDL_AndroidRequestPermission SDL_AndroidRequestPermission_renamed_SDL_RequestAndroidPermission"
.LASF3333:
	.string	"percent"
.LASF2193:
	.string	"AUDIO_F32LSB AUDIO_F32LSB_renamed_SDL_AUDIO_F32LE"
.LASF3226:
	.string	"SDL_EVENT_JOYSTICK_HAT_MOTION"
.LASF552:
	.string	"__glibc_macro_warning(message) __glibc_macro_warning1 (GCC warning message)"
.LASF1918:
	.string	"SDL_HINT_MOUSE_RELATIVE_SYSTEM_SCALE \"SDL_MOUSE_RELATIVE_SYSTEM_SCALE\""
.LASF973:
	.string	"SDL_MIN_UINT8 ((Uint8)0x00)"
.LASF2303:
	.string	"SDL_WINDOWEVENT_SHOWN SDL_WINDOWEVENT_SHOWN_renamed_SDL_EVENT_WINDOW_SHOWN"
.LASF8:
	.string	"__VERSION__ \"14.2.1 20250207\""
.LASF2619:
	.string	"SDL_RenderDrawPoints SDL_RenderDrawPoints_renamed_SDL_RenderPoints"
.LASF2282:
	.string	"SDL_RENDER_TARGETS_RESET SDL_RENDER_TARGETS_RESET_renamed_SDL_EVENT_RENDER_TARGETS_RESET"
.LASF2932:
	.string	"SDL_SCANCODE_BACKSPACE"
.LASF551:
	.string	"__glibc_macro_warning1(message) _Pragma (#message)"
.LASF271:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF1100:
	.string	"HAS_BROKEN_BSWAP (__GNUC__ == 2 && __GNUC_MINOR__ <= 95)"
.LASF2884:
	.string	"SDL_POWERSTATE_ERROR"
.LASF536:
	.string	"__glibc_unlikely(cond) __builtin_expect ((cond), 0)"
.LASF1381:
	.string	"SDL_HAT_RIGHTUP (SDL_HAT_RIGHT|SDL_HAT_UP)"
.LASF1407:
	.string	"SDLK_AMPERSAND 0x00000026u"
.LASF1345:
	.string	"SDL_PROP_WINDOW_WAYLAND_XDG_TOPLEVEL_POINTER \"SDL.window.wayland.xdg_toplevel\""
.LASF1442:
	.string	"SDLK_C 0x00000063u"
.LASF986:
	.string	"SDL_MAX_TIME SDL_MAX_SINT64"
.LASF102:
	.string	"__INTMAX_WIDTH__ 64"
.LASF807:
	.string	"PRIdFAST8 \"d\""
.LASF3095:
	.string	"SDL_SCANCODE_KP_OCTAL"
.LASF1815:
	.string	"SDL_HINT_ENABLE_SCREEN_KEYBOARD \"SDL_ENABLE_SCREEN_KEYBOARD\""
.LASF345:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF187:
	.string	"__LDBL_MANT_DIG__ 64"
.LASF3340:
	.string	"pressure"
.LASF559:
	.string	"__attribute_returns_twice__ __attribute__ ((__returns_twice__))"
.LASF2072:
	.string	"SDL_PROP_RENDERER_CREATE_VULKAN_PRESENT_QUEUE_FAMILY_INDEX_NUMBER \"SDL.renderer.create.vulkan.present_queue_family_index\""
.LASF546:
	.string	"__LDBL_REDIR_NTH(name,proto) name proto __THROW"
.LASF903:
	.string	"SCNiFAST8 \"hhi\""
.LASF1857:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_LUNA \"SDL_JOYSTICK_HIDAPI_LUNA\""
.LASF3309:
	.string	"SDL_TextInputEvent"
.LASF2422:
	.string	"SDL_HapticSetAutocenter SDL_HapticSetAutocenter_renamed_SDL_SetHapticAutocenter"
.LASF1809:
	.string	"SDL_HINT_JOYSTICK_DIRECTINPUT \"SDL_JOYSTICK_DIRECTINPUT\""
.LASF383:
	.string	"__SSE2_MATH__ 1"
.LASF2164:
	.string	"SDL_tray_h_ "
.LASF3291:
	.string	"SDL_KeyboardDeviceEvent"
.LASF2201:
	.string	"AUDIO_S32LSB AUDIO_S32LSB_renamed_SDL_AUDIO_S32LE"
.LASF579:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT 0"
.LASF1460:
	.string	"SDLK_U 0x00000075u"
.LASF2727:
	.string	"SDL_Direct3D9GetAdapterIndex SDL_Direct3D9GetAdapterIndex_renamed_SDL_GetDirect3D9AdapterIndex"
.LASF3119:
	.string	"SDL_SCANCODE_MEDIA_EJECT"
.LASF392:
	.string	"__ELF__ 1"
.LASF3247:
	.string	"SDL_EVENT_FINGER_MOTION"
.LASF254:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF290:
	.string	"__FLT64X_DECIMAL_DIG__ 21"
.LASF2016:
	.string	"SDL_INIT_VIDEO 0x00000020u"
.LASF2383:
	.string	"SDL_GameControllerGetType SDL_GameControllerGetType_renamed_SDL_GetGamepadType"
.LASF53:
	.string	"__INT64_TYPE__ long int"
.LASF1015:
	.string	"SDL_WPRINTF_VARARG_FUNCV(fmtargnumber) "
.LASF1666:
	.string	"SDL_KMOD_CTRL (SDL_KMOD_LCTRL | SDL_KMOD_RCTRL)"
.LASF1280:
	.string	"SDL_GL_CONTEXT_RESET_LOSE_CONTEXT 0x0001"
.LASF514:
	.string	"__attribute_const__ __attribute__ ((__const__))"
.LASF797:
	.string	"__PRI64_PREFIX \"l\""
.LASF483:
	.string	"__THROWNL __attribute__ ((__nothrow__))"
.LASF1037:
	.string	"SDL_max(x,y) (((x) > (y)) ? (x) : (y))"
.LASF566:
	.string	"__stub_revoke "
.LASF3155:
	.string	"SDL_PEN_AXIS_PRESSURE"
.LASF2013:
	.string	"SDL_HINT_PEN_TOUCH_EVENTS \"SDL_PEN_TOUCH_EVENTS\""
.LASF1701:
	.string	"SDL_GLOB_CASEINSENSITIVE (1u << 0)"
.LASF1716:
	.string	"SDL_GPU_SHADERFORMAT_INVALID 0"
.LASF2685:
	.string	"SDL_SensorGetName SDL_SensorGetName_renamed_SDL_GetSensorName"
.LASF2461:
	.string	"SDL_JoystickGetType SDL_JoystickGetType_renamed_SDL_GetJoystickType"
.LASF1756:
	.string	"SDL_HAPTIC_SAWTOOTHDOWN (1u<<5)"
.LASF373:
	.string	"__ATOMIC_HLE_RELEASE 131072"
.LASF1643:
	.string	"SDLK_CALL 0x40000121u"
.LASF2341:
	.string	"SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_JOYCON_LEFT SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_JOYCON_LEFT_renamed_SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_LEFT"
.LASF3254:
	.string	"SDL_EVENT_DROP_POSITION"
.LASF3115:
	.string	"SDL_SCANCODE_MEDIA_REWIND"
.LASF484:
	.string	"__NTH(fct) __attribute__ ((__nothrow__ __LEAF)) fct"
.LASF415:
	.string	"_VA_LIST_ "
.LASF922:
	.string	"SCNo64 __PRI64_PREFIX \"o\""
.LASF3448:
	.string	"total_rows"
.LASF1401:
	.string	"SDLK_SPACE 0x00000020u"
.LASF914:
	.string	"SCNuLEAST64 __PRI64_PREFIX \"u\""
.LASF1997:
	.string	"SDL_HINT_WINDOWS_CLOSE_ON_ALT_F4 \"SDL_WINDOWS_CLOSE_ON_ALT_F4\""
.LASF35:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF1147:
	.string	"SDL_ASSERT_CAPABILITY(x) SDL_THREAD_ANNOTATION_ATTRIBUTE__(assert_capability(x))"
.LASF1470:
	.string	"SDLK_DELETE 0x0000007fu"
.LASF3216:
	.string	"SDL_EVENT_KEYBOARD_REMOVED"
.LASF1430:
	.string	"SDLK_EQUALS 0x0000003du"
.LASF2678:
	.string	"SDL_SCANCODE_AUDIOSTOP SDL_SCANCODE_AUDIOSTOP_renamed_SDL_SCANCODE_MEDIA_STOP"
.LASF925:
	.string	"SCNoLEAST32 \"o\""
.LASF1962:
	.string	"SDL_HINT_VIDEO_MAC_FULLSCREEN_SPACES \"SDL_VIDEO_MAC_FULLSCREEN_SPACES\""
.LASF1323:
	.string	"SDL_PROP_WINDOW_UIKIT_WINDOW_POINTER \"SDL.window.uikit.window\""
.LASF1085:
	.string	"SDL_BIG_ENDIAN 4321"
.LASF2299:
	.string	"SDL_WINDOWEVENT_MINIMIZED SDL_WINDOWEVENT_MINIMIZED_renamed_SDL_EVENT_WINDOW_MINIMIZED"
.LASF788:
	.string	"__need___va_list "
.LASF719:
	.string	"_SIZE_T "
.LASF2753:
	.string	"SDL_GetPointDisplayIndex SDL_GetPointDisplayIndex_renamed_SDL_GetDisplayForPoint"
.LASF2972:
	.string	"SDL_SCANCODE_UP"
.LASF1890:
	.string	"SDL_HINT_JOYSTICK_RAWINPUT_CORRELATE_XINPUT \"SDL_JOYSTICK_RAWINPUT_CORRELATE_XINPUT\""
.LASF2184:
	.string	"SDL_AtomicGet SDL_AtomicGet_renamed_SDL_GetAtomicInt"
.LASF2252:
	.string	"SDL_DISPLAYEVENT_ORIENTATION SDL_DISPLAYEVENT_ORIENTATION_renamed_SDL_EVENT_DISPLAY_ORIENTATION"
.LASF22:
	.string	"__LP64__ 1"
.LASF2047:
	.string	"SDL_PROP_PROCESS_CREATE_STDIN_NUMBER \"SDL.process.create.stdin_option\""
.LASF181:
	.string	"__DBL_EPSILON__ ((double)2.22044604925031308084726333618164062e-16L)"
.LASF1706:
	.string	"SDL_GPU_TEXTUREUSAGE_GRAPHICS_STORAGE_READ (1u << 3)"
.LASF894:
	.string	"SCNdFAST64 __PRI64_PREFIX \"d\""
.LASF2145:
	.string	"SDL_PROP_TEXTURE_VULKAN_TEXTURE_NUMBER \"SDL.texture.vulkan.texture\""
.LASF668:
	.string	"INT_LEAST8_MAX (127)"
.LASF3221:
	.string	"SDL_EVENT_MOUSE_WHEEL"
.LASF2649:
	.string	"SDL_RWFromConstMem SDL_RWFromConstMem_renamed_SDL_IOFromConstMem"
.LASF943:
	.string	"SCNdMAX __PRI64_PREFIX \"d\""
.LASF1983:
	.string	"SDL_HINT_VITA_PVR_INIT \"SDL_VITA_PVR_INIT\""
.LASF3170:
	.string	"SDL_EVENT_WILL_ENTER_FOREGROUND"
.LASF1818:
	.string	"SDL_HINT_FORCE_RAISEWINDOW \"SDL_FORCE_RAISEWINDOW\""
.LASF746:
	.string	"__CFLOAT128 _Complex _Float128"
.LASF928:
	.string	"SCNoFAST16 __PRIPTR_PREFIX \"o\""
.LASF2247:
	.string	"SDL_ControllerSensorEvent SDL_ControllerSensorEvent_renamed_SDL_GamepadSensorEvent"
.LASF2927:
	.string	"SDL_SCANCODE_8"
.LASF2337:
	.string	"SDL_CONTROLLER_BUTTON_START SDL_CONTROLLER_BUTTON_START_renamed_SDL_GAMEPAD_BUTTON_START"
.LASF712:
	.string	"UINTMAX_C(c) c ## UL"
.LASF992:
	.string	"SDL_PRIX64 PRIX64"
.LASF1136:
	.string	"SDL_ACQUIRED_AFTER(x) SDL_THREAD_ANNOTATION_ATTRIBUTE__(acquired_after(x))"
.LASF1434:
	.string	"SDLK_LEFTBRACKET 0x0000005bu"
.LASF3383:
	.string	"jbattery"
.LASF535:
	.string	"__restrict_arr __restrict"
.LASF1161:
	.string	"SDL_AUDIO_MASK_FLOAT (1u<<8)"
.LASF2880:
	.string	"SDL_WindowID"
.LASF2654:
	.string	"SDL_RWread SDL_RWread_renamed_SDL_ReadIO"
.LASF3212:
	.string	"SDL_EVENT_TEXT_EDITING"
.LASF3441:
	.string	"argv"
.LASF1079:
	.string	"SDL_CPUPauseInstruction() __asm__ __volatile__(\"pause\\n\")"
.LASF3387:
	.string	"gtouchpad"
.LASF1379:
	.string	"SDL_HAT_DOWN 0x04u"
.LASF2403:
	.string	"SDL_INIT_GAMECONTROLLER SDL_INIT_GAMECONTROLLER_renamed_SDL_INIT_GAMEPAD"
.LASF433:
	.string	"__USE_XOPEN_EXTENDED"
.LASF1166:
	.string	"SDL_AUDIO_BYTESIZE(x) (SDL_AUDIO_BITSIZE(x) / 8)"
.LASF1419:
	.string	"SDLK_2 0x00000032u"
.LASF709:
	.string	"UINT32_C(c) c ## U"
.LASF3392:
	.string	"user"
.LASF2527:
	.string	"SDLK_p SDLK_p_renamed_SDLK_P"
.LASF940:
	.string	"SCNxFAST16 __PRIPTR_PREFIX \"x\""
.LASF2519:
	.string	"SDLK_h SDLK_h_renamed_SDLK_H"
.LASF2515:
	.string	"SDLK_d SDLK_d_renamed_SDLK_D"
.LASF141:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF1750:
	.string	"SDL_haptic_h_ "
.LASF1342:
	.string	"SDL_PROP_WINDOW_WAYLAND_VIEWPORT_POINTER \"SDL.window.wayland.viewport\""
.LASF1910:
	.string	"SDL_HINT_MOUSE_DOUBLE_CLICK_RADIUS \"SDL_MOUSE_DOUBLE_CLICK_RADIUS\""
.LASF2875:
	.string	"pixels"
.LASF48:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF1271:
	.string	"SDL_GL_CONTEXT_PROFILE_COMPATIBILITY 0x0002"
.LASF2468:
	.string	"SDL_JoystickNumButtons SDL_JoystickNumButtons_renamed_SDL_GetNumJoystickButtons"
.LASF1992:
	.string	"SDL_HINT_WAVE_TRUNCATION \"SDL_WAVE_TRUNCATION\""
.LASF2293:
	.string	"SDL_WINDOWEVENT_FOCUS_LOST SDL_WINDOWEVENT_FOCUS_LOST_renamed_SDL_EVENT_WINDOW_FOCUS_LOST"
.LASF2700:
	.string	"SDL_FillRects SDL_FillRects_renamed_SDL_FillSurfaceRects"
.LASF1426:
	.string	"SDLK_9 0x00000039u"
.LASF2933:
	.string	"SDL_SCANCODE_TAB"
.LASF781:
	.string	"___int_wchar_t_h "
.LASF611:
	.string	"__OFF_T_TYPE __SYSCALL_SLONG_TYPE"
.LASF486:
	.string	"__COLD __attribute__ ((__cold__))"
.LASF3109:
	.string	"SDL_SCANCODE_CHANNEL_INCREMENT"
.LASF1287:
	.string	"SDL_PROP_WINDOW_CREATE_FLAGS_NUMBER \"SDL.window.create.flags\""
.LASF2399:
	.string	"SDL_GameControllerSetPlayerIndex SDL_GameControllerSetPlayerIndex_renamed_SDL_SetGamepadPlayerIndex"
.LASF843:
	.string	"PRIuFAST8 \"u\""
.LASF1501:
	.string	"SDLK_KP_PLUS 0x40000057u"
.LASF2531:
	.string	"SDLK_t SDLK_t_renamed_SDLK_T"
.LASF3407:
	.string	"SDL_LOG_CATEGORY_ASSERT"
.LASF2476:
	.string	"SDL_JoystickSetPlayerIndex SDL_JoystickSetPlayerIndex_renamed_SDL_SetJoystickPlayerIndex"
.LASF1260:
	.string	"SDL_WINDOW_TRANSPARENT SDL_UINT64_C(0x0000000040000000)"
.LASF1521:
	.string	"SDLK_F17 0x4000006cu"
.LASF2816:
	.string	"SDL_PIXELFORMAT_RGB565"
.LASF2780:
	.string	"char"
.LASF2819:
	.string	"SDL_PIXELFORMAT_BGR24"
.LASF3345:
	.string	"SDL_AudioDeviceEvent"
.LASF1887:
	.string	"SDL_HINT_JOYSTICK_LINUX_HAT_DEADZONES \"SDL_JOYSTICK_LINUX_HAT_DEADZONES\""
.LASF2284:
	.string	"SDL_TEXTEDITING SDL_TEXTEDITING_renamed_SDL_EVENT_TEXT_EDITING"
.LASF279:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF690:
	.string	"UINTPTR_MAX (18446744073709551615UL)"
.LASF946:
	.string	"SCNuMAX __PRI64_PREFIX \"u\""
.LASF772:
	.string	"_WCHAR_T "
.LASF212:
	.string	"__FLT16_NORM_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF1069:
	.ascii	"SDL_enabled_assert(condition) do { while ( !(condition) ) { "
	.ascii	"static struct SDL_AssertData sdl_assert_data = { 0, 0, #cond"
	.ascii	"ition, 0, 0, 0, 0 }; const SDL_AssertState sdl_assert_state "
	.ascii	"= SD"
	.string	"L_ReportAssertion(&sdl_assert_data, SDL_FUNCTION, SDL_FILE, SDL_LINE); if (sdl_assert_state == SDL_ASSERTION_RETRY) { continue; } else if (sdl_assert_state == SDL_ASSERTION_BREAK) { SDL_AssertBreakpoint(); } break; } } while (SDL_NULL_WHILE_LOOP_CONDITION)"
.LASF1196:
	.string	"SDL_PIXELORDER(format) (((format) >> 20) & 0x0F)"
.LASF866:
	.string	"PRIXLEAST64 __PRI64_PREFIX \"X\""
.LASF1773:
	.string	"SDL_HAPTIC_SPHERICAL 2"
.LASF1693:
	.string	"SDL_PEN_INPUT_DOWN (1u << 0)"
.LASF1985:
	.string	"SDL_HINT_VITA_PVR_OPENGL \"SDL_VITA_PVR_OPENGL\""
.LASF3046:
	.string	"SDL_SCANCODE_SEPARATOR"
.LASF1454:
	.string	"SDLK_O 0x0000006fu"
.LASF2937:
	.string	"SDL_SCANCODE_LEFTBRACKET"
.LASF2635:
	.string	"SDL_RenderGetWindow SDL_RenderGetWindow_renamed_SDL_GetRenderWindow"
.LASF948:
	.string	"SCNdPTR __PRIPTR_PREFIX \"d\""
.LASF2442:
	.string	"SDL_JoystickAttachVirtualEx SDL_JoystickAttachVirtualEx_renamed_SDL_AttachVirtualJoystick"
.LASF2024:
	.string	"SDL_PROP_APP_METADATA_VERSION_STRING \"SDL.app.metadata.version\""
.LASF621:
	.string	"__FSFILCNT64_T_TYPE __UQUAD_TYPE"
.LASF2414:
	.string	"SDL_HapticOpenFromJoystick SDL_HapticOpenFromJoystick_renamed_SDL_OpenHapticFromJoystick"
.LASF661:
	.string	"UINT16_MAX (65535)"
.LASF1021:
	.string	"SDLCALL "
.LASF1898:
	.string	"SDL_HINT_JOYSTICK_ZERO_CENTERED_DEVICES \"SDL_JOYSTICK_ZERO_CENTERED_DEVICES\""
.LASF1465:
	.string	"SDLK_Z 0x0000007au"
.LASF2357:
	.string	"SDL_GameControllerBindType SDL_GameControllerBindType_renamed_SDL_GamepadBindingType"
.LASF1757:
	.string	"SDL_HAPTIC_RAMP (1u<<6)"
.LASF933:
	.string	"SCNx32 \"x\""
.LASF69:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF436:
	.string	"__USE_XOPEN2KXSI"
.LASF2617:
	.string	"SDL_RenderDrawPoint SDL_RenderDrawPoint_renamed_SDL_RenderPoint"
.LASF3444:
	.string	"texture"
.LASF1869:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_STEAMDECK \"SDL_JOYSTICK_HIDAPI_STEAMDECK\""
.LASF2148:
	.string	"SDL_DEBUG_TEXT_FONT_CHARACTER_SIZE 8"
.LASF3014:
	.string	"SDL_SCANCODE_COPY"
.LASF1612:
	.string	"SDLK_SLEEP 0x40000102u"
.LASF477:
	.string	"__glibc_has_attribute(attr) __has_attribute (attr)"
.LASF656:
	.string	"INT8_MAX (127)"
.LASF1256:
	.string	"SDL_WINDOW_POPUP_MENU SDL_UINT64_C(0x0000000000080000)"
.LASF1198:
	.string	"SDL_BITSPERPIXEL(format) (SDL_ISPIXELFORMAT_FOURCC(format) ? 0 : (((format) >> 8) & 0xFF))"
.LASF197:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF1018:
	.string	"SDL_DEPRECATED __attribute__((deprecated))"
.LASF808:
	.string	"PRIdFAST16 __PRIPTR_PREFIX \"d\""
.LASF3146:
	.string	"SDL_MouseWheelDirection"
.LASF2311:
	.string	"SDL_CONTROLLER_AXIS_RIGHTY SDL_CONTROLLER_AXIS_RIGHTY_renamed_SDL_GAMEPAD_AXIS_RIGHTY"
.LASF871:
	.string	"PRIdMAX __PRI64_PREFIX \"d\""
.LASF2676:
	.string	"SDL_SCANCODE_AUDIOPREV SDL_SCANCODE_AUDIOPREV_renamed_SDL_SCANCODE_MEDIA_PREVIOUS_TRACK"
.LASF101:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF353:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF2452:
	.string	"SDL_JoystickGetButton SDL_JoystickGetButton_renamed_SDL_GetJoystickButton"
.LASF2396:
	.string	"SDL_GameControllerRumbleTriggers SDL_GameControllerRumbleTriggers_renamed_SDL_RumbleGamepadTriggers"
.LASF732:
	.string	"_GCC_SIZE_T "
.LASF1282:
	.string	"SDL_PROP_DISPLAY_KMSDRM_PANEL_ORIENTATION_NUMBER \"SDL.display.KMSDRM.panel_orientation\""
.LASF2418:
	.string	"SDL_HapticRumbleInit SDL_HapticRumbleInit_renamed_SDL_InitHapticRumble"
.LASF2833:
	.string	"SDL_PIXELFORMAT_BGR48"
.LASF1558:
	.string	"SDLK_KP_000 0x400000b1u"
.LASF1724:
	.string	"SDL_GPU_COLORCOMPONENT_G (1u << 1)"
.LASF703:
	.string	"INT8_C(c) c"
.LASF829:
	.string	"PRIoLEAST32 \"o\""
.LASF787:
	.string	"__need_wchar_t"
.LASF2390:
	.string	"SDL_GameControllerMappingForDeviceIndex SDL_GameControllerMappingForDeviceIndex_renamed_SDL_GetGamepadMappingForDeviceIndex"
.LASF113:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF1142:
	.string	"SDL_RELEASE_SHARED(x) SDL_THREAD_ANNOTATION_ATTRIBUTE__(release_shared_capability(x))"
.LASF1221:
	.string	"SDL_SURFACE_PREALLOCATED 0x00000001u"
.LASF2586:
	.string	"SDL_PIXELFORMAT_BGR444 SDL_PIXELFORMAT_BGR444_renamed_SDL_PIXELFORMAT_XBGR4444"
.LASF2100:
	.string	"SDL_PROP_TEXTURE_CREATE_WIDTH_NUMBER \"SDL.texture.create.width\""
.LASF220:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF1224:
	.string	"SDL_SURFACE_SIMD_ALIGNED 0x00000008u"
.LASF3045:
	.string	"SDL_SCANCODE_RETURN2"
.LASF1432:
	.string	"SDLK_QUESTION 0x0000003fu"
.LASF587:
	.string	"__S32_TYPE int"
.LASF1111:
	.string	"SDL_SwapFloatLE(x) (x)"
.LASF2256:
	.string	"SDL_DROPTEXT SDL_DROPTEXT_renamed_SDL_EVENT_DROP_TEXT"
.LASF1511:
	.string	"SDLK_KP_9 0x40000061u"
.LASF720:
	.string	"_SYS_SIZE_T_H "
.LASF89:
	.string	"__SHRT_WIDTH__ 16"
.LASF2373:
	.string	"SDL_GameControllerGetPlayerIndex SDL_GameControllerGetPlayerIndex_renamed_SDL_GetGamepadPlayerIndex"
.LASF2623:
	.string	"SDL_RenderDrawRects SDL_RenderDrawRects_renamed_SDL_RenderRects"
.LASF380:
	.string	"__SSE2__ 1"
.LASF1320:
	.string	"SDL_PROP_WINDOW_HDR_HEADROOM_FLOAT \"SDL.window.HDR_headroom\""
.LASF3356:
	.string	"eraser"
.LASF396:
	.string	"__STDC_IEC_559__ 1"
.LASF1431:
	.string	"SDLK_GREATER 0x0000003eu"
.LASF76:
	.string	"__GXX_ABI_VERSION 1019"
.LASF1087:
	.string	"_BITS_ENDIAN_H 1"
.LASF724:
	.string	"_SIZE_T_ "
.LASF2882:
	.string	"SDL_WindowFlags"
.LASF930:
	.string	"SCNoFAST64 __PRI64_PREFIX \"o\""
.LASF1714:
	.string	"SDL_GPU_BUFFERUSAGE_COMPUTE_STORAGE_READ (1u << 4)"
.LASF177:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF1739:
	.string	"SDL_PROP_GPU_SAMPLER_CREATE_NAME_STRING \"SDL.gpu.sampler.create.name\""
.LASF346:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF125:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF1660:
	.string	"SDL_KMOD_LGUI 0x0400u"
.LASF1708:
	.string	"SDL_GPU_TEXTUREUSAGE_COMPUTE_STORAGE_WRITE (1u << 5)"
.LASF1737:
	.string	"SDL_PROP_GPU_COMPUTEPIPELINE_CREATE_NAME_STRING \"SDL.gpu.computepipeline.create.name\""
.LASF298:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF1553:
	.string	"SDLK_OPER 0x400000a1u"
.LASF1653:
	.string	"SDL_KMOD_LSHIFT 0x0001u"
.LASF3381:
	.string	"jhat"
.LASF1973:
	.string	"SDL_HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR \"SDL_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR\""
.LASF3290:
	.string	"windowID"
.LASF812:
	.string	"PRIi16 \"i\""
.LASF2219:
	.string	"SDL_SwapBE32 SDL_SwapBE32_renamed_SDL_Swap32BE"
.LASF3103:
	.string	"SDL_SCANCODE_RSHIFT"
.LASF1588:
	.string	"SDLK_KP_EXCLAM 0x400000cfu"
.LASF3209:
	.string	"SDL_EVENT_WINDOW_LAST"
.LASF2217:
	.string	"SDL_SIMDGetAlignment SDL_SIMDGetAlignment_renamed_SDL_GetSIMDAlignment"
.LASF2143:
	.string	"SDL_PROP_TEXTURE_OPENGLES2_TEXTURE_V_NUMBER \"SDL.texture.opengles2.texture_v\""
.LASF476:
	.string	"__PMT"
.LASF2686:
	.string	"SDL_SensorGetNonPortableType SDL_SensorGetNonPortableType_renamed_SDL_GetSensorNonPortableType"
.LASF2716:
	.string	"SDL_AndroidBackButton SDL_AndroidBackButton_renamed_SDL_SendAndroidBackButton"
.LASF1827:
	.string	"SDL_HINT_GDK_TEXTINPUT_DESCRIPTION \"SDL_GDK_TEXTINPUT_DESCRIPTION\""
.LASF2079:
	.string	"SDL_PROP_RENDERER_OUTPUT_COLORSPACE_NUMBER \"SDL.renderer.output_colorspace\""
.LASF2182:
	.string	"SDL_AtomicCAS SDL_AtomicCAS_renamed_SDL_CompareAndSwapAtomicInt"
.LASF2659:
	.string	"SDL_ReadBE16 SDL_ReadBE16_renamed_SDL_ReadU16BE"
.LASF1738:
	.string	"SDL_PROP_GPU_GRAPHICSPIPELINE_CREATE_NAME_STRING \"SDL.gpu.graphicspipeline.create.name\""
.LASF1378:
	.string	"SDL_HAT_RIGHT 0x02u"
.LASF581:
	.string	"__GLIBC_USE_IEC_60559_FUNCS_EXT_C23 0"
.LASF2053:
	.string	"SDL_PROP_PROCESS_CREATE_STDERR_TO_STDOUT_BOOLEAN \"SDL.process.create.stderr_to_stdout\""
.LASF2881:
	.string	"SDL_Window"
.LASF489:
	.string	"__CONCAT(x,y) x ## y"
.LASF3053:
	.string	"SDL_SCANCODE_KP_000"
.LASF733:
	.string	"_SIZET_ "
.LASF2116:
	.string	"SDL_PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_UV_NUMBER \"SDL.texture.create.opengles2.texture_uv\""
.LASF3301:
	.string	"SDL_TextEditingCandidatesEvent"
.LASF19:
	.string	"__OPTIMIZE__ 1"
.LASF2348:
	.string	"SDL_CONTROLLER_TYPE_UNKNOWN SDL_CONTROLLER_TYPE_UNKNOWN_renamed_SDL_GAMEPAD_TYPE_STANDARD"
.LASF3251:
	.string	"SDL_EVENT_DROP_TEXT"
.LASF2340:
	.string	"SDL_CONTROLLER_BUTTON_Y SDL_CONTROLLER_BUTTON_Y_renamed_SDL_GAMEPAD_BUTTON_NORTH"
.LASF1702:
	.string	"SDL_gpu_h_ "
.LASF1273:
	.string	"SDL_GL_CONTEXT_DEBUG_FLAG 0x0001"
.LASF721:
	.string	"_T_SIZE_ "
.LASF1780:
	.string	"SDL_HINT_ANDROID_BLOCK_ON_PAUSE \"SDL_ANDROID_BLOCK_ON_PAUSE\""
.LASF968:
	.string	"SDL_SINT64_C(c) INT64_C(c)"
.LASF2870:
	.string	"SDL_SurfaceFlags"
.LASF1063:
	.string	"SDL_FUNCTION __func__"
.LASF2113:
	.string	"SDL_PROP_TEXTURE_CREATE_OPENGL_TEXTURE_U_NUMBER \"SDL.texture.create.opengl.texture_u\""
.LASF1250:
	.string	"SDL_WINDOW_HIGH_PIXEL_DENSITY SDL_UINT64_C(0x0000000000002000)"
.LASF558:
	.string	"__attr_dealloc_free __attr_dealloc (__builtin_free, 1)"
.LASF1209:
	.string	"SDL_COLORSPACERANGE(cspace) (SDL_ColorRange)(((cspace) >> 24) & 0x0F)"
.LASF1241:
	.string	"SDL_WINDOW_BORDERLESS SDL_UINT64_C(0x0000000000000010)"
.LASF301:
	.string	"__BFLT16_DIG__ 2"
.LASF1969:
	.string	"SDL_HINT_VIDEO_WAYLAND_MODE_SCALING \"SDL_VIDEO_WAYLAND_MODE_SCALING\""
.LASF284:
	.string	"__FLT64X_MANT_DIG__ 64"
.LASF3150:
	.string	"SDL_TouchID"
.LASF792:
	.string	"____mbstate_t_defined 1"
.LASF2450:
	.string	"SDL_JoystickGetAxisInitialState SDL_JoystickGetAxisInitialState_renamed_SDL_GetJoystickAxisInitialState"
.LASF556:
	.string	"__attr_access_none(argno) __attribute__ ((__access__ (__none__, argno)))"
.LASF2763:
	.string	"SCREEN_WIDTH 800"
.LASF1513:
	.string	"SDLK_KP_PERIOD 0x40000063u"
.LASF629:
	.string	"__KEY_T_TYPE __S32_TYPE"
.LASF2624:
	.string	"SDL_RenderDrawRectsF SDL_RenderDrawRectsF_renamed_SDL_RenderRects"
.LASF2227:
	.string	"SDL_APP_TERMINATING SDL_APP_TERMINATING_renamed_SDL_EVENT_TERMINATING"
.LASF774:
	.string	"_T_WCHAR "
.LASF1463:
	.string	"SDLK_X 0x00000078u"
.LASF1208:
	.string	"SDL_COLORSPACETYPE(cspace) (SDL_ColorType)(((cspace) >> 28) & 0x0F)"
.LASF149:
	.string	"__GCC_IEC_559 2"
.LASF2687:
	.string	"SDL_SensorGetType SDL_SensorGetType_renamed_SDL_GetSensorType"
.LASF1600:
	.string	"SDLK_KP_OCTAL 0x400000dbu"
.LASF1977:
	.string	"SDL_HINT_VIDEO_X11_VISUALID \"SDL_VIDEO_X11_VISUALID\""
.LASF3019:
	.string	"SDL_SCANCODE_VOLUMEDOWN"
.LASF2653:
	.string	"SDL_RWops SDL_RWops_renamed_SDL_IOStream"
.LASF1854:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_GAMECUBE_RUMBLE_BRAKE \"SDL_JOYSTICK_HIDAPI_GAMECUBE_RUMBLE_BRAKE\""
.LASF1182:
	.string	"SDL_BLENDMODE_ADD_PREMULTIPLIED 0x00000020u"
.LASF508:
	.string	"__REDIRECT_FORTIFY __REDIRECT"
.LASF256:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF2447:
	.string	"SDL_JoystickGUID SDL_JoystickGUID_renamed_SDL_GUID"
.LASF2137:
	.string	"SDL_PROP_TEXTURE_OPENGL_TEXTURE_TARGET_NUMBER \"SDL.texture.opengl.target\""
.LASF2150:
	.string	"SDL_system_h_ "
.LASF612:
	.string	"__OFF64_T_TYPE __SQUAD_TYPE"
.LASF716:
	.string	"__need_NULL "
.LASF872:
	.string	"PRIiMAX __PRI64_PREFIX \"i\""
.LASF1698:
	.string	"SDL_PEN_INPUT_BUTTON_5 (1u << 5)"
.LASF1222:
	.string	"SDL_SURFACE_LOCK_NEEDED 0x00000002u"
.LASF2558:
	.string	"SDL_SYSTEM_CURSOR_WAITARROW SDL_SYSTEM_CURSOR_WAITARROW_renamed_SDL_SYSTEM_CURSOR_PROGRESS"
.LASF3409:
	.string	"SDL_LOG_CATEGORY_AUDIO"
.LASF1010:
	.string	"SDL_PRINTF_VARARG_FUNC(fmtargnumber) __attribute__ (( format( __printf__, fmtargnumber, fmtargnumber+1 )))"
.LASF1904:
	.string	"SDL_HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK \"SDL_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK\""
.LASF1652:
	.string	"SDL_KMOD_NONE 0x0000u"
.LASF2862:
	.string	"SDL_PIXELFORMAT_BGRA32"
.LASF175:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF2588:
	.string	"SDL_PIXELFORMAT_BGR888 SDL_PIXELFORMAT_BGR888_renamed_SDL_PIXELFORMAT_XBGR8888"
.LASF2595:
	.string	"SDL_FRectEmpty SDL_FRectEmpty_renamed_SDL_RectEmptyFloat"
.LASF1866:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_STADIA \"SDL_JOYSTICK_HIDAPI_STADIA\""
.LASF523:
	.string	"__nonnull(params) __attribute_nonnull__ (params)"
.LASF2535:
	.string	"SDLK_x SDLK_x_renamed_SDLK_X"
.LASF1230:
	.string	"SDL_PROP_SURFACE_HOTSPOT_Y_NUMBER \"SDL.surface.hotspot.y\""
.LASF2156:
	.string	"SDL_NS_PER_MS 1000000"
.LASF2580:
	.string	"SDL_sem SDL_sem_renamed_SDL_Semaphore"
.LASF357:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF1515:
	.string	"SDLK_POWER 0x40000066u"
.LASF1054:
	.string	"SDL_iconv_utf8_ucs2(S) (Uint16 *)SDL_iconv_string(\"UCS-2\", \"UTF-8\", S, SDL_strlen(S)+1)"
.LASF3338:
	.string	"touchpad"
.LASF1772:
	.string	"SDL_HAPTIC_CARTESIAN 1"
.LASF1253:
	.string	"SDL_WINDOW_ALWAYS_ON_TOP SDL_UINT64_C(0x0000000000010000)"
.LASF1348:
	.string	"SDL_PROP_WINDOW_WAYLAND_XDG_POSITIONER_POINTER \"SDL.window.wayland.xdg_positioner\""
.LASF2030:
	.string	"SDL_loadso_h_ "
.LASF3273:
	.string	"SDL_EVENT_RENDER_DEVICE_LOST"
.LASF488:
	.string	"__PMT(args) args"
.LASF769:
	.string	"__need_wchar_t "
.LASF688:
	.string	"INTPTR_MIN (-9223372036854775807L-1)"
.LASF2239:
	.string	"SDL_CONTROLLERSENSORUPDATE SDL_CONTROLLERSENSORUPDATE_renamed_SDL_EVENT_GAMEPAD_SENSOR_UPDATE"
.LASF96:
	.string	"__SIZE_WIDTH__ 64"
.LASF1721:
	.string	"SDL_GPU_SHADERFORMAT_MSL (1u << 4)"
.LASF3158:
	.string	"SDL_PEN_AXIS_DISTANCE"
.LASF209:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF2096:
	.string	"SDL_PROP_RENDERER_GPU_DEVICE_POINTER \"SDL.renderer.gpu.device\""
.LASF1490:
	.string	"SDLK_PAGEUP 0x4000004bu"
.LASF12:
	.string	"__ATOMIC_RELEASE 3"
.LASF77:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF3174:
	.string	"SDL_EVENT_DISPLAY_ORIENTATION"
.LASF1572:
	.string	"SDLK_KP_D 0x400000bfu"
.LASF1505:
	.string	"SDLK_KP_3 0x4000005bu"
.LASF2248:
	.string	"SDL_ControllerTouchpadEvent SDL_ControllerTouchpadEvent_renamed_SDL_GamepadTouchpadEvent"
.LASF3123:
	.string	"SDL_SCANCODE_AC_OPEN"
.LASF1811:
	.string	"SDL_HINT_DISPLAY_USABLE_BOUNDS \"SDL_DISPLAY_USABLE_BOUNDS\""
.LASF1380:
	.string	"SDL_HAT_LEFT 0x08u"
.LASF1362:
	.string	"SDL_events_h_ "
.LASF1675:
	.string	"SDL_mouse_h_ "
.LASF283:
	.string	"__FLT32X_IS_IEC_60559__ 1"
.LASF2121:
	.string	"SDL_PROP_TEXTURE_FORMAT_NUMBER \"SDL.texture.format\""
.LASF2285:
	.string	"SDL_TEXTEDITING_EXT SDL_TEXTEDITING_EXT_renamed_SDL_EVENT_TEXT_EDITING_EXT"
.LASF755:
	.string	"__HAVE_DISTINCT_FLOAT64 0"
.LASF473:
	.string	"__GLIBC_MINOR__ 41"
.LASF2094:
	.string	"SDL_PROP_RENDERER_VULKAN_PRESENT_QUEUE_FAMILY_INDEX_NUMBER \"SDL.renderer.vulkan.present_queue_family_index\""
.LASF2026:
	.string	"SDL_PROP_APP_METADATA_CREATOR_STRING \"SDL.app.metadata.creator\""
.LASF153:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF628:
	.string	"__DADDR_T_TYPE __S32_TYPE"
.LASF1638:
	.string	"SDLK_AC_STOP 0x4000011cu"
.LASF2846:
	.string	"SDL_PIXELFORMAT_RGBA128_FLOAT"
.LASF2842:
	.string	"SDL_PIXELFORMAT_BGRA64_FLOAT"
.LASF3292:
	.string	"which"
.LASF193:
	.string	"__DECIMAL_DIG__ 21"
.LASF3449:
	.string	"GNU C99 14.2.1 20250207 -mtune=generic -march=x86-64 -ggdb3 -O3 -std=c99 -fsanitize=undefined -ftree-vectorize -ftree-loop-vectorize -fopt-info-vec-missed -fopt-info-vec-optimized -fstrict-aliasing"
.LASF2754:
	.string	"SDL_GetRectDisplayIndex SDL_GetRectDisplayIndex_renamed_SDL_GetDisplayForRect"
.LASF675:
	.string	"UINT_LEAST64_MAX (__UINT64_C(18446744073709551615))"
.LASF2244:
	.string	"SDL_ControllerAxisEvent SDL_ControllerAxisEvent_renamed_SDL_GamepadAxisEvent"
.LASF1160:
	.string	"SDL_AUDIO_MASK_BITSIZE (0xFFu)"
.LASF3417:
	.string	"SDL_LOG_CATEGORY_RESERVED4"
.LASF2250:
	.string	"SDL_DISPLAYEVENT_DISCONNECTED SDL_DISPLAYEVENT_DISCONNECTED_renamed_SDL_EVENT_DISPLAY_REMOVED"
.LASF785:
	.string	"__DEFINED_wchar_t "
.LASF1177:
	.string	"SDL_blendmode_h_ "
.LASF2660:
	.string	"SDL_ReadBE32 SDL_ReadBE32_renamed_SDL_ReadU32BE"
.LASF328:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF3420:
	.string	"SDL_LOG_CATEGORY_RESERVED7"
.LASF3426:
	.string	"SDL_Texture"
.LASF2000:
	.string	"SDL_HINT_WINDOWS_GAMEINPUT \"SDL_WINDOWS_GAMEINPUT\""
.LASF2931:
	.string	"SDL_SCANCODE_ESCAPE"
.LASF814:
	.string	"PRIi64 __PRI64_PREFIX \"i\""
.LASF2278:
	.string	"SDL_MOUSEWHEEL SDL_MOUSEWHEEL_renamed_SDL_EVENT_MOUSE_WHEEL"
.LASF3455:
	.string	"__stack_chk_fail"
.LASF520:
	.string	"__attribute_format_arg__(x) __attribute__ ((__format_arg__ (x)))"
.LASF2737:
	.string	"SDL_iPhoneSetEventPump SDL_iPhoneSetEventPump_renamed_SDL_iOSSetEventPump"
.LASF3323:
	.string	"SDL_JoyAxisEvent"
.LASF2322:
	.string	"SDL_CONTROLLER_BUTTON_DPAD_LEFT SDL_CONTROLLER_BUTTON_DPAD_LEFT_renamed_SDL_GAMEPAD_BUTTON_DPAD_LEFT"
.LASF466:
	.string	"__USE_FORTIFY_LEVEL 0"
.LASF2695:
	.string	"SDL_size_mul_overflow SDL_size_mul_overflow_renamed_SDL_size_mul_check_overflow"
.LASF1215:
	.string	"SDL_ISCOLORSPACE_MATRIX_BT709(cspace) (SDL_COLORSPACEMATRIX(cspace) == SDL_MATRIX_COEFFICIENTS_BT709)"
.LASF2556:
	.string	"SDL_SYSTEM_CURSOR_SIZENWSE SDL_SYSTEM_CURSOR_SIZENWSE_renamed_SDL_SYSTEM_CURSOR_NWSE_RESIZE"
.LASF3206:
	.string	"SDL_EVENT_WINDOW_DESTROYED"
.LASF3180:
	.string	"SDL_EVENT_DISPLAY_CONTENT_SCALE_CHANGED"
.LASF2760:
	.string	"SDL_WINDOW_ALLOW_HIGHDPI SDL_WINDOW_ALLOW_HIGHDPI_renamed_SDL_WINDOW_HIGH_PIXEL_DENSITY"
.LASF2245:
	.string	"SDL_ControllerButtonEvent SDL_ControllerButtonEvent_renamed_SDL_GamepadButtonEvent"
.LASF1722:
	.string	"SDL_GPU_SHADERFORMAT_METALLIB (1u << 5)"
.LASF1049:
	.string	"SDL_ICONV_ERROR (size_t)-1"
.LASF2836:
	.string	"SDL_PIXELFORMAT_BGRA64"
.LASF107:
	.string	"__INT16_MAX__ 0x7fff"
.LASF180:
	.string	"__DBL_MIN__ ((double)2.22507385850720138309023271733240406e-308L)"
.LASF1671:
	.string	"SDL_PROP_TEXTINPUT_CAPITALIZATION_NUMBER \"SDL.textinput.capitalization\""
.LASF155:
	.string	"__FLT_MANT_DIG__ 24"
.LASF3289:
	.string	"SDL_WindowEvent"
.LASF3044:
	.string	"SDL_SCANCODE_PRIOR"
.LASF1832:
	.string	"SDL_HINT_HIDAPI_LIBUSB_WHITELIST \"SDL_HIDAPI_LIBUSB_WHITELIST\""
.LASF1259:
	.string	"SDL_WINDOW_METAL SDL_UINT64_C(0x0000000020000000)"
.LASF1029:
	.string	"SDL_NODISCARD __attribute__((warn_unused_result))"
.LASF2550:
	.string	"SDL_SYSTEM_CURSOR_HAND SDL_SYSTEM_CURSOR_HAND_renamed_SDL_SYSTEM_CURSOR_POINTER"
.LASF1484:
	.string	"SDLK_F12 0x40000045u"
.LASF2176:
	.string	"SDL_VERSIONNUM_MINOR(version) (((version) / 1000) % 1000)"
.LASF2861:
	.string	"SDL_PIXELFORMAT_ARGB32"
.LASF2549:
	.string	"SDL_SYSTEM_CURSOR_ARROW SDL_SYSTEM_CURSOR_ARROW_renamed_SDL_SYSTEM_CURSOR_DEFAULT"
.LASF1318:
	.string	"SDL_PROP_WINDOW_HDR_ENABLED_BOOLEAN \"SDL.window.HDR_enabled\""
.LASF3112:
	.string	"SDL_SCANCODE_MEDIA_PAUSE"
.LASF2871:
	.string	"SDL_Surface"
.LASF3104:
	.string	"SDL_SCANCODE_RALT"
.LASF3059:
	.string	"SDL_SCANCODE_KP_RIGHTPAREN"
.LASF734:
	.string	"__size_t "
.LASF630:
	.string	"__CLOCKID_T_TYPE __S32_TYPE"
.LASF892:
	.string	"SCNdFAST16 __PRIPTR_PREFIX \"d\""
.LASF2657:
	.string	"SDL_RWtell SDL_RWtell_renamed_SDL_TellIO"
.LASF1485:
	.string	"SDLK_PRINTSCREEN 0x40000046u"
.LASF2089:
	.string	"SDL_PROP_RENDERER_VULKAN_INSTANCE_POINTER \"SDL.renderer.vulkan.instance\""
.LASF2709:
	.string	"SDL_PREALLOC SDL_PREALLOC_renamed_SDL_SURFACE_PREALLOCATED"
.LASF752:
	.string	"__HAVE_FLOAT128X 0"
.LASF1709:
	.string	"SDL_GPU_TEXTUREUSAGE_COMPUTE_STORAGE_SIMULTANEOUS_READ_WRITE (1u << 6)"
.LASF3440:
	.string	"argc"
.LASF2368:
	.string	"SDL_GameControllerGetButtonFromString SDL_GameControllerGetButtonFromString_renamed_SDL_GetGamepadButtonFromString"
.LASF3007:
	.string	"SDL_SCANCODE_HELP"
.LASF3040:
	.string	"SDL_SCANCODE_ALTERASE"
.LASF2336:
	.string	"SDL_CONTROLLER_BUTTON_RIGHTSTICK SDL_CONTROLLER_BUTTON_RIGHTSTICK_renamed_SDL_GAMEPAD_BUTTON_RIGHT_STICK"
.LASF129:
	.string	"__UINT16_C(c) c"
.LASF947:
	.string	"SCNxMAX __PRI64_PREFIX \"x\""
.LASF1032:
	.string	"SDL_ALLOC_SIZE2(p1,p2) __attribute__((alloc_size(p1, p2)))"
.LASF3048:
	.string	"SDL_SCANCODE_OPER"
.LASF1486:
	.string	"SDLK_SCROLLLOCK 0x40000047u"
.LASF348:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF2181:
	.string	"SDL_AtomicAdd SDL_AtomicAdd_renamed_SDL_AddAtomicInt"
.LASF1682:
	.string	"SDL_BUTTON_LMASK SDL_BUTTON_MASK(SDL_BUTTON_LEFT)"
.LASF1907:
	.string	"SDL_HINT_MAC_SCROLL_MOMENTUM \"SDL_MAC_SCROLL_MOMENTUM\""
.LASF280:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF1167:
	.string	"SDL_AUDIO_ISFLOAT(x) ((x) & SDL_AUDIO_MASK_FLOAT)"
.LASF2855:
	.string	"SDL_PIXELFORMAT_NV12"
.LASF2782:
	.string	"int32_t"
.LASF1286:
	.string	"SDL_PROP_WINDOW_CREATE_EXTERNAL_GRAPHICS_CONTEXT_BOOLEAN \"SDL.window.create.external_graphics_context\""
.LASF2302:
	.string	"SDL_WINDOWEVENT_RESTORED SDL_WINDOWEVENT_RESTORED_renamed_SDL_EVENT_WINDOW_RESTORED"
.LASF2892:
	.string	"SDL_Scancode"
.LASF395:
	.string	"_STDC_PREDEF_H 1"
.LASF1968:
	.string	"SDL_HINT_VIDEO_WAYLAND_MODE_EMULATION \"SDL_VIDEO_WAYLAND_MODE_EMULATION\""
.LASF3106:
	.string	"SDL_SCANCODE_MODE"
.LASF687:
	.string	"UINT_FAST64_MAX (__UINT64_C(18446744073709551615))"
.LASF2944:
	.string	"SDL_SCANCODE_COMMA"
.LASF2812:
	.string	"SDL_PIXELFORMAT_ARGB1555"
.LASF3051:
	.string	"SDL_SCANCODE_EXSEL"
.LASF224:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF2052:
	.string	"SDL_PROP_PROCESS_CREATE_STDERR_POINTER \"SDL.process.create.stderr_source\""
.LASF3041:
	.string	"SDL_SCANCODE_SYSREQ"
.LASF3121:
	.string	"SDL_SCANCODE_MEDIA_SELECT"
.LASF1443:
	.string	"SDLK_D 0x00000064u"
.LASF1311:
	.string	"SDL_PROP_WINDOW_CREATE_WAYLAND_SURFACE_ROLE_CUSTOM_BOOLEAN \"SDL.window.create.wayland.surface_role_custom\""
.LASF1557:
	.string	"SDLK_KP_00 0x400000b0u"
.LASF1477:
	.string	"SDLK_F5 0x4000003eu"
.LASF2789:
	.string	"Uint16"
.LASF2608:
	.string	"SDL_GetRendererOutputSize SDL_GetRendererOutputSize_renamed_SDL_GetCurrentRenderOutputSize"
.LASF1213:
	.string	"SDL_COLORSPACEMATRIX(cspace) (SDL_MatrixCoefficients)((cspace) & 0x1F)"
.LASF2378:
	.string	"SDL_GameControllerGetSerial SDL_GameControllerGetSerial_renamed_SDL_GetGamepadSerial"
.LASF1991:
	.string	"SDL_HINT_WAVE_RIFF_CHUNK_SIZE \"SDL_WAVE_RIFF_CHUNK_SIZE\""
.LASF1855:
	.string	"SDL_HINT_JOYSTICK_HIDAPI_JOY_CONS \"SDL_JOYSTICK_HIDAPI_JOY_CONS\""
.LASF3250:
	.string	"SDL_EVENT_DROP_FILE"
.LASF1143:
	.string	"SDL_RELEASE_GENERIC(x) SDL_THREAD_ANNOTATION_ATTRIBUTE__(release_generic_capability(x))"
.LASF2407:
	.string	"SDL_HapticDestroyEffect SDL_HapticDestroyEffect_renamed_SDL_DestroyHapticEffect"
.LASF1695:
	.string	"SDL_PEN_INPUT_BUTTON_2 (1u << 2)"
.LASF1765:
	.string	"SDL_HAPTIC_RESERVED3 (1u<<14)"
.LASF1242:
	.string	"SDL_WINDOW_RESIZABLE SDL_UINT64_C(0x0000000000000020)"
.LASF3429:
	.string	"SDL_DestroyTexture"
.LASF1468:
	.string	"SDLK_RIGHTBRACE 0x0000007du"
.LASF952:
	.string	"SCNxPTR __PRIPTR_PREFIX \"x\""
.LASF584:
	.string	"_BITS_TYPES_H 1"
.LASF1599:
	.string	"SDLK_KP_BINARY 0x400000dau"
.LASF2831:
	.string	"SDL_PIXELFORMAT_ABGR2101010"
.LASF2835:
	.string	"SDL_PIXELFORMAT_ARGB64"
.LASF460:
	.string	"__USE_ISOC95 1"
.LASF2548:
	.string	"SDL_NUM_SYSTEM_CURSORS SDL_NUM_SYSTEM_CURSORS_renamed_SDL_SYSTEM_CURSOR_COUNT"
.LASF2144:
	.string	"SDL_PROP_TEXTURE_OPENGLES2_TEXTURE_TARGET_NUMBER \"SDL.texture.opengles2.target\""
.LASF836:
	.string	"PRIu16 \"u\""
.LASF572:
	.string	"__GLIBC_USE_IEC_60559_BFP_EXT"
.LASF1804:
	.string	"SDL_HINT_AUTO_UPDATE_JOYSTICKS \"SDL_AUTO_UPDATE_JOYSTICKS\""
.LASF2592:
	.string	"SDL_PixelFormatEnumToMasks SDL_PixelFormatEnumToMasks_renamed_SDL_GetMasksForPixelFormat"
.LASF17:
	.string	"__pie__ 2"
.LASF1157:
	.string	"SDL_PROP_IOSTREAM_MEMORY_SIZE_NUMBER \"SDL.iostream.memory.size\""
.LASF3347:
	.string	"SDL_CameraDeviceEvent"
.LASF2768:
	.string	"unsigned int"
.LASF2031:
	.string	"SDL_locale_h "
.LASF1496:
	.string	"SDLK_UP 0x40000052u"
.LASF95:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF2878:
	.string	"SDL_CameraID"
.LASF2661:
	.string	"SDL_ReadBE64 SDL_ReadBE64_renamed_SDL_ReadU64BE"
.LASF2369:
	.string	"SDL_GameControllerGetFirmwareVersion SDL_GameControllerGetFirmwareVersion_renamed_SDL_GetGamepadFirmwareVersion"
.LASF443:
	.string	"__USE_ATFILE"
.LASF1246:
	.string	"SDL_WINDOW_INPUT_FOCUS SDL_UINT64_C(0x0000000000000200)"
.LASF837:
	.string	"PRIu32 \"u\""
.LASF3227:
	.string	"SDL_EVENT_JOYSTICK_BUTTON_DOWN"
.LASF2820:
	.string	"SDL_PIXELFORMAT_XRGB8888"
.LASF1314:
	.string	"SDL_PROP_WINDOW_CREATE_WIN32_HWND_POINTER \"SDL.window.create.win32.hwnd\""
.LASF2090:
	.string	"SDL_PROP_RENDERER_VULKAN_SURFACE_NUMBER \"SDL.renderer.vulkan.surface\""
.LASF1275:
	.string	"SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG 0x0004"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/lka/practice/mygames/myplatformer"
.LASF0:
	.string	"main.c"
	.ident	"GCC: (GNU) 14.2.1 20250207"
	.section	.note.GNU-stack,"",@progbits
