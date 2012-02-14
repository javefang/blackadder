#ifndef CLICK_MYQUEUE_HH
#define CLICK_MYQUEUE_HH

#include <common.hh>
#include <click/vector.hh>
#include <click/packet.hh>

CLICK_DECLS

class myqueue {
public:
  /* constructor */
  myqueue();
  
  /* destructor */
  ~myqueue();
  
  /* remove all items from the queue */
  bool empty();

  /* take the first item on the queue */
  WritablePacket *front();

  /* take the last item from the queue */
  void pop();

  void push(WritablePacket *pkt);

  void clear();
private:
  Vector<WritablePacket *> pkt_queue;
};
  
CLICK_ENDDECLS
#endif
