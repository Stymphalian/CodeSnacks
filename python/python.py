from collections import namedtuple
Point = namedtuple('Point',['x','y'])

if __name__ == "__main__":
	main()


import heapq
heap = []
heapq.heapify(heap)
heapq.heappush(heap,(1,2))
