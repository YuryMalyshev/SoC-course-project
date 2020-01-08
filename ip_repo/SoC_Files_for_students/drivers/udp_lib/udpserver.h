/*
 * Simple UDP broadcast server.
 * Authors: Karl Janson, Keijo Lass
 */

#ifndef UDPCLIENT_H
#define UDPCLIENT_H

/*
 * Header file for the simple UDP broadcast server.
 * Authors: Karl Janson, Keijo Lass
 */



/*
 * Sets up UDP broadcast server.
 *
 * @param:
 * char *broadcast_address: Address to use for data broadcast
 * int broadcast_port: Port to use for data broadcast
 *
 * @return:
 * Error code: 0 - normal exit, 1 - error
 */
int udp_server_setup(char *broadcast_address, int broadcast_port);



/*
 * Send data over UDP.
 *
 * @param:
 * unsigned *buffer: Pointer to the data to be sent
 * int buffer_size: Number of bytes to send
 *
 * @return:
 * Error code: 0 - normal exit, 1 - error
 */
int udp_server_send(int16_t *buffer,int buffer_size);

#endif
