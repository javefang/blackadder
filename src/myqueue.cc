#include "myqueue.hh"

CLICK_DECLS

myqueue::myqueue() {
  
}

myqueue::~myqueue() {

}

bool myqueue::empty() {
  return pkt_queue.empty();
}

WritablePacket* myqueue::front() {
  return pkt_queue.front();
}

void myqueue::pop() {
  pkt_queue.pop_front();
}

void myqueue::push(WritablePacket *pkt) {
  pkt_queue.push_back(pkt);
}

void myqueue::clear() {
  pkt_queue.clear();
}

CLICK_ENDDECLS
ELEMENT_PROVIDES(myqueue)
