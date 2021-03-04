#include "linux/init.h"
#include "linux/module.h"
#include "linux/kernel.h"

static int __init simple_init(void)
{
    printk(KERN_INFO "Simple loaded\n");
    return 0;
}

static void __exit simple_exit(void)
{
    printk(KERN_INFO "Simple unloaded\n");
    return;
}

module_init(simple_init);
module_exit(simple_exit);

MODULE_LICENSE("GPL")
MODULE_AUTHOR("agent_denton")
MODULE_DESCRIPTION("simple driver")
