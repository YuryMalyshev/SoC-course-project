/*
* Simple app to read/write into custom IP in PL via /dev/uoi0 interface
* To compile for arm: make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf-
* ( Based on Kjans Tsotnep's app )
*/

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <stdint.h>
#include <string.h>
#include <pthread.h> //POSIX threads
#include <unistd.h> //sleep
#include "udpclient.h"
#include <fcntl.h> 
#include <sys/stat.h> 
#include <sys/types.h> 

#define FILTER_IIR_S00_AXI_SLV_REG0_OFFSET *((unsigned *)(filterptr0 + 0))
#define FILTER_IIR_S00_AXI_SLV_REG1_OFFSET *((unsigned *)(filterptr0 + 4))
#define FILTER_IIR_S00_AXI_SLV_REG2_OFFSET *((unsigned *)(filterptr0 + 8))
#define FILTER_IIR_S00_AXI_SLV_REG3_OFFSET *((unsigned *)(filterptr0 + 12))
#define FILTER_IIR_S00_AXI_SLV_REG4_OFFSET *((unsigned *)(filterptr0 + 16))
#define FILTER_IIR_S00_AXI_SLV_REG5_OFFSET *((unsigned *)(filterptr0 + 20))
#define FILTER_IIR_S00_AXI_SLV_REG6_OFFSET *((unsigned *)(filterptr0 + 24))
#define FILTER_IIR_S00_AXI_SLV_REG7_OFFSET *((unsigned *)(filterptr0 + 28))
#define FILTER_IIR_S00_AXI_SLV_REG8_OFFSET *((unsigned *)(filterptr0 + 32))
#define FILTER_IIR_S00_AXI_SLV_REG9_OFFSET *((unsigned *)(filterptr0 + 36))
#define FILTER_IIR_S00_AXI_SLV_REG10_OFFSET *((unsigned *)(filterptr0 + 40))
#define FILTER_IIR_S00_AXI_SLV_REG11_OFFSET *((unsigned *)(filterptr0 + 44))
#define FILTER_IIR_S00_AXI_SLV_REG12_OFFSET *((unsigned *)(filterptr0 + 48))
#define FILTER_IIR_S00_AXI_SLV_REG13_OFFSET *((unsigned *)(filterptr0 + 52))
#define FILTER_IIR_S00_AXI_SLV_REG14_OFFSET *((unsigned *)(filterptr0 + 56))
#define FILTER_IIR_S00_AXI_SLV_REG15_OFFSET *((unsigned *)(filterptr0 + 60))
#define FILTER_IIR_S00_AXI_SLV_REG16_OFFSET *((unsigned *)(filterptr0 + 64))
#define FILTER_IIR_S00_AXI_SLV_REG17_OFFSET *((unsigned *)(filterptr0 + 68))
#define FILTER_IIR_S00_AXI_SLV_REG18_OFFSET *((unsigned *)(filterptr0 + 72))
#define FILTER_IIR_S00_AXI_SLV_REG19_OFFSET *((unsigned *)(filterptr0 + 76))


#define VOLUME_PREGAIN_S00_AXI_SLV_REG0_OFFSET *((unsigned *)(volumeptr0 + 0))
#define VOLUME_PREGAIN_S00_AXI_SLV_REG1_OFFSET *((unsigned *)(volumeptr0 + 4))
#define VOLUME_PREGAIN_S00_AXI_SLV_REG2_OFFSET *((unsigned *)(volumeptr0 + 8))
#define VOLUME_PREGAIN_S00_AXI_SLV_REG3_OFFSET *((unsigned *)(volumeptr0 + 12))


#define FILTER_IIR_S01_AXI_SLV_REG0_OFFSET *((unsigned *)(filterptr1 + 0))
#define FILTER_IIR_S01_AXI_SLV_REG1_OFFSET *((unsigned *)(filterptr1 + 4))
#define FILTER_IIR_S01_AXI_SLV_REG2_OFFSET *((unsigned *)(filterptr1 + 8))
#define FILTER_IIR_S01_AXI_SLV_REG3_OFFSET *((unsigned *)(filterptr1 + 12))
#define FILTER_IIR_S01_AXI_SLV_REG4_OFFSET *((unsigned *)(filterptr1 + 16))
#define FILTER_IIR_S01_AXI_SLV_REG5_OFFSET *((unsigned *)(filterptr1 + 20))
#define FILTER_IIR_S01_AXI_SLV_REG6_OFFSET *((unsigned *)(filterptr1 + 24))
#define FILTER_IIR_S01_AXI_SLV_REG7_OFFSET *((unsigned *)(filterptr1 + 28))
#define FILTER_IIR_S01_AXI_SLV_REG8_OFFSET *((unsigned *)(filterptr1 + 32))
#define FILTER_IIR_S01_AXI_SLV_REG9_OFFSET *((unsigned *)(filterptr1 + 36))
#define FILTER_IIR_S01_AXI_SLV_REG10_OFFSET *((unsigned *)(filterptr1 + 40))
#define FILTER_IIR_S01_AXI_SLV_REG11_OFFSET *((unsigned *)(filterptr1 + 44))
#define FILTER_IIR_S01_AXI_SLV_REG12_OFFSET *((unsigned *)(filterptr1 + 48))
#define FILTER_IIR_S01_AXI_SLV_REG13_OFFSET *((unsigned *)(filterptr1 + 52))
#define FILTER_IIR_S01_AXI_SLV_REG14_OFFSET *((unsigned *)(filterptr1 + 56))
#define FILTER_IIR_S01_AXI_SLV_REG15_OFFSET *((unsigned *)(filterptr1 + 60))
#define FILTER_IIR_S01_AXI_SLV_REG16_OFFSET *((unsigned *)(filterptr1 + 64))
#define FILTER_IIR_S01_AXI_SLV_REG17_OFFSET *((unsigned *)(filterptr1 + 68))
#define FILTER_IIR_S01_AXI_SLV_REG18_OFFSET *((unsigned *)(filterptr1 + 72))
#define FILTER_IIR_S01_AXI_SLV_REG19_OFFSET *((unsigned *)(filterptr1 + 76))


#define VOLUME_PREGAIN_S01_AXI_SLV_REG0_OFFSET *((unsigned *)(volumeptr1 + 0))
#define VOLUME_PREGAIN_S01_AXI_SLV_REG1_OFFSET *((unsigned *)(volumeptr1 + 4))
#define VOLUME_PREGAIN_S01_AXI_SLV_REG2_OFFSET *((unsigned *)(volumeptr1 + 8))
#define VOLUME_PREGAIN_S01_AXI_SLV_REG3_OFFSET *((unsigned *)(volumeptr1 + 12))


#define LED_S00_AXI_SLV_BASE *((unsigned *)(ledptr + 0))
#define ON 1
#define OFF 0
#define LED0VAL LED0*1
#define LED1VAL LED1*2
#define LED2VAL LED2*4
#define LED5VAL LED5*32
#define LED6VAL LED6*64
#define LED7VAL LED7*128

#define STREAM_S00_AXI_SLV_REG0_OFFSET *((unsigned *)(streamptr + 0))

#define SIZE 16384
#define WAIT_UNTIL 12288

 
//int udp_client_recv(unsigned *buffer,int buffer_size );

void *streamReceiver();
void *streamSender();
unsigned getLEDvalue(unsigned char LED0, unsigned char LED1, unsigned char LED2,
                unsigned char LED5, unsigned char LED6, unsigned char LED7);

void wait();
void updateFilterState();

short readFIFO();
short writeFIFO(short val);

short fifo_buffer[SIZE];
unsigned head = 0;
unsigned tail = 0;
unsigned count = 0;
char readyToRead = 0;
pthread_mutex_t mutex1 = PTHREAD_MUTEX_INITIALIZER;

//int fdfifo; 
//char * streamFifo = "/tmp/streamFifo"; 
int run = 1;
short filterStates[6];

void *filterptr0;
void *filterptr1; 


int main(int argc, char *argv[])
{
    printf("Yury Malyshev\n"); 
    
    //prepare UDP
    udp_client_setup("10.255.255.255", 7891);
    //Create streamFifo and open the file
    //mkfifo(streamFifo, 0666); 
    //fdfifo = open(streamFifo, O_RDWR); 
    
    //open other files
    printf("open the interrupt handling file for filter\n");
    int fdfilter0 = open ("/dev/uio1", O_RDWR);
    if (fdfilter0 < 1) { printf("ERROR\n"); perror(argv[0]); return -1; }
	
	printf("open the interrupt handling file for filter\n");
    int fdfilter1 = open ("/dev/uio3", O_RDWR);
    if (fdfilter1 < 1) { printf("ERROR\n"); perror(argv[0]); return -1; }
    
    printf("open the interrupt handling file for volume control\n");
    int fdvolume0 = open ("/dev/uio2", O_RDWR);
    if (fdvolume0 < 1) { perror(argv[0]); return -1; }
	
	printf("open the interrupt handling file for volume control\n");
    int fdvolume1 = open ("/dev/uio4", O_RDWR);
    if (fdvolume1 < 1) { perror(argv[0]); return -1; }
    
    printf("open the file for led control\n");
    int fdled = open ("/dev/uio0", O_RDWR);
    if (fdled < 1) { perror(argv[0]); return -1; }
    
    //get pageSize (not really needed)
    printf("get architecture specific page size\n");
    unsigned pageSize = sysconf(_SC_PAGESIZE);
    
    //setup pointers for filter and volume
    filterptr0 = mmap(NULL, sizeof(unsigned)*20/*0x0010000*/, (PROT_READ | PROT_WRITE), MAP_SHARED, fdfilter0, /*pageSize**/0);
	 
    filterptr1 = mmap(NULL, sizeof(unsigned)*20/*0x0010000*/, (PROT_READ | PROT_WRITE), MAP_SHARED, fdfilter1, /*pageSize**/0);
    
    void *volumeptr0; 
    volumeptr0 = mmap(NULL, sizeof(unsigned)*4/*0x0010000*/, (PROT_READ | PROT_WRITE), MAP_SHARED, fdvolume0, /*pageSize**/0);
	
	void *volumeptr1; 
    volumeptr1 = mmap(NULL, sizeof(unsigned)*4/*0x0010000*/, (PROT_READ | PROT_WRITE), MAP_SHARED, fdvolume1, /*pageSize**/0);
    
    void *ledptr; 
    ledptr = mmap(NULL, sizeof(unsigned)*8/*0x0010000*/, PROT_WRITE, MAP_SHARED, fdled, /*pageSize**/0);
    
    //enable interrupts for filter and volume
    int IRQEnable = 1; 
    printf("Trying to write...\n");
    write(fdfilter0, &IRQEnable, sizeof(int));
    write(fdvolume0, &IRQEnable, sizeof(int));
    
    //initialize threads
    pthread_t thread1, thread2;
    //and start them
    pthread_create( &thread1, NULL, &streamReceiver, NULL);
    pthread_create( &thread2, NULL, &streamSender, NULL);
    
    //setup filter 0
    //FILTER_IIR_S00_AXI_SLV_REG15_OFFSET = 1;
    
    FILTER_IIR_S00_AXI_SLV_REG0_OFFSET = 0x00002CB6;
    FILTER_IIR_S00_AXI_SLV_REG1_OFFSET = 0x0000596C;
    FILTER_IIR_S00_AXI_SLV_REG2_OFFSET = 0x00002CB6;
    FILTER_IIR_S00_AXI_SLV_REG3_OFFSET = 0x8097A63A;
    FILTER_IIR_S00_AXI_SLV_REG4_OFFSET = 0x3F690C9D;

    FILTER_IIR_S00_AXI_SLV_REG5_OFFSET = 0x074D9236;
    FILTER_IIR_S00_AXI_SLV_REG6_OFFSET = 0x00000000;
    FILTER_IIR_S00_AXI_SLV_REG7_OFFSET = 0xF8B26DCA;
    FILTER_IIR_S00_AXI_SLV_REG8_OFFSET = 0x9464B81B;
    FILTER_IIR_S00_AXI_SLV_REG9_OFFSET = 0x3164DB93;

    FILTER_IIR_S00_AXI_SLV_REG10_OFFSET = 0x12BEC333;
    FILTER_IIR_S00_AXI_SLV_REG11_OFFSET = 0xDA82799A;
    FILTER_IIR_S00_AXI_SLV_REG12_OFFSET = 0x12BEC333;
    FILTER_IIR_S00_AXI_SLV_REG13_OFFSET = 0x00000000;
    FILTER_IIR_S00_AXI_SLV_REG14_OFFSET = 0x0AFB0CCC;
    
    FILTER_IIR_S00_AXI_SLV_REG16_OFFSET = 0;
	
	//setup filter 1
    //FILTER_IIR_S01_AXI_SLV_REG15_OFFSET = 1;
    
    FILTER_IIR_S01_AXI_SLV_REG0_OFFSET = 0x00002CB6;
    FILTER_IIR_S01_AXI_SLV_REG1_OFFSET = 0x0000596C;
    FILTER_IIR_S01_AXI_SLV_REG2_OFFSET = 0x00002CB6;
    FILTER_IIR_S01_AXI_SLV_REG3_OFFSET = 0x8097A63A;
    FILTER_IIR_S01_AXI_SLV_REG4_OFFSET = 0x3F690C9D;

    FILTER_IIR_S01_AXI_SLV_REG5_OFFSET = 0x074D9236;
    FILTER_IIR_S01_AXI_SLV_REG6_OFFSET = 0x00000000;
    FILTER_IIR_S01_AXI_SLV_REG7_OFFSET = 0xF8B26DCA;
    FILTER_IIR_S01_AXI_SLV_REG8_OFFSET = 0x9464B81B;
    FILTER_IIR_S01_AXI_SLV_REG9_OFFSET = 0x3164DB93;

    FILTER_IIR_S01_AXI_SLV_REG10_OFFSET = 0x12BEC333;
    FILTER_IIR_S01_AXI_SLV_REG11_OFFSET = 0xDA82799A;
    FILTER_IIR_S01_AXI_SLV_REG12_OFFSET = 0x12BEC333;
    FILTER_IIR_S01_AXI_SLV_REG13_OFFSET = 0x00000000;
    FILTER_IIR_S01_AXI_SLV_REG14_OFFSET = 0x0AFB0CCC;
    
    FILTER_IIR_S01_AXI_SLV_REG16_OFFSET = 0;
    
    updateFilterState();
    
	
	unsigned factor = 41;
	unsigned volumeLocal = 256;
	unsigned volumeStream = 256;
	int volLLocal = 100;
	int volRLocal = 100;
	int volLStream = 100;
	int volRStream = 100;
	

    while(run)
    {
        char cmd[16];
		
		system("clear");		
		
		printf("Enter command ['help' to show all available, 'exit' to close]: ");
		scanf("%s", cmd);
		
		if(strcmp(cmd, "help") == 0)
		{
			printf("1) 'filter' changes filter settings\n"
				  "2) 'volume' sets volume\n'"
				  "3) 'balance' changes sound balance between left and right channels\n"
				  "4) 'help' shows all available commands\n"
				  "5) 'exit' closes the application\n");
			wait();
		}
		else if(strcmp(cmd, "filter") == 0)
		{
			int filter;
			int state;
			while(1)
			{
				printf("Select filter ['high', 'band', 'low'] and state ['1', '0']: ");
				scanf("%s %d", cmd, &state);
				state = state == 0 ? OFF : ON;
				if(strcmp(cmd, "high") == 0)
				{
					filter = 2;
					break;
				}
				else if(strcmp(cmd, "band") == 0)
				{
					filter = 1;
					break;
				}
				else if(strcmp(cmd, "low") == 0)
				{
					filter = 0;
					break;
				}
				else
				{
					printf("Command not found!\n");
				}
			}
			while(1)
			{
				printf("Select audio stream ('local' or 'online') or 'cancel': ");
				scanf("%s", cmd);
				if(strcmp(cmd, "local") == 0)
				{
					filterStates[0*3+filter] = state;
					updateFilterState();
					break;
				}
				else if(strcmp(cmd, "online") == 0)
				{
					filterStates[1*3+filter] = state;
					updateFilterState();
					break;
				}
				else if(strcmp(cmd, "cancel") == 0)
				{
					break;
				}
				else
				{
					printf("Command not found!\n");
				}
			}
            LED_S00_AXI_SLV_BASE = getLEDvalue(filterStates[0],filterStates[1],filterStates[2],filterStates[3],filterStates[4],filterStates[5]);
            wait();
		}
		else if(strcmp(cmd, "volume") == 0)
		{
			int volume;
			printf("Enter value for volume [0;100]: ");
			scanf("%d", &volume);
			while(1)
			{
				printf("Select audio stream ('local' or 'online') or 'cancel': ");
				scanf("%s", cmd);
				if(strcmp(cmd, "local") == 0)
				{
					volumeLocal = volume*factor;
					VOLUME_PREGAIN_S00_AXI_SLV_REG0_OFFSET = volumeLocal*volRLocal/100;
					VOLUME_PREGAIN_S00_AXI_SLV_REG1_OFFSET = volumeLocal*volLLocal/100;
					wait();
					break;
				}
				else if(strcmp(cmd, "online") == 0)
				{
					volumeStream = volume*factor;
					VOLUME_PREGAIN_S01_AXI_SLV_REG0_OFFSET = volumeStream*volRStream/100;
					VOLUME_PREGAIN_S01_AXI_SLV_REG1_OFFSET = volumeStream*volLStream/100;
					wait();
					break;
				}
				else if(strcmp(cmd, "cancel") == 0)
				{
					break;
				}
				else
				{
					printf("Command not found!\n");
				}
			}
		}
		else if(strcmp(cmd, "balance") == 0)
		{
			printf("Enter value [-100 (Only Left CH) ;100(Only Right CH)]:  ");
			int value;
			scanf("%d", &value);
			int valL = value-100 < -100 ? 100 : abs(value-100);
			int valR = value+100 > 100 ? 100 : value+100;
			
			while(1)
			{
				printf("Select audio stream ('local' or 'online') or 'cancel': ");
				scanf("%s", cmd);
				if(strcmp(cmd, "local") == 0)
				{
					volLLocal = valL;
					volRLocal = valR;
					VOLUME_PREGAIN_S00_AXI_SLV_REG0_OFFSET = volumeLocal*volRLocal/100;
					VOLUME_PREGAIN_S00_AXI_SLV_REG1_OFFSET = volumeLocal*volLLocal/100;
					wait();
					break;
				}
				else if(strcmp(cmd, "online") == 0)
				{
					volLStream = valL;
					volRStream = valR;
					VOLUME_PREGAIN_S01_AXI_SLV_REG0_OFFSET = volumeStream*volRStream/100;
					VOLUME_PREGAIN_S01_AXI_SLV_REG1_OFFSET = volumeStream*volLStream/100;
					wait();
					break;
				}
				else if(strcmp(cmd, "cancel") == 0)
				{
					break;
				}
				else
				{
					printf("Command not found!\n");
				}
			}
		}
		else if(strcmp(cmd, "exit") == 0)
		{
            printf("Exiting...\n");
			run = 0;
		}
		else
		{
			printf("Command not found! ['help' to show all available, 'exit' to close]: ");
			wait();
		}
		
		      
    }
    
    printf("waiting until threads are done...\n");
    pthread_join( thread1, NULL);
    pthread_join( thread2, NULL);
    
    printf("Unmapping\n");
    //unmap
    munmap(filterptr0, pageSize);
    munmap(volumeptr0, pageSize);
	munmap(filterptr1, pageSize);
    munmap(volumeptr1, pageSize);
    munmap(ledptr, pageSize);
    

    //close
    //close(fdfifo); 
    fclose(stdout);
    return 0;
}

void wait()
{
	printf("Press ENTER key to Continue\n");  
	getchar();
    getchar();
}


void *streamReceiver()
{
    short buffer[512];
    while(run)
    {
        int success = udp_client_recv(buffer, sizeof(buffer) );
        if(success == 0)
        {
			for(int i = 0; i < 512; i++)
			{
				pthread_mutex_lock( &mutex1 );
				writeFIFO(buffer[i]);
				pthread_mutex_unlock( &mutex1 );
			}
        }
        else
        {
            printf("[WARNING] Didn't get a packet!\n");
        }
    }
}

void *streamSender()
{
    printf("open the file for the stream\n");
    int fdstream = open ("/dev/uio5", O_RDWR);
    if (fdstream < 1) { printf("ERROR\n"); run = 0;}
    
    //enable the interrupt
    int IRQEnable = 1; 
    
    
    void *streamptr; 
    streamptr = mmap(NULL, sizeof(unsigned)*1, (PROT_READ | PROT_WRITE), MAP_SHARED, fdstream, 0);
    
    //enable interrupt
    write(fdstream, &IRQEnable, sizeof(int));
    while(run)
    {
		//read FIFO (returns 0 if empty)
		pthread_mutex_lock( &mutex1 );
		unsigned newVal = readFIFO();
		pthread_mutex_unlock( &mutex1 );
        //wait for interrupt
        for(char i = 0; i < 3; i++)
        {
            read(fdstream, NULL, sizeof(int));
            //write to fpga
            STREAM_S00_AXI_SLV_REG0_OFFSET = newVal;
            //enable interrupt
            write(fdstream, &IRQEnable, sizeof(int));
        }        
    }
    munmap(streamptr, sysconf(_SC_PAGESIZE));
}

unsigned getLEDvalue(unsigned char LED0, unsigned char LED1, unsigned char LED2,
                unsigned char LED5, unsigned char LED6, unsigned char LED7)
{
    unsigned val = 0;
    val += LED0VAL;
    val += LED1VAL;
    val += LED2VAL;
    val += LED5VAL;
    val += LED6VAL;
    val += LED7VAL;
    return val;
}

void updateFilterState()
{
	FILTER_IIR_S00_AXI_SLV_REG17_OFFSET = filterStates[0];
	FILTER_IIR_S00_AXI_SLV_REG18_OFFSET = filterStates[1];
	FILTER_IIR_S00_AXI_SLV_REG19_OFFSET = filterStates[2];
	FILTER_IIR_S01_AXI_SLV_REG17_OFFSET = filterStates[3];
	FILTER_IIR_S01_AXI_SLV_REG18_OFFSET = filterStates[4];
	FILTER_IIR_S01_AXI_SLV_REG19_OFFSET = filterStates[5];
}

short readFIFO()
{
	if(readyToRead == 1)
	{
		if(count == 0)
		{
			readyToRead = 0;
			//printf("e\n");
			return 0;
		}
	}
	else
	{
		if(count >= WAIT_UNTIL)
		{
			readyToRead = 1;
		}
		else
		{
			//printf("%u\n", count);
			return 0;
		}
	}
	short val = fifo_buffer[tail];
	count--;
	tail++;
	if(tail == SIZE)
	{
		tail = 0;
	}
	return val;
}


short writeFIFO(short val)
{
	if(count == SIZE)
	{
		return -1;
	}
	fifo_buffer[head] = val;
	count++;
	head++;
	if(head == SIZE)
	{
		head = 0;
	}
	return 0;
}

