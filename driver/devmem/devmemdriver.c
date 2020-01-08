/*
 * Simple app to read/write into a custom IP in PL via /dev/mem physical memory
 * interface ( Based on Kjans Tsotnep's app )
 * To compile for arm: make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf-
 */
 
#include <stdio.h>
#include <stdlib.h>   //standard lib
#include <unistd.h>   //to get pagesize
#include <fcntl.h>    //file control: open
#include <sys/mman.h> //to use mmap
 
int main(int argc, char *argv[])
{
    /* References:
        http://man7.org/linux/man-pages/man2/mmap.2.html
        http://man7.org/linux/man-pages/man4/mem.4.html
        http://linux.die.net/man/3/sysconf
        http://man7.org/linux/man-pages/man2/open.2.html
        http://man7.org/linux/man-pages/man2/getpagesize.2.html
        http://stackoverflow.com/questions/3023909/what-is-the-trick-in-paddress-page-size-1-to-get-the-pages-base-address
        http://www.slideshare.net/vitlic/linux-memory
    */

    printf("\nYury Malyshev\n");
  
    if (argc < 3) {
        printf("\n");
        printf("Usage: ./devmemdriver\n");
        printf("   or: ./devmemdriver MEM_ADDR r\n");
        printf("   or: ./devmemdriver MEM_ADDR w VALUE\n");
        printf("If executed without arguments, these usage instructions will be displayed.\n");
        printf("Valid arguments are:\n");
        printf("    MEM_ADDR    This argument, stored into argv[1], specifies the memory\n");
        printf("                address into/from which the command will be executed.\n");
        printf("                This argument can be provided either as a decimal or\n");
        printf("                hexadecimal value.\n");
        printf("    r or w      This argument, stored into argv[2], specifies if data\n");
        printf("                should be read (r) or written (w) from/into the specified\n");
        printf("                memory address.\n");
        printf("    VALUE       In the case of a writing command, this argument, stored\n");
        printf("                into argv[2], specifies the value to be stored into the\n");
        printf("                specified memory address.\n");
        printf("Execution examples:\n");
        printf("    ./devmemdriver\n");
        printf("    ./devmemdriver 0x43C0000C r\n");
        printf("    ./devmemdriver 0x43C00000 w 8\n");
        printf("    ./devmemdriver 1136656384 w 8\n"); //0x43C00000 ???
        printf("\n");
    }
    else {
        // read address from the user input. (If input is in hexadecimal, it 
        // converts it to decimal.
        unsigned address = strtoul(argv[1], NULL, 0);
 
        // read character if it's read or write
        char direction = *argv[2];
 
        // read value to be written // ?
        int value = (direction == 'w') ? atoi(argv[3]) : 0;
 
        // open /dev/mem file
        int fd = open ("/dev/mem", O_RDWR);
        
        if (fd < 1) { perror(argv[0]); return -1; } // Can't read /dev/mem
 
        // get architecture specific page size
        unsigned pageSize = sysconf(_SC_PAGESIZE);
 
        // in this approach, the memory page offset must be considered for 
        // accesing the registers 
        unsigned offset = (address & (~(pageSize-1)));
 
        /* offset of the registers from the page/base address
           0 - Reg 0
           4 - Reg 1
           8 - Reg 2
          12 - Reg 3
        */
        unsigned registerOffset = address - offset;
 
        // pointer to the virtual address space, where physical memory will 
        // be mapped
        void *ptr;
        /**********************************************************************
         * TASK 1: Write a SINGLE LINE COMMAND to map the physical memory     *
         *         into this program's virtual address space. Point to the    *
         *         starting address of the new mapping with the 'ptr' pointer *
         *         (already declared above)                                   *
         **********************************************************************
         * HINT 0: We should let the kernel choose the virtual (page-aligned) *
         *         address at which the mapping will be created.              *
         * HINT 1: For this task, we should map an amount of Bytes according  *
         *         to all the registers of our IP                             *
         **********************************************************************/

        // WRITE YOUR SINGLE LINE COMMAND IN HERE //////////////////////////////
	//void *mmap(void *addr, size_t length, int prot, int flags,
	//                  int fd, off_t offset);
        ptr = mmap(NULL, sizeof(unsigned)*4/*0x0010000*/, (PROT_READ | PROT_WRITE), MAP_SHARED, fd, offset);
        ////////////////////////////////////////////////////////////////////////
 
        if (direction == 'r') {
            // reading value from device register
            value = *((unsigned *)(ptr + registerOffset));
            printf("> From address 0x%08X, read value: %d\n", address, value);
        } else {
            /******************************************************************
             * TASK 2: Write a SINGLE LINE COMMAND that into the specified    *
             *         register of our IP                                     *
             ******************************************************************
             * HINT 0: You can base your code on the syntax used for reading  *
             ******************************************************************/

            // WRITE YOUR SINGLE LINE COMMAND IN HERE //////////////////////////
	    *((unsigned *)(ptr + registerOffset)) = value;
            ////////////////////////////////////////////////////////////////////
        }
 
        // delete mapping
        munmap(ptr, pageSize);
    }
    return 0;
}
