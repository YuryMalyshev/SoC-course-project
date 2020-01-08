cmd_/home/yumaly/workspace/project/driver/uio/uio_pdrv_genirq.o := arm-linux-gnueabihf-gcc -Wp,-MD,/home/yumaly/workspace/project/driver/uio/.uio_pdrv_genirq.o.d  -nostdinc -isystem /cad/x_18/SDK/2018.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin/../lib/gcc/arm-linux-gnueabihf/7.2.1/include -I/home/yumaly/workspace/xilinx_linux/arch/arm/include -I./arch/arm/include/generated/uapi -I./arch/arm/include/generated  -I/home/yumaly/workspace/xilinx_linux/include -I./include -I/home/yumaly/workspace/xilinx_linux/arch/arm/include/uapi -I/home/yumaly/workspace/xilinx_linux/include/uapi -I./include/generated/uapi -include /home/yumaly/workspace/xilinx_linux/include/linux/kconfig.h -I/home/yumaly/workspace/xilinx_linux//home/yumaly/workspace/project/driver/uio -I/home/yumaly/workspace/project/driver/uio -D__KERNEL__ -mlittle-endian -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -std=gnu89 -fno-PIE -fno-dwarf2-cfi-asm -fno-ipa-sra -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -funwind-tables -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -fno-delete-null-pointer-checks -Wno-frame-address -Os -Wno-maybe-uninitialized --param=allow-store-data-races=0 -Wframe-larger-than=1024 -fno-stack-protector -Wno-unused-but-set-variable -Wno-unused-const-variable -fomit-frame-pointer -fno-var-tracking-assignments -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -Werror=date-time -Werror=incompatible-pointer-types -DCC_HAVE_ASM_GOTO  -DMODULE  -DKBUILD_BASENAME='"uio_pdrv_genirq"'  -DKBUILD_MODNAME='"uio_pdrv_genirq"' -c -o /home/yumaly/workspace/project/driver/uio/.tmp_uio_pdrv_genirq.o /home/yumaly/workspace/project/driver/uio/uio_pdrv_genirq.c

source_/home/yumaly/workspace/project/driver/uio/uio_pdrv_genirq.o := /home/yumaly/workspace/project/driver/uio/uio_pdrv_genirq.c

deps_/home/yumaly/workspace/project/driver/uio/uio_pdrv_genirq.o := \
    $(wildcard include/config/of.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/platform_device.h \
    $(wildcard include/config/suspend.h) \
    $(wildcard include/config/hibernate/callbacks.h) \
    $(wildcard include/config/pm/sleep.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/generic/msi/irq/domain.h) \
    $(wildcard include/config/pinctrl.h) \
    $(wildcard include/config/generic/msi/irq.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/dma/cma.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
    $(wildcard include/config/sysfs/deprecated.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/ioport.h \
    $(wildcard include/config/memory/hotremove.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/kasan.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
    $(wildcard include/config/gcov/kernel.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/types.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/types.h \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/int-ll64.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/asm-generic/int-ll64.h \
  arch/arm/include/generated/asm/bitsperlong.h \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/bitsperlong.h \
    $(wildcard include/config/64bit.h) \
  /home/yumaly/workspace/xilinx_linux/include/uapi/asm-generic/bitsperlong.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/posix_types.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/stddef.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/stddef.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/uapi/asm/posix_types.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/asm-generic/posix_types.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/kobject.h \
    $(wildcard include/config/uevent/helper.h) \
    $(wildcard include/config/debug/kobject/release.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
    $(wildcard include/config/page/poisoning/zero.h) \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/const.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/panic/timeout.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /cad/x_18/SDK/2018.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/lib/gcc/arm-linux-gnueabihf/7.2.1/include/stdarg.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/linkage.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/stringify.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/trim/unused/ksyms.h) \
    $(wildcard include/config/unused/symbols.h) \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/linkage.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/bitops.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/bitops.h \
    $(wildcard include/config/smp.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/typecheck.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/irqflags.h \
    $(wildcard include/config/cpu/v7m.h) \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/arm/thumb.h) \
    $(wildcard include/config/thumb2/kernel.h) \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/uapi/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/hwcap.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/uapi/asm/hwcap.h \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/irqflags.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/barrier.h \
    $(wildcard include/config/cpu/32v6k.h) \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arm/heavy/mb.h) \
    $(wildcard include/config/arm/dma/mem/bufferable.h) \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/barrier.h \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/bitops/non-atomic.h \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/bitops/fls64.h \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/bitops/sched.h \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/bitops/hweight.h \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/bitops/arch_hweight.h \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/bitops/const_hweight.h \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/bitops/lock.h \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/bitops/le.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/uapi/asm/byteorder.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/byteorder/little_endian.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/byteorder/little_endian.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/swab.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/swab.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/swab.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/uapi/asm/swab.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/byteorder/generic.h \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/printk.h \
    $(wildcard include/config/message/loglevel/default.h) \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk/nmi.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/init.h \
    $(wildcard include/config/debug/rodata.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/kern_levels.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/kernel.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/sysinfo.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/cache.h \
    $(wildcard include/config/arm/l1/cache/shift.h) \
    $(wildcard include/config/aeabi.h) \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/div64.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/compiler.h \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/div64.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/sysfs.h \
    $(wildcard include/config/debug/lock/alloc.h) \
    $(wildcard include/config/sysfs.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/kernfs.h \
    $(wildcard include/config/kernfs.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/err.h \
  arch/arm/include/generated/asm/errno.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/asm-generic/errno.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/asm-generic/errno-base.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/mutex/spin/on/owner.h) \
  arch/arm/include/generated/asm/current.h \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/current.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/thread_info.h \
    $(wildcard include/config/thread/info/in/task.h) \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/debug/stack/usage.h) \
    $(wildcard include/config/have/arch/within/stack/frames.h) \
    $(wildcard include/config/hardened/usercopy.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/bug.h \
    $(wildcard include/config/generic/bug.h) \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/bug.h \
    $(wildcard include/config/debug/bugverbose.h) \
    $(wildcard include/config/arm/lpae.h) \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/opcodes.h \
    $(wildcard include/config/cpu/endian/be32.h) \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/crunch.h) \
    $(wildcard include/config/arm/thumbee.h) \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/vfpv3.h) \
    $(wildcard include/config/iwmmxt.h) \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/page.h \
    $(wildcard include/config/cpu/copy/v4wt.h) \
    $(wildcard include/config/cpu/copy/v4wb.h) \
    $(wildcard include/config/cpu/copy/feroceon.h) \
    $(wildcard include/config/cpu/copy/fa.h) \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/xscale.h) \
    $(wildcard include/config/cpu/copy/v6.h) \
    $(wildcard include/config/kuser/helpers.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/glue.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/pgtable-2level-types.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/memory.h \
    $(wildcard include/config/need/mach/memory/h.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/phys/offset.h) \
    $(wildcard include/config/xip/kernel.h) \
    $(wildcard include/config/xip/phys/addr.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/sizes.h \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/pfn.h \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/getorder.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/spinlock_types.h \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/debug/spinlock.h) \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/spinlock_types.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/rwlock_types.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/atomic.h \
    $(wildcard include/config/generic/atomic64.h) \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/atomic.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/prefetch.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/processor.h \
    $(wildcard include/config/have/hw/breakpoint.h) \
    $(wildcard include/config/arm/errata/754327.h) \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/hw_breakpoint.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/cmpxchg.h \
    $(wildcard include/config/cpu/sa110.h) \
    $(wildcard include/config/cpu/v6.h) \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/cmpxchg-local.h \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/atomic-long.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/osq_lock.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/idr.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/rcupdate.h \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/rcu/trace.h) \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/rcu/stall/common.h) \
    $(wildcard include/config/no/hz/full.h) \
    $(wildcard include/config/rcu/nocb/cpu.h) \
    $(wildcard include/config/tasks/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/prove/rcu.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/rcu/boost.h) \
    $(wildcard include/config/rcu/nocb/cpu/all.h) \
    $(wildcard include/config/no/hz/full/sysidle.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/spinlock.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  arch/arm/include/generated/asm/preempt.h \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/preempt.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/bottom_half.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/spinlock.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/rwlock.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/spinlock_api_smp.h \
    $(wildcard include/config/inline/spin/lock.h) \
    $(wildcard include/config/inline/spin/lock/bh.h) \
    $(wildcard include/config/inline/spin/lock/irq.h) \
    $(wildcard include/config/inline/spin/lock/irqsave.h) \
    $(wildcard include/config/inline/spin/trylock.h) \
    $(wildcard include/config/inline/spin/trylock/bh.h) \
    $(wildcard include/config/uninline/spin/unlock.h) \
    $(wildcard include/config/inline/spin/unlock/bh.h) \
    $(wildcard include/config/inline/spin/unlock/irq.h) \
    $(wildcard include/config/inline/spin/unlock/irqrestore.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/rwlock_api_smp.h \
    $(wildcard include/config/inline/read/lock.h) \
    $(wildcard include/config/inline/write/lock.h) \
    $(wildcard include/config/inline/read/lock/bh.h) \
    $(wildcard include/config/inline/write/lock/bh.h) \
    $(wildcard include/config/inline/read/lock/irq.h) \
    $(wildcard include/config/inline/write/lock/irq.h) \
    $(wildcard include/config/inline/read/lock/irqsave.h) \
    $(wildcard include/config/inline/write/lock/irqsave.h) \
    $(wildcard include/config/inline/read/trylock.h) \
    $(wildcard include/config/inline/write/trylock.h) \
    $(wildcard include/config/inline/read/unlock.h) \
    $(wildcard include/config/inline/write/unlock.h) \
    $(wildcard include/config/inline/read/unlock/bh.h) \
    $(wildcard include/config/inline/write/unlock/bh.h) \
    $(wildcard include/config/inline/read/unlock/irq.h) \
    $(wildcard include/config/inline/write/unlock/irq.h) \
    $(wildcard include/config/inline/read/unlock/irqrestore.h) \
    $(wildcard include/config/inline/write/unlock/irqrestore.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/bitmap.h \
    $(wildcard include/config/s390.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/string.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/string.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/seqlock.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/completion.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/wait.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/wait.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/ktime.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/math64.h \
    $(wildcard include/config/arch/supports/int128.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/time64.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/time.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/jiffies.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/timex.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/timex.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/param.h \
  arch/arm/include/generated/asm/param.h \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  /home/yumaly/workspace/xilinx_linux/include/uapi/asm-generic/param.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/timex.h \
  include/generated/timeconst.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/timekeeping.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/errno.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/errno.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/rcutree.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/rbtree.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/kobject_ns.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/stat.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/uapi/asm/stat.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/stat.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/uidgid.h \
    $(wildcard include/config/multiuser.h) \
    $(wildcard include/config/user/ns.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/highuid.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/kref.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
    $(wildcard include/config/wq/watchdog.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/timer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/debug/objects/timers.h) \
    $(wildcard include/config/no/hz/common.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/sysctl.h \
    $(wildcard include/config/sysctl.h) \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/sysctl.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/klist.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/pinctrl/devinfo.h \
    $(wildcard include/config/pm.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/pinctrl/consumer.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/seq_file.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/nodemask.h \
    $(wildcard include/config/movable/node.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/fs.h \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/security.h) \
    $(wildcard include/config/cgroup/writeback.h) \
    $(wildcard include/config/ima.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/fs/encryption.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/fs/dax.h) \
    $(wildcard include/config/mandatory/file/locking.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/migration.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/kdev_t.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/kdev_t.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/dcache.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/rculist.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/rculist_bl.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/list_bl.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/bit_spinlock.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/lockref.h \
    $(wildcard include/config/arch/use/cmpxchg/lockref.h) \
  include/generated/bounds.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/stringhash.h \
    $(wildcard include/config/dcache/word/access.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/hash.h \
    $(wildcard include/config/have/arch/hash.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/path.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/list_lru.h \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/slob.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/shrinker.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/radix-tree.h \
    $(wildcard include/config/radix/tree/multiorder.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/pid.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/rwsem.h \
    $(wildcard include/config/rwsem/spin/on/owner.h) \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  arch/arm/include/generated/asm/rwsem.h \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/rwsem.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/capability.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/capability.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/semaphore.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/fiemap.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/migrate_mode.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/percpu-rwsem.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
    $(wildcard include/config/debug/vm/pgflags.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/smp.h \
    $(wildcard include/config/up/late/init.h) \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/smp.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/percpu.h \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/percpu.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/rcu_sync.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/blk_types.h \
    $(wildcard include/config/blk/cgroup.h) \
    $(wildcard include/config/blk/dev/integrity.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/bvec.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/delayed_call.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/fs.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/limits.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/ioctl.h \
  arch/arm/include/generated/asm/ioctl.h \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/ioctl.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/asm-generic/ioctl.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/quota.h \
    $(wildcard include/config/quota/netlink/interface.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/percpu_counter.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/gfp.h \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/zone/device.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/cma.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/zsmalloc.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/page/extension.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/deferred/struct/page/init.h) \
    $(wildcard include/config/transparent/hugepage.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/page-flags-layout.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/memory_hotplug.h \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/notifier.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/srcu.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/topology.h \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
    $(wildcard include/config/sched/smt.h) \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/topology.h \
    $(wildcard include/config/arm/cpu/topology.h) \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/topology.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/dqblk_xfs.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/dqblk_v1.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/dqblk_v2.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/dqblk_qtree.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/projid.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/quota.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/nfs_fs_i.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/fcntl.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/fcntl.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/uapi/asm/fcntl.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/asm-generic/fcntl.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/cred.h \
    $(wildcard include/config/debug/credentials.h) \
    $(wildcard include/config/keys.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/key.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/assoc_array.h \
    $(wildcard include/config/associative/array.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/selinux.h \
    $(wildcard include/config/security/selinux.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/pinctrl/pinctrl-state.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/pm.h \
    $(wildcard include/config/vt/console/sleep.h) \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/ratelimit.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/sched.h \
    $(wildcard include/config/sched/debug.h) \
    $(wildcard include/config/lockup/detector.h) \
    $(wildcard include/config/detect/hung/task.h) \
    $(wildcard include/config/core/dump/default/elf/headers.h) \
    $(wildcard include/config/virt/cpu/accounting/native.h) \
    $(wildcard include/config/sched/autogroup.h) \
    $(wildcard include/config/bsd/process/acct.h) \
    $(wildcard include/config/taskstats.h) \
    $(wildcard include/config/audit.h) \
    $(wildcard include/config/inotify/user.h) \
    $(wildcard include/config/fanotify.h) \
    $(wildcard include/config/posix/mqueue.h) \
    $(wildcard include/config/perf/events.h) \
    $(wildcard include/config/bpf/syscall.h) \
    $(wildcard include/config/sched/info.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/sched/mc.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/rt/group/sched.h) \
    $(wildcard include/config/cgroup/sched.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/compat/brk.h) \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/virt/cpu/accounting/gen.h) \
    $(wildcard include/config/sysvipc.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/ubsan.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/cgroups.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/arch/want/batched/unmap/tlb/flush.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/kcov.h) \
    $(wildcard include/config/uprobes.h) \
    $(wildcard include/config/bcache.h) \
    $(wildcard include/config/vmap/stack.h) \
    $(wildcard include/config/arch/wants/dynamic/task/struct.h) \
    $(wildcard include/config/have/unstable/sched/clock.h) \
    $(wildcard include/config/irq/time/accounting.h) \
    $(wildcard include/config/proc/fs.h) \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/have/copy/thread/tls.h) \
    $(wildcard include/config/have/exit/thread.h) \
    $(wildcard include/config/cpu/freq.h) \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/sched.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/sched/prio.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/mm_types.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/arch/enable/split/pmd/ptlock.h) \
    $(wildcard include/config/have/cmpxchg/double.h) \
    $(wildcard include/config/have/aligned/struct/page.h) \
    $(wildcard include/config/kmemcheck.h) \
    $(wildcard include/config/userfaultfd.h) \
    $(wildcard include/config/pgtable/levels.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mmu/notifier.h) \
    $(wildcard include/config/x86/intel/mpx.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/auxvec.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/auxvec.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/auxvec.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/uapi/asm/auxvec.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/uprobes.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/mmu.h \
    $(wildcard include/config/cpu/has/asid.h) \
    $(wildcard include/config/vdso.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/cputime.h \
  arch/arm/include/generated/asm/cputime.h \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/cputime.h \
    $(wildcard include/config/virt/cpu/accounting.h) \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/cputime_jiffies.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/sem.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/sem.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/ipc.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/ipc.h \
  arch/arm/include/generated/asm/ipcbuf.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/asm-generic/ipcbuf.h \
  arch/arm/include/generated/asm/sembuf.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/asm-generic/sembuf.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/shm.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/shm.h \
  arch/arm/include/generated/asm/shmbuf.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/asm-generic/shmbuf.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/shmparam.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/signal.h \
    $(wildcard include/config/old/sigaction.h) \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/signal.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/signal.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/uapi/asm/signal.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/asm-generic/signal-defs.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/uapi/asm/sigcontext.h \
  arch/arm/include/generated/asm/siginfo.h \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/siginfo.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/asm-generic/siginfo.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
    $(wildcard include/config/have/arch/seccomp/filter.h) \
    $(wildcard include/config/seccomp/filter.h) \
    $(wildcard include/config/checkpoint/restore.h) \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/seccomp.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/rtmutex.h \
    $(wildcard include/config/debug/rt/mutexes.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/resource.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/resource.h \
  arch/arm/include/generated/asm/resource.h \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/resource.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/asm-generic/resource.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/time/low/res.h) \
    $(wildcard include/config/timerfd.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/timerqueue.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/kcov.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/kcov.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/latencytop.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/magic.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/cgroup-defs.h \
    $(wildcard include/config/sock/cgroup/data.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/percpu-refcount.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/cgroup_subsys.h \
    $(wildcard include/config/cgroup/cpuacct.h) \
    $(wildcard include/config/cgroup/device.h) \
    $(wildcard include/config/cgroup/freezer.h) \
    $(wildcard include/config/cgroup/net/classid.h) \
    $(wildcard include/config/cgroup/perf.h) \
    $(wildcard include/config/cgroup/net/prio.h) \
    $(wildcard include/config/cgroup/hugetlb.h) \
    $(wildcard include/config/cgroup/pids.h) \
    $(wildcard include/config/cgroup/debug.h) \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/device.h \
    $(wildcard include/config/dmabounce.h) \
    $(wildcard include/config/iommu/api.h) \
    $(wildcard include/config/arm/dma/use/iommu.h) \
    $(wildcard include/config/arch/omap.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/pm_wakeup.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/mod_devicetable.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/uuid.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/uuid.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/uio_driver.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/interrupt.h \
    $(wildcard include/config/irq/forced/threading.h) \
    $(wildcard include/config/generic/irq/probe.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/irqreturn.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/irqnr.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/irqnr.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/hardirq.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/ftrace_irq.h \
    $(wildcard include/config/ftrace/nmi/enter.h) \
    $(wildcard include/config/hwlat/tracer.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/vtime.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/context_tracking_state.h \
    $(wildcard include/config/context/tracking.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/static_key.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/jump_label.h \
    $(wildcard include/config/jump/label.h) \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/hardirq.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/irq.h \
    $(wildcard include/config/sparse/irq.h) \
    $(wildcard include/config/multi/irq/handler.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/irq_cpustat.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/module.h \
    $(wildcard include/config/modules/tree/lookup.h) \
    $(wildcard include/config/livepatch.h) \
    $(wildcard include/config/module/sig.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/tracepoints.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/module/unload.h) \
    $(wildcard include/config/constructors.h) \
    $(wildcard include/config/debug/set/module/ronx.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/kmod.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/elf.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/elf.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/vdso_datapage.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/user.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/elf.h \
  /home/yumaly/workspace/xilinx_linux/include/uapi/linux/elf-em.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/moduleparam.h \
    $(wildcard include/config/alpha.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/ppc64.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/extable.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/rbtree_latch.h \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/module.h \
    $(wildcard include/config/arm/unwind.h) \
    $(wildcard include/config/arm/module/plts.h) \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/module.h \
    $(wildcard include/config/have/mod/arch/specific.h) \
    $(wildcard include/config/modules/use/elf/rel.h) \
    $(wildcard include/config/modules/use/elf/rela.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/pm_runtime.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/slab.h \
    $(wildcard include/config/debug/slab.h) \
    $(wildcard include/config/failslab.h) \
    $(wildcard include/config/have/hardened/usercopy/allocator.h) \
    $(wildcard include/config/slab.h) \
    $(wildcard include/config/slub.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/kmemleak.h \
    $(wildcard include/config/debug/kmemleak.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/kasan.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/of.h \
    $(wildcard include/config/sparc.h) \
    $(wildcard include/config/of/dynamic.h) \
    $(wildcard include/config/attach/node.h) \
    $(wildcard include/config/detach/node.h) \
    $(wildcard include/config/add/property.h) \
    $(wildcard include/config/remove/property.h) \
    $(wildcard include/config/update/property.h) \
    $(wildcard include/config/of/numa.h) \
    $(wildcard include/config/no/change.h) \
    $(wildcard include/config/change/add.h) \
    $(wildcard include/config/change/remove.h) \
    $(wildcard include/config/of/resolve.h) \
    $(wildcard include/config/of/overlay.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/property.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/fwnode.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/of_platform.h \
    $(wildcard include/config/of/address.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/of_device.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/cpu.h \
    $(wildcard include/config/pm/sleep/smp.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/node.h \
    $(wildcard include/config/memory/hotplug/sparse.h) \
    $(wildcard include/config/hugetlbfs.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/cpuhotplug.h \
  /home/yumaly/workspace/xilinx_linux/include/linux/of_address.h \
    $(wildcard include/config/pci.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/io.h \
    $(wildcard include/config/have/arch/huge/vmap.h) \
    $(wildcard include/config/has/ioport/map.h) \
  /home/yumaly/workspace/xilinx_linux/arch/arm/include/asm/io.h \
    $(wildcard include/config/need/mach/io/h.h) \
    $(wildcard include/config/pcmcia/soc/common.h) \
    $(wildcard include/config/isa.h) \
    $(wildcard include/config/pccard.h) \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  /home/yumaly/workspace/xilinx_linux/include/xen/xen.h \
    $(wildcard include/config/xen.h) \
    $(wildcard include/config/xen/dom0.h) \
    $(wildcard include/config/xen/pvh.h) \
  /home/yumaly/workspace/xilinx_linux/include/asm-generic/io.h \
    $(wildcard include/config/generic/iomap.h) \
    $(wildcard include/config/virt/to/bus.h) \
  /home/yumaly/workspace/xilinx_linux/include/linux/vmalloc.h \

/home/yumaly/workspace/project/driver/uio/uio_pdrv_genirq.o: $(deps_/home/yumaly/workspace/project/driver/uio/uio_pdrv_genirq.o)

$(deps_/home/yumaly/workspace/project/driver/uio/uio_pdrv_genirq.o):
