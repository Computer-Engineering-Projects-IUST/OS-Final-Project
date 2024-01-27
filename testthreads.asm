
_testthreads:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  if (num) lock_release(lk);
  exit();
}

int main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	56                   	push   %esi
   e:	53                   	push   %ebx
    lock_init(lk);
    int arg1 = 0, arg2 = 1;

    printf(1, "Test 1: Two threads with lock, one without:\n");
    thread_create(&f1, (void *)&arg1, (void *)&arg2); // Thread with lock
   f:	8d 75 e4             	lea    -0x1c(%ebp),%esi
  12:	8d 5d e0             	lea    -0x20(%ebp),%ebx
{
  15:	51                   	push   %ecx
  16:	83 ec 28             	sub    $0x28,%esp
    lock_init(lk);
  19:	ff 35 d4 0f 00 00    	push   0xfd4
  1f:	e8 8c 05 00 00       	call   5b0 <lock_init>
    printf(1, "Test 1: Two threads with lock, one without:\n");
  24:	58                   	pop    %eax
  25:	5a                   	pop    %edx
  26:	68 4c 0b 00 00       	push   $0xb4c
  2b:	6a 01                	push   $0x1
    int arg1 = 0, arg2 = 1;
  2d:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  34:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
    printf(1, "Test 1: Two threads with lock, one without:\n");
  3b:	e8 20 07 00 00       	call   760 <printf>
    thread_create(&f1, (void *)&arg1, (void *)&arg2); // Thread with lock
  40:	83 c4 0c             	add    $0xc,%esp
  43:	56                   	push   %esi
  44:	53                   	push   %ebx
  45:	68 30 01 00 00       	push   $0x130
  4a:	e8 11 05 00 00       	call   560 <thread_create>
    thread_create(&f2, (void *)&arg1, (void *)&arg2); // Thread with lock
  4f:	83 c4 0c             	add    $0xc,%esp
  52:	56                   	push   %esi
  53:	53                   	push   %ebx
  54:	68 d0 01 00 00       	push   $0x1d0
  59:	e8 02 05 00 00       	call   560 <thread_create>
    arg1 = 0;
    thread_create(&f3, (void *)&arg1, (void *)&arg2); // Thread without lock
  5e:	83 c4 0c             	add    $0xc,%esp
    arg1 = 0;
  61:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    thread_create(&f3, (void *)&arg1, (void *)&arg2); // Thread without lock
  68:	56                   	push   %esi
  69:	53                   	push   %ebx
  6a:	68 70 02 00 00       	push   $0x270
  6f:	e8 ec 04 00 00       	call   560 <thread_create>
    thread_join();
  74:	e8 17 05 00 00       	call   590 <thread_join>
    thread_join();
  79:	e8 12 05 00 00       	call   590 <thread_join>
    thread_join();
  7e:	e8 0d 05 00 00       	call   590 <thread_join>

    arg1 = 1;
    printf(1, "Test 2: One thread with lock, two without:\n");
  83:	59                   	pop    %ecx
  84:	58                   	pop    %eax
  85:	68 7c 0b 00 00       	push   $0xb7c
  8a:	6a 01                	push   $0x1
    arg1 = 1;
  8c:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
    printf(1, "Test 2: One thread with lock, two without:\n");
  93:	e8 c8 06 00 00       	call   760 <printf>
    thread_create(&f1, (void *)&arg1, (void *)&arg2); // Thread with lock
  98:	83 c4 0c             	add    $0xc,%esp
  9b:	56                   	push   %esi
  9c:	53                   	push   %ebx
  9d:	68 30 01 00 00       	push   $0x130
  a2:	e8 b9 04 00 00       	call   560 <thread_create>
    arg1 = 0;
    thread_create(&f2, (void *)&arg1, (void *)&arg2); // Thread without lock
  a7:	83 c4 0c             	add    $0xc,%esp
    arg1 = 0;
  aa:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    thread_create(&f2, (void *)&arg1, (void *)&arg2); // Thread without lock
  b1:	56                   	push   %esi
  b2:	53                   	push   %ebx
  b3:	68 d0 01 00 00       	push   $0x1d0
  b8:	e8 a3 04 00 00       	call   560 <thread_create>
    thread_create(&f3, (void *)&arg1, (void *)&arg2); // Thread without lock
  bd:	83 c4 0c             	add    $0xc,%esp
  c0:	56                   	push   %esi
  c1:	53                   	push   %ebx
  c2:	68 70 02 00 00       	push   $0x270
  c7:	e8 94 04 00 00       	call   560 <thread_create>
    thread_join();
  cc:	e8 bf 04 00 00       	call   590 <thread_join>
    thread_join();
  d1:	e8 ba 04 00 00       	call   590 <thread_join>
    thread_join();
  d6:	e8 b5 04 00 00       	call   590 <thread_join>

    printf(1, "Test 3: Sequential print statements:\n");
  db:	58                   	pop    %eax
  dc:	5a                   	pop    %edx
  dd:	68 a8 0b 00 00       	push   $0xba8
  e2:	6a 01                	push   $0x1
  e4:	e8 77 06 00 00       	call   760 <printf>
    thread_create(&f1, (void *)&arg1, (void *)&arg2);
  e9:	83 c4 0c             	add    $0xc,%esp
  ec:	56                   	push   %esi
  ed:	53                   	push   %ebx
  ee:	68 30 01 00 00       	push   $0x130
  f3:	e8 68 04 00 00       	call   560 <thread_create>
    thread_create(&f2, (void *)&arg1, (void *)&arg2);
  f8:	83 c4 0c             	add    $0xc,%esp
  fb:	56                   	push   %esi
  fc:	53                   	push   %ebx
  fd:	68 d0 01 00 00       	push   $0x1d0
 102:	e8 59 04 00 00       	call   560 <thread_create>
    thread_create(&f3, (void *)&arg1, (void *)&arg2);
 107:	83 c4 0c             	add    $0xc,%esp
 10a:	56                   	push   %esi
 10b:	53                   	push   %ebx
 10c:	68 70 02 00 00       	push   $0x270
 111:	e8 4a 04 00 00       	call   560 <thread_create>
    thread_join();
 116:	e8 75 04 00 00       	call   590 <thread_join>
    thread_join();
 11b:	e8 70 04 00 00       	call   590 <thread_join>
    thread_join();
 120:	e8 6b 04 00 00       	call   590 <thread_join>

    exit();
 125:	e8 cb 04 00 00       	call   5f5 <exit>
 12a:	66 90                	xchg   %ax,%ax
 12c:	66 90                	xchg   %ax,%ax
 12e:	66 90                	xchg   %ax,%ax

00000130 <f1>:
void f1(void* argument1, void* argument2) {
 130:	55                   	push   %ebp
 131:	89 e5                	mov    %esp,%ebp
 133:	83 ec 08             	sub    $0x8,%esp
  if (num) lock_acquire(lk);
 136:	8b 45 08             	mov    0x8(%ebp),%eax
 139:	8b 08                	mov    (%eax),%ecx
 13b:	85 c9                	test   %ecx,%ecx
 13d:	75 37                	jne    176 <f1+0x46>
  printf(1, "Function 1 is printing: %s\n", num ? "first" : "whenever");
 13f:	50                   	push   %eax
 140:	68 c6 0a 00 00       	push   $0xac6
 145:	68 8e 0a 00 00       	push   $0xa8e
 14a:	6a 01                	push   $0x1
 14c:	e8 0f 06 00 00       	call   760 <printf>
  printf(1, "Function 1 sleep for %d ms\n", SLEEP_TIME);
 151:	83 c4 0c             	add    $0xc,%esp
 154:	6a 0a                	push   $0xa
 156:	68 aa 0a 00 00       	push   $0xaaa
 15b:	6a 01                	push   $0x1
 15d:	e8 fe 05 00 00       	call   760 <printf>
  sleep(SLEEP_TIME);
 162:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 169:	e8 17 05 00 00       	call   685 <sleep>
 16e:	83 c4 10             	add    $0x10,%esp
  exit();
 171:	e8 7f 04 00 00       	call   5f5 <exit>
  if (num) lock_acquire(lk);
 176:	83 ec 0c             	sub    $0xc,%esp
 179:	ff 35 d4 0f 00 00    	push   0xfd4
 17f:	e8 3c 04 00 00       	call   5c0 <lock_acquire>
  printf(1, "Function 1 is printing: %s\n", num ? "first" : "whenever");
 184:	83 c4 0c             	add    $0xc,%esp
 187:	68 88 0a 00 00       	push   $0xa88
 18c:	68 8e 0a 00 00       	push   $0xa8e
 191:	6a 01                	push   $0x1
 193:	e8 c8 05 00 00       	call   760 <printf>
  printf(1, "Function 1 sleep for %d ms\n", SLEEP_TIME);
 198:	83 c4 0c             	add    $0xc,%esp
 19b:	6a 0a                	push   $0xa
 19d:	68 aa 0a 00 00       	push   $0xaaa
 1a2:	6a 01                	push   $0x1
 1a4:	e8 b7 05 00 00       	call   760 <printf>
  sleep(SLEEP_TIME);
 1a9:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 1b0:	e8 d0 04 00 00       	call   685 <sleep>
  if (num) lock_release(lk);
 1b5:	5a                   	pop    %edx
 1b6:	ff 35 d4 0f 00 00    	push   0xfd4
 1bc:	e8 1f 04 00 00       	call   5e0 <lock_release>
 1c1:	83 c4 10             	add    $0x10,%esp
 1c4:	eb ab                	jmp    171 <f1+0x41>
 1c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1cd:	8d 76 00             	lea    0x0(%esi),%esi

000001d0 <f2>:
void f2(void* argument1, void* argument2) {
 1d0:	55                   	push   %ebp
 1d1:	89 e5                	mov    %esp,%ebp
 1d3:	83 ec 08             	sub    $0x8,%esp
  if (num) lock_acquire(lk);
 1d6:	8b 45 08             	mov    0x8(%ebp),%eax
 1d9:	8b 08                	mov    (%eax),%ecx
 1db:	85 c9                	test   %ecx,%ecx
 1dd:	75 37                	jne    216 <f2+0x46>
  printf(1, "Function 2 is printing: %s\n", num ? "second" : "whenever");
 1df:	50                   	push   %eax
 1e0:	68 c6 0a 00 00       	push   $0xac6
 1e5:	68 d6 0a 00 00       	push   $0xad6
 1ea:	6a 01                	push   $0x1
 1ec:	e8 6f 05 00 00       	call   760 <printf>
  printf(1, "Function 2 sleep for %d ms\n", SLEEP_TIME);
 1f1:	83 c4 0c             	add    $0xc,%esp
 1f4:	6a 0a                	push   $0xa
 1f6:	68 f2 0a 00 00       	push   $0xaf2
 1fb:	6a 01                	push   $0x1
 1fd:	e8 5e 05 00 00       	call   760 <printf>
  sleep(SLEEP_TIME);
 202:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 209:	e8 77 04 00 00       	call   685 <sleep>
 20e:	83 c4 10             	add    $0x10,%esp
  exit();
 211:	e8 df 03 00 00       	call   5f5 <exit>
  if (num) lock_acquire(lk);
 216:	83 ec 0c             	sub    $0xc,%esp
 219:	ff 35 d4 0f 00 00    	push   0xfd4
 21f:	e8 9c 03 00 00       	call   5c0 <lock_acquire>
  printf(1, "Function 2 is printing: %s\n", num ? "second" : "whenever");
 224:	83 c4 0c             	add    $0xc,%esp
 227:	68 cf 0a 00 00       	push   $0xacf
 22c:	68 d6 0a 00 00       	push   $0xad6
 231:	6a 01                	push   $0x1
 233:	e8 28 05 00 00       	call   760 <printf>
  printf(1, "Function 2 sleep for %d ms\n", SLEEP_TIME);
 238:	83 c4 0c             	add    $0xc,%esp
 23b:	6a 0a                	push   $0xa
 23d:	68 f2 0a 00 00       	push   $0xaf2
 242:	6a 01                	push   $0x1
 244:	e8 17 05 00 00       	call   760 <printf>
  sleep(SLEEP_TIME);
 249:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 250:	e8 30 04 00 00       	call   685 <sleep>
  if (num) lock_release(lk);
 255:	5a                   	pop    %edx
 256:	ff 35 d4 0f 00 00    	push   0xfd4
 25c:	e8 7f 03 00 00       	call   5e0 <lock_release>
 261:	83 c4 10             	add    $0x10,%esp
 264:	eb ab                	jmp    211 <f2+0x41>
 266:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 26d:	8d 76 00             	lea    0x0(%esi),%esi

00000270 <f3>:
void f3(void* argument1, void* argument2) {
 270:	55                   	push   %ebp
 271:	89 e5                	mov    %esp,%ebp
 273:	83 ec 08             	sub    $0x8,%esp
  if (num) lock_acquire(lk);
 276:	8b 45 08             	mov    0x8(%ebp),%eax
 279:	8b 08                	mov    (%eax),%ecx
 27b:	85 c9                	test   %ecx,%ecx
 27d:	75 37                	jne    2b6 <f3+0x46>
  printf(1, "Function 3 is printing: %s\n", num ? "third" : "whenever");
 27f:	50                   	push   %eax
 280:	68 c6 0a 00 00       	push   $0xac6
 285:	68 14 0b 00 00       	push   $0xb14
 28a:	6a 01                	push   $0x1
 28c:	e8 cf 04 00 00       	call   760 <printf>
  printf(1, "Function 3 sleep for %d ms\n", SLEEP_TIME);
 291:	83 c4 0c             	add    $0xc,%esp
 294:	6a 0a                	push   $0xa
 296:	68 30 0b 00 00       	push   $0xb30
 29b:	6a 01                	push   $0x1
 29d:	e8 be 04 00 00       	call   760 <printf>
  sleep(SLEEP_TIME);
 2a2:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 2a9:	e8 d7 03 00 00       	call   685 <sleep>
 2ae:	83 c4 10             	add    $0x10,%esp
  exit();
 2b1:	e8 3f 03 00 00       	call   5f5 <exit>
  if (num) lock_acquire(lk);
 2b6:	83 ec 0c             	sub    $0xc,%esp
 2b9:	ff 35 d4 0f 00 00    	push   0xfd4
 2bf:	e8 fc 02 00 00       	call   5c0 <lock_acquire>
  printf(1, "Function 3 is printing: %s\n", num ? "third" : "whenever");
 2c4:	83 c4 0c             	add    $0xc,%esp
 2c7:	68 0e 0b 00 00       	push   $0xb0e
 2cc:	68 14 0b 00 00       	push   $0xb14
 2d1:	6a 01                	push   $0x1
 2d3:	e8 88 04 00 00       	call   760 <printf>
  printf(1, "Function 3 sleep for %d ms\n", SLEEP_TIME);
 2d8:	83 c4 0c             	add    $0xc,%esp
 2db:	6a 0a                	push   $0xa
 2dd:	68 30 0b 00 00       	push   $0xb30
 2e2:	6a 01                	push   $0x1
 2e4:	e8 77 04 00 00       	call   760 <printf>
  sleep(SLEEP_TIME);
 2e9:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 2f0:	e8 90 03 00 00       	call   685 <sleep>
  if (num) lock_release(lk);
 2f5:	5a                   	pop    %edx
 2f6:	ff 35 d4 0f 00 00    	push   0xfd4
 2fc:	e8 df 02 00 00       	call   5e0 <lock_release>
 301:	83 c4 10             	add    $0x10,%esp
 304:	eb ab                	jmp    2b1 <f3+0x41>
 306:	66 90                	xchg   %ax,%ax
 308:	66 90                	xchg   %ax,%ax
 30a:	66 90                	xchg   %ax,%ax
 30c:	66 90                	xchg   %ax,%ax
 30e:	66 90                	xchg   %ax,%ax

00000310 <strcpy>:
#include "mmu.h"  // dealing with low-level memory management tasks
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 310:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 311:	31 c0                	xor    %eax,%eax
{
 313:	89 e5                	mov    %esp,%ebp
 315:	53                   	push   %ebx
 316:	8b 4d 08             	mov    0x8(%ebp),%ecx
 319:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 31c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 320:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 324:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 327:	83 c0 01             	add    $0x1,%eax
 32a:	84 d2                	test   %dl,%dl
 32c:	75 f2                	jne    320 <strcpy+0x10>
    ;
  return os;
}
 32e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 331:	89 c8                	mov    %ecx,%eax
 333:	c9                   	leave  
 334:	c3                   	ret    
 335:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 33c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000340 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
 343:	53                   	push   %ebx
 344:	8b 55 08             	mov    0x8(%ebp),%edx
 347:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 34a:	0f b6 02             	movzbl (%edx),%eax
 34d:	84 c0                	test   %al,%al
 34f:	75 17                	jne    368 <strcmp+0x28>
 351:	eb 3a                	jmp    38d <strcmp+0x4d>
 353:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 357:	90                   	nop
 358:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 35c:	83 c2 01             	add    $0x1,%edx
 35f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 362:	84 c0                	test   %al,%al
 364:	74 1a                	je     380 <strcmp+0x40>
    p++, q++;
 366:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 368:	0f b6 19             	movzbl (%ecx),%ebx
 36b:	38 c3                	cmp    %al,%bl
 36d:	74 e9                	je     358 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 36f:	29 d8                	sub    %ebx,%eax
}
 371:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 374:	c9                   	leave  
 375:	c3                   	ret    
 376:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 37d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 380:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 384:	31 c0                	xor    %eax,%eax
 386:	29 d8                	sub    %ebx,%eax
}
 388:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 38b:	c9                   	leave  
 38c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 38d:	0f b6 19             	movzbl (%ecx),%ebx
 390:	31 c0                	xor    %eax,%eax
 392:	eb db                	jmp    36f <strcmp+0x2f>
 394:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 39b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 39f:	90                   	nop

000003a0 <strlen>:

uint
strlen(const char *s)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 3a6:	80 3a 00             	cmpb   $0x0,(%edx)
 3a9:	74 15                	je     3c0 <strlen+0x20>
 3ab:	31 c0                	xor    %eax,%eax
 3ad:	8d 76 00             	lea    0x0(%esi),%esi
 3b0:	83 c0 01             	add    $0x1,%eax
 3b3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 3b7:	89 c1                	mov    %eax,%ecx
 3b9:	75 f5                	jne    3b0 <strlen+0x10>
    ;
  return n;
}
 3bb:	89 c8                	mov    %ecx,%eax
 3bd:	5d                   	pop    %ebp
 3be:	c3                   	ret    
 3bf:	90                   	nop
  for(n = 0; s[n]; n++)
 3c0:	31 c9                	xor    %ecx,%ecx
}
 3c2:	5d                   	pop    %ebp
 3c3:	89 c8                	mov    %ecx,%eax
 3c5:	c3                   	ret    
 3c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3cd:	8d 76 00             	lea    0x0(%esi),%esi

000003d0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	57                   	push   %edi
 3d4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 3d7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 3da:	8b 45 0c             	mov    0xc(%ebp),%eax
 3dd:	89 d7                	mov    %edx,%edi
 3df:	fc                   	cld    
 3e0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 3e2:	8b 7d fc             	mov    -0x4(%ebp),%edi
 3e5:	89 d0                	mov    %edx,%eax
 3e7:	c9                   	leave  
 3e8:	c3                   	ret    
 3e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003f0 <strchr>:

char*
strchr(const char *s, char c)
{
 3f0:	55                   	push   %ebp
 3f1:	89 e5                	mov    %esp,%ebp
 3f3:	8b 45 08             	mov    0x8(%ebp),%eax
 3f6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 3fa:	0f b6 10             	movzbl (%eax),%edx
 3fd:	84 d2                	test   %dl,%dl
 3ff:	75 12                	jne    413 <strchr+0x23>
 401:	eb 1d                	jmp    420 <strchr+0x30>
 403:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 407:	90                   	nop
 408:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 40c:	83 c0 01             	add    $0x1,%eax
 40f:	84 d2                	test   %dl,%dl
 411:	74 0d                	je     420 <strchr+0x30>
    if(*s == c)
 413:	38 d1                	cmp    %dl,%cl
 415:	75 f1                	jne    408 <strchr+0x18>
      return (char*)s;
  return 0;
}
 417:	5d                   	pop    %ebp
 418:	c3                   	ret    
 419:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 420:	31 c0                	xor    %eax,%eax
}
 422:	5d                   	pop    %ebp
 423:	c3                   	ret    
 424:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 42b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 42f:	90                   	nop

00000430 <gets>:

char*
gets(char *buf, int max)
{
 430:	55                   	push   %ebp
 431:	89 e5                	mov    %esp,%ebp
 433:	57                   	push   %edi
 434:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 435:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 438:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 439:	31 db                	xor    %ebx,%ebx
{
 43b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 43e:	eb 27                	jmp    467 <gets+0x37>
    cc = read(0, &c, 1);
 440:	83 ec 04             	sub    $0x4,%esp
 443:	6a 01                	push   $0x1
 445:	57                   	push   %edi
 446:	6a 00                	push   $0x0
 448:	e8 c0 01 00 00       	call   60d <read>
    if(cc < 1)
 44d:	83 c4 10             	add    $0x10,%esp
 450:	85 c0                	test   %eax,%eax
 452:	7e 1d                	jle    471 <gets+0x41>
      break;
    buf[i++] = c;
 454:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 458:	8b 55 08             	mov    0x8(%ebp),%edx
 45b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 45f:	3c 0a                	cmp    $0xa,%al
 461:	74 1d                	je     480 <gets+0x50>
 463:	3c 0d                	cmp    $0xd,%al
 465:	74 19                	je     480 <gets+0x50>
  for(i=0; i+1 < max; ){
 467:	89 de                	mov    %ebx,%esi
 469:	83 c3 01             	add    $0x1,%ebx
 46c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 46f:	7c cf                	jl     440 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 471:	8b 45 08             	mov    0x8(%ebp),%eax
 474:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 478:	8d 65 f4             	lea    -0xc(%ebp),%esp
 47b:	5b                   	pop    %ebx
 47c:	5e                   	pop    %esi
 47d:	5f                   	pop    %edi
 47e:	5d                   	pop    %ebp
 47f:	c3                   	ret    
  buf[i] = '\0';
 480:	8b 45 08             	mov    0x8(%ebp),%eax
 483:	89 de                	mov    %ebx,%esi
 485:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 489:	8d 65 f4             	lea    -0xc(%ebp),%esp
 48c:	5b                   	pop    %ebx
 48d:	5e                   	pop    %esi
 48e:	5f                   	pop    %edi
 48f:	5d                   	pop    %ebp
 490:	c3                   	ret    
 491:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 498:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 49f:	90                   	nop

000004a0 <stat>:

int
stat(const char *n, struct stat *st)
{
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	56                   	push   %esi
 4a4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 4a5:	83 ec 08             	sub    $0x8,%esp
 4a8:	6a 00                	push   $0x0
 4aa:	ff 75 08             	push   0x8(%ebp)
 4ad:	e8 83 01 00 00       	call   635 <open>
  if(fd < 0)
 4b2:	83 c4 10             	add    $0x10,%esp
 4b5:	85 c0                	test   %eax,%eax
 4b7:	78 27                	js     4e0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 4b9:	83 ec 08             	sub    $0x8,%esp
 4bc:	ff 75 0c             	push   0xc(%ebp)
 4bf:	89 c3                	mov    %eax,%ebx
 4c1:	50                   	push   %eax
 4c2:	e8 86 01 00 00       	call   64d <fstat>
  close(fd);
 4c7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 4ca:	89 c6                	mov    %eax,%esi
  close(fd);
 4cc:	e8 4c 01 00 00       	call   61d <close>
  return r;
 4d1:	83 c4 10             	add    $0x10,%esp
}
 4d4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 4d7:	89 f0                	mov    %esi,%eax
 4d9:	5b                   	pop    %ebx
 4da:	5e                   	pop    %esi
 4db:	5d                   	pop    %ebp
 4dc:	c3                   	ret    
 4dd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 4e0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 4e5:	eb ed                	jmp    4d4 <stat+0x34>
 4e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4ee:	66 90                	xchg   %ax,%ax

000004f0 <atoi>:

int
atoi(const char *s)
{
 4f0:	55                   	push   %ebp
 4f1:	89 e5                	mov    %esp,%ebp
 4f3:	53                   	push   %ebx
 4f4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 4f7:	0f be 02             	movsbl (%edx),%eax
 4fa:	8d 48 d0             	lea    -0x30(%eax),%ecx
 4fd:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 500:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 505:	77 1e                	ja     525 <atoi+0x35>
 507:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 50e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 510:	83 c2 01             	add    $0x1,%edx
 513:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 516:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 51a:	0f be 02             	movsbl (%edx),%eax
 51d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 520:	80 fb 09             	cmp    $0x9,%bl
 523:	76 eb                	jbe    510 <atoi+0x20>
  return n;
}
 525:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 528:	89 c8                	mov    %ecx,%eax
 52a:	c9                   	leave  
 52b:	c3                   	ret    
 52c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000530 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
 533:	57                   	push   %edi
 534:	8b 45 10             	mov    0x10(%ebp),%eax
 537:	8b 55 08             	mov    0x8(%ebp),%edx
 53a:	56                   	push   %esi
 53b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 53e:	85 c0                	test   %eax,%eax
 540:	7e 13                	jle    555 <memmove+0x25>
 542:	01 d0                	add    %edx,%eax
  dst = vdst;
 544:	89 d7                	mov    %edx,%edi
 546:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 54d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 550:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 551:	39 f8                	cmp    %edi,%eax
 553:	75 fb                	jne    550 <memmove+0x20>
  return vdst;
}
 555:	5e                   	pop    %esi
 556:	89 d0                	mov    %edx,%eax
 558:	5f                   	pop    %edi
 559:	5d                   	pop    %ebp
 55a:	c3                   	ret    
 55b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 55f:	90                   	nop

00000560 <thread_create>:

// defining functions bodies
int thread_create(void (*start_routine)(void *, void *), void* arg1, void* arg2)
{
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
 563:	83 ec 14             	sub    $0x14,%esp
  void* threadStack;
  threadStack = malloc(PGSIZE); // taking memory for a page size
 566:	68 00 10 00 00       	push   $0x1000
 56b:	e8 20 04 00 00       	call   990 <malloc>

  return clone(start_routine, arg1, arg2, threadStack);
 570:	50                   	push   %eax
 571:	ff 75 10             	push   0x10(%ebp)
 574:	ff 75 0c             	push   0xc(%ebp)
 577:	ff 75 08             	push   0x8(%ebp)
 57a:	e8 16 01 00 00       	call   695 <clone>
}
 57f:	c9                   	leave  
 580:	c3                   	ret    
 581:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 588:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 58f:	90                   	nop

00000590 <thread_join>:

int thread_join()
{
 590:	55                   	push   %ebp
 591:	89 e5                	mov    %esp,%ebp
 593:	83 ec 24             	sub    $0x24,%esp
  void * stackPtr;
  int x = join(&stackPtr);
 596:	8d 45 f4             	lea    -0xc(%ebp),%eax
 599:	50                   	push   %eax
 59a:	e8 fe 00 00 00       	call   69d <join>
  return x;
}
 59f:	c9                   	leave  
 5a0:	c3                   	ret    
 5a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5af:	90                   	nop

000005b0 <lock_init>:

int lock_init(lock_thread *lk)
{
 5b0:	55                   	push   %ebp
 5b1:	89 e5                	mov    %esp,%ebp
  lk->isLocked = 0;
 5b3:	8b 45 08             	mov    0x8(%ebp),%eax
 5b6:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  return 0;
}
 5bc:	31 c0                	xor    %eax,%eax
 5be:	5d                   	pop    %ebp
 5bf:	c3                   	ret    

000005c0 <lock_acquire>:

void lock_acquire(lock_thread *lk){
 5c0:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 5c1:	b9 01 00 00 00       	mov    $0x1,%ecx
 5c6:	89 e5                	mov    %esp,%ebp
 5c8:	8b 55 08             	mov    0x8(%ebp),%edx
 5cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5cf:	90                   	nop
 5d0:	89 c8                	mov    %ecx,%eax
 5d2:	f0 87 02             	lock xchg %eax,(%edx)
  //prevent interruption .
  //take a pointer to a lock_thread structure as an argument and returns nothing (void).
  while(xchg(&lk->isLocked, 1) != 0);
 5d5:	85 c0                	test   %eax,%eax
 5d7:	75 f7                	jne    5d0 <lock_acquire+0x10>
}
 5d9:	5d                   	pop    %ebp
 5da:	c3                   	ret    
 5db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 5df:	90                   	nop

000005e0 <lock_release>:

void lock_release(lock_thread *lk){
 5e0:	55                   	push   %ebp
 5e1:	31 c0                	xor    %eax,%eax
 5e3:	89 e5                	mov    %esp,%ebp
 5e5:	8b 55 08             	mov    0x8(%ebp),%edx
 5e8:	f0 87 02             	lock xchg %eax,(%edx)
  // xchg = exchange
	xchg(&lk->isLocked, 0);
 5eb:	5d                   	pop    %ebp
 5ec:	c3                   	ret    

000005ed <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 5ed:	b8 01 00 00 00       	mov    $0x1,%eax
 5f2:	cd 40                	int    $0x40
 5f4:	c3                   	ret    

000005f5 <exit>:
SYSCALL(exit)
 5f5:	b8 02 00 00 00       	mov    $0x2,%eax
 5fa:	cd 40                	int    $0x40
 5fc:	c3                   	ret    

000005fd <wait>:
SYSCALL(wait)
 5fd:	b8 03 00 00 00       	mov    $0x3,%eax
 602:	cd 40                	int    $0x40
 604:	c3                   	ret    

00000605 <pipe>:
SYSCALL(pipe)
 605:	b8 04 00 00 00       	mov    $0x4,%eax
 60a:	cd 40                	int    $0x40
 60c:	c3                   	ret    

0000060d <read>:
SYSCALL(read)
 60d:	b8 05 00 00 00       	mov    $0x5,%eax
 612:	cd 40                	int    $0x40
 614:	c3                   	ret    

00000615 <write>:
SYSCALL(write)
 615:	b8 10 00 00 00       	mov    $0x10,%eax
 61a:	cd 40                	int    $0x40
 61c:	c3                   	ret    

0000061d <close>:
SYSCALL(close)
 61d:	b8 15 00 00 00       	mov    $0x15,%eax
 622:	cd 40                	int    $0x40
 624:	c3                   	ret    

00000625 <kill>:
SYSCALL(kill)
 625:	b8 06 00 00 00       	mov    $0x6,%eax
 62a:	cd 40                	int    $0x40
 62c:	c3                   	ret    

0000062d <exec>:
SYSCALL(exec)
 62d:	b8 07 00 00 00       	mov    $0x7,%eax
 632:	cd 40                	int    $0x40
 634:	c3                   	ret    

00000635 <open>:
SYSCALL(open)
 635:	b8 0f 00 00 00       	mov    $0xf,%eax
 63a:	cd 40                	int    $0x40
 63c:	c3                   	ret    

0000063d <mknod>:
SYSCALL(mknod)
 63d:	b8 11 00 00 00       	mov    $0x11,%eax
 642:	cd 40                	int    $0x40
 644:	c3                   	ret    

00000645 <unlink>:
SYSCALL(unlink)
 645:	b8 12 00 00 00       	mov    $0x12,%eax
 64a:	cd 40                	int    $0x40
 64c:	c3                   	ret    

0000064d <fstat>:
SYSCALL(fstat)
 64d:	b8 08 00 00 00       	mov    $0x8,%eax
 652:	cd 40                	int    $0x40
 654:	c3                   	ret    

00000655 <link>:
SYSCALL(link)
 655:	b8 13 00 00 00       	mov    $0x13,%eax
 65a:	cd 40                	int    $0x40
 65c:	c3                   	ret    

0000065d <mkdir>:
SYSCALL(mkdir)
 65d:	b8 14 00 00 00       	mov    $0x14,%eax
 662:	cd 40                	int    $0x40
 664:	c3                   	ret    

00000665 <chdir>:
SYSCALL(chdir)
 665:	b8 09 00 00 00       	mov    $0x9,%eax
 66a:	cd 40                	int    $0x40
 66c:	c3                   	ret    

0000066d <dup>:
SYSCALL(dup)
 66d:	b8 0a 00 00 00       	mov    $0xa,%eax
 672:	cd 40                	int    $0x40
 674:	c3                   	ret    

00000675 <getpid>:
SYSCALL(getpid)
 675:	b8 0b 00 00 00       	mov    $0xb,%eax
 67a:	cd 40                	int    $0x40
 67c:	c3                   	ret    

0000067d <sbrk>:
SYSCALL(sbrk)
 67d:	b8 0c 00 00 00       	mov    $0xc,%eax
 682:	cd 40                	int    $0x40
 684:	c3                   	ret    

00000685 <sleep>:
SYSCALL(sleep)
 685:	b8 0d 00 00 00       	mov    $0xd,%eax
 68a:	cd 40                	int    $0x40
 68c:	c3                   	ret    

0000068d <uptime>:
SYSCALL(uptime)
 68d:	b8 0e 00 00 00       	mov    $0xe,%eax
 692:	cd 40                	int    $0x40
 694:	c3                   	ret    

00000695 <clone>:
SYSCALL(clone)
 695:	b8 16 00 00 00       	mov    $0x16,%eax
 69a:	cd 40                	int    $0x40
 69c:	c3                   	ret    

0000069d <join>:
SYSCALL(join) 
 69d:	b8 17 00 00 00       	mov    $0x17,%eax
 6a2:	cd 40                	int    $0x40
 6a4:	c3                   	ret    
 6a5:	66 90                	xchg   %ax,%ax
 6a7:	66 90                	xchg   %ax,%ax
 6a9:	66 90                	xchg   %ax,%ax
 6ab:	66 90                	xchg   %ax,%ax
 6ad:	66 90                	xchg   %ax,%ax
 6af:	90                   	nop

000006b0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 6b0:	55                   	push   %ebp
 6b1:	89 e5                	mov    %esp,%ebp
 6b3:	57                   	push   %edi
 6b4:	56                   	push   %esi
 6b5:	53                   	push   %ebx
 6b6:	83 ec 3c             	sub    $0x3c,%esp
 6b9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 6bc:	89 d1                	mov    %edx,%ecx
{
 6be:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 6c1:	85 d2                	test   %edx,%edx
 6c3:	0f 89 7f 00 00 00    	jns    748 <printint+0x98>
 6c9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 6cd:	74 79                	je     748 <printint+0x98>
    neg = 1;
 6cf:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 6d6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 6d8:	31 db                	xor    %ebx,%ebx
 6da:	8d 75 d7             	lea    -0x29(%ebp),%esi
 6dd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 6e0:	89 c8                	mov    %ecx,%eax
 6e2:	31 d2                	xor    %edx,%edx
 6e4:	89 cf                	mov    %ecx,%edi
 6e6:	f7 75 c4             	divl   -0x3c(%ebp)
 6e9:	0f b6 92 30 0c 00 00 	movzbl 0xc30(%edx),%edx
 6f0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 6f3:	89 d8                	mov    %ebx,%eax
 6f5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 6f8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 6fb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 6fe:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 701:	76 dd                	jbe    6e0 <printint+0x30>
  if(neg)
 703:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 706:	85 c9                	test   %ecx,%ecx
 708:	74 0c                	je     716 <printint+0x66>
    buf[i++] = '-';
 70a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 70f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 711:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 716:	8b 7d b8             	mov    -0x48(%ebp),%edi
 719:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 71d:	eb 07                	jmp    726 <printint+0x76>
 71f:	90                   	nop
    putc(fd, buf[i]);
 720:	0f b6 13             	movzbl (%ebx),%edx
 723:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 726:	83 ec 04             	sub    $0x4,%esp
 729:	88 55 d7             	mov    %dl,-0x29(%ebp)
 72c:	6a 01                	push   $0x1
 72e:	56                   	push   %esi
 72f:	57                   	push   %edi
 730:	e8 e0 fe ff ff       	call   615 <write>
  while(--i >= 0)
 735:	83 c4 10             	add    $0x10,%esp
 738:	39 de                	cmp    %ebx,%esi
 73a:	75 e4                	jne    720 <printint+0x70>
}
 73c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 73f:	5b                   	pop    %ebx
 740:	5e                   	pop    %esi
 741:	5f                   	pop    %edi
 742:	5d                   	pop    %ebp
 743:	c3                   	ret    
 744:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 748:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 74f:	eb 87                	jmp    6d8 <printint+0x28>
 751:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 758:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 75f:	90                   	nop

00000760 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 760:	55                   	push   %ebp
 761:	89 e5                	mov    %esp,%ebp
 763:	57                   	push   %edi
 764:	56                   	push   %esi
 765:	53                   	push   %ebx
 766:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 769:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 76c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 76f:	0f b6 13             	movzbl (%ebx),%edx
 772:	84 d2                	test   %dl,%dl
 774:	74 6a                	je     7e0 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 776:	8d 45 10             	lea    0x10(%ebp),%eax
 779:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 77c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 77f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 781:	89 45 d0             	mov    %eax,-0x30(%ebp)
 784:	eb 36                	jmp    7bc <printf+0x5c>
 786:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 78d:	8d 76 00             	lea    0x0(%esi),%esi
 790:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 793:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 798:	83 f8 25             	cmp    $0x25,%eax
 79b:	74 15                	je     7b2 <printf+0x52>
  write(fd, &c, 1);
 79d:	83 ec 04             	sub    $0x4,%esp
 7a0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7a3:	6a 01                	push   $0x1
 7a5:	57                   	push   %edi
 7a6:	56                   	push   %esi
 7a7:	e8 69 fe ff ff       	call   615 <write>
 7ac:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 7af:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 7b2:	0f b6 13             	movzbl (%ebx),%edx
 7b5:	83 c3 01             	add    $0x1,%ebx
 7b8:	84 d2                	test   %dl,%dl
 7ba:	74 24                	je     7e0 <printf+0x80>
    c = fmt[i] & 0xff;
 7bc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 7bf:	85 c9                	test   %ecx,%ecx
 7c1:	74 cd                	je     790 <printf+0x30>
      }
    } else if(state == '%'){
 7c3:	83 f9 25             	cmp    $0x25,%ecx
 7c6:	75 ea                	jne    7b2 <printf+0x52>
      if(c == 'd'){
 7c8:	83 f8 25             	cmp    $0x25,%eax
 7cb:	0f 84 07 01 00 00    	je     8d8 <printf+0x178>
 7d1:	83 e8 63             	sub    $0x63,%eax
 7d4:	83 f8 15             	cmp    $0x15,%eax
 7d7:	77 17                	ja     7f0 <printf+0x90>
 7d9:	ff 24 85 d8 0b 00 00 	jmp    *0xbd8(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 7e0:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7e3:	5b                   	pop    %ebx
 7e4:	5e                   	pop    %esi
 7e5:	5f                   	pop    %edi
 7e6:	5d                   	pop    %ebp
 7e7:	c3                   	ret    
 7e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7ef:	90                   	nop
  write(fd, &c, 1);
 7f0:	83 ec 04             	sub    $0x4,%esp
 7f3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 7f6:	6a 01                	push   $0x1
 7f8:	57                   	push   %edi
 7f9:	56                   	push   %esi
 7fa:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 7fe:	e8 12 fe ff ff       	call   615 <write>
        putc(fd, c);
 803:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 807:	83 c4 0c             	add    $0xc,%esp
 80a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 80d:	6a 01                	push   $0x1
 80f:	57                   	push   %edi
 810:	56                   	push   %esi
 811:	e8 ff fd ff ff       	call   615 <write>
        putc(fd, c);
 816:	83 c4 10             	add    $0x10,%esp
      state = 0;
 819:	31 c9                	xor    %ecx,%ecx
 81b:	eb 95                	jmp    7b2 <printf+0x52>
 81d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 820:	83 ec 0c             	sub    $0xc,%esp
 823:	b9 10 00 00 00       	mov    $0x10,%ecx
 828:	6a 00                	push   $0x0
 82a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 82d:	8b 10                	mov    (%eax),%edx
 82f:	89 f0                	mov    %esi,%eax
 831:	e8 7a fe ff ff       	call   6b0 <printint>
        ap++;
 836:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 83a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 83d:	31 c9                	xor    %ecx,%ecx
 83f:	e9 6e ff ff ff       	jmp    7b2 <printf+0x52>
 844:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 848:	8b 45 d0             	mov    -0x30(%ebp),%eax
 84b:	8b 10                	mov    (%eax),%edx
        ap++;
 84d:	83 c0 04             	add    $0x4,%eax
 850:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 853:	85 d2                	test   %edx,%edx
 855:	0f 84 8d 00 00 00    	je     8e8 <printf+0x188>
        while(*s != 0){
 85b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 85e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 860:	84 c0                	test   %al,%al
 862:	0f 84 4a ff ff ff    	je     7b2 <printf+0x52>
 868:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 86b:	89 d3                	mov    %edx,%ebx
 86d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 870:	83 ec 04             	sub    $0x4,%esp
          s++;
 873:	83 c3 01             	add    $0x1,%ebx
 876:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 879:	6a 01                	push   $0x1
 87b:	57                   	push   %edi
 87c:	56                   	push   %esi
 87d:	e8 93 fd ff ff       	call   615 <write>
        while(*s != 0){
 882:	0f b6 03             	movzbl (%ebx),%eax
 885:	83 c4 10             	add    $0x10,%esp
 888:	84 c0                	test   %al,%al
 88a:	75 e4                	jne    870 <printf+0x110>
      state = 0;
 88c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 88f:	31 c9                	xor    %ecx,%ecx
 891:	e9 1c ff ff ff       	jmp    7b2 <printf+0x52>
 896:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 89d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 8a0:	83 ec 0c             	sub    $0xc,%esp
 8a3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 8a8:	6a 01                	push   $0x1
 8aa:	e9 7b ff ff ff       	jmp    82a <printf+0xca>
 8af:	90                   	nop
        putc(fd, *ap);
 8b0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 8b3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 8b6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 8b8:	6a 01                	push   $0x1
 8ba:	57                   	push   %edi
 8bb:	56                   	push   %esi
        putc(fd, *ap);
 8bc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8bf:	e8 51 fd ff ff       	call   615 <write>
        ap++;
 8c4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8c8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8cb:	31 c9                	xor    %ecx,%ecx
 8cd:	e9 e0 fe ff ff       	jmp    7b2 <printf+0x52>
 8d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 8d8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 8db:	83 ec 04             	sub    $0x4,%esp
 8de:	e9 2a ff ff ff       	jmp    80d <printf+0xad>
 8e3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8e7:	90                   	nop
          s = "(null)";
 8e8:	ba ce 0b 00 00       	mov    $0xbce,%edx
        while(*s != 0){
 8ed:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 8f0:	b8 28 00 00 00       	mov    $0x28,%eax
 8f5:	89 d3                	mov    %edx,%ebx
 8f7:	e9 74 ff ff ff       	jmp    870 <printf+0x110>
 8fc:	66 90                	xchg   %ax,%ax
 8fe:	66 90                	xchg   %ax,%ax

00000900 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 900:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 901:	a1 d8 0f 00 00       	mov    0xfd8,%eax
{
 906:	89 e5                	mov    %esp,%ebp
 908:	57                   	push   %edi
 909:	56                   	push   %esi
 90a:	53                   	push   %ebx
 90b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 90e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 911:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 918:	89 c2                	mov    %eax,%edx
 91a:	8b 00                	mov    (%eax),%eax
 91c:	39 ca                	cmp    %ecx,%edx
 91e:	73 30                	jae    950 <free+0x50>
 920:	39 c1                	cmp    %eax,%ecx
 922:	72 04                	jb     928 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 924:	39 c2                	cmp    %eax,%edx
 926:	72 f0                	jb     918 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 928:	8b 73 fc             	mov    -0x4(%ebx),%esi
 92b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 92e:	39 f8                	cmp    %edi,%eax
 930:	74 30                	je     962 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 932:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 935:	8b 42 04             	mov    0x4(%edx),%eax
 938:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 93b:	39 f1                	cmp    %esi,%ecx
 93d:	74 3a                	je     979 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 93f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 941:	5b                   	pop    %ebx
  freep = p;
 942:	89 15 d8 0f 00 00    	mov    %edx,0xfd8
}
 948:	5e                   	pop    %esi
 949:	5f                   	pop    %edi
 94a:	5d                   	pop    %ebp
 94b:	c3                   	ret    
 94c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 950:	39 c2                	cmp    %eax,%edx
 952:	72 c4                	jb     918 <free+0x18>
 954:	39 c1                	cmp    %eax,%ecx
 956:	73 c0                	jae    918 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 958:	8b 73 fc             	mov    -0x4(%ebx),%esi
 95b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 95e:	39 f8                	cmp    %edi,%eax
 960:	75 d0                	jne    932 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 962:	03 70 04             	add    0x4(%eax),%esi
 965:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 968:	8b 02                	mov    (%edx),%eax
 96a:	8b 00                	mov    (%eax),%eax
 96c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 96f:	8b 42 04             	mov    0x4(%edx),%eax
 972:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 975:	39 f1                	cmp    %esi,%ecx
 977:	75 c6                	jne    93f <free+0x3f>
    p->s.size += bp->s.size;
 979:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 97c:	89 15 d8 0f 00 00    	mov    %edx,0xfd8
    p->s.size += bp->s.size;
 982:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 985:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 988:	89 0a                	mov    %ecx,(%edx)
}
 98a:	5b                   	pop    %ebx
 98b:	5e                   	pop    %esi
 98c:	5f                   	pop    %edi
 98d:	5d                   	pop    %ebp
 98e:	c3                   	ret    
 98f:	90                   	nop

00000990 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 990:	55                   	push   %ebp
 991:	89 e5                	mov    %esp,%ebp
 993:	57                   	push   %edi
 994:	56                   	push   %esi
 995:	53                   	push   %ebx
 996:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 999:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 99c:	8b 3d d8 0f 00 00    	mov    0xfd8,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9a2:	8d 70 07             	lea    0x7(%eax),%esi
 9a5:	c1 ee 03             	shr    $0x3,%esi
 9a8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 9ab:	85 ff                	test   %edi,%edi
 9ad:	0f 84 9d 00 00 00    	je     a50 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9b3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 9b5:	8b 4a 04             	mov    0x4(%edx),%ecx
 9b8:	39 f1                	cmp    %esi,%ecx
 9ba:	73 6a                	jae    a26 <malloc+0x96>
 9bc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 9c1:	39 de                	cmp    %ebx,%esi
 9c3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 9c6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 9cd:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 9d0:	eb 17                	jmp    9e9 <malloc+0x59>
 9d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9d8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 9da:	8b 48 04             	mov    0x4(%eax),%ecx
 9dd:	39 f1                	cmp    %esi,%ecx
 9df:	73 4f                	jae    a30 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 9e1:	8b 3d d8 0f 00 00    	mov    0xfd8,%edi
 9e7:	89 c2                	mov    %eax,%edx
 9e9:	39 d7                	cmp    %edx,%edi
 9eb:	75 eb                	jne    9d8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 9ed:	83 ec 0c             	sub    $0xc,%esp
 9f0:	ff 75 e4             	push   -0x1c(%ebp)
 9f3:	e8 85 fc ff ff       	call   67d <sbrk>
  if(p == (char*)-1)
 9f8:	83 c4 10             	add    $0x10,%esp
 9fb:	83 f8 ff             	cmp    $0xffffffff,%eax
 9fe:	74 1c                	je     a1c <malloc+0x8c>
  hp->s.size = nu;
 a00:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 a03:	83 ec 0c             	sub    $0xc,%esp
 a06:	83 c0 08             	add    $0x8,%eax
 a09:	50                   	push   %eax
 a0a:	e8 f1 fe ff ff       	call   900 <free>
  return freep;
 a0f:	8b 15 d8 0f 00 00    	mov    0xfd8,%edx
      if((p = morecore(nunits)) == 0)
 a15:	83 c4 10             	add    $0x10,%esp
 a18:	85 d2                	test   %edx,%edx
 a1a:	75 bc                	jne    9d8 <malloc+0x48>
        return 0;
  }
}
 a1c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 a1f:	31 c0                	xor    %eax,%eax
}
 a21:	5b                   	pop    %ebx
 a22:	5e                   	pop    %esi
 a23:	5f                   	pop    %edi
 a24:	5d                   	pop    %ebp
 a25:	c3                   	ret    
    if(p->s.size >= nunits){
 a26:	89 d0                	mov    %edx,%eax
 a28:	89 fa                	mov    %edi,%edx
 a2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a30:	39 ce                	cmp    %ecx,%esi
 a32:	74 4c                	je     a80 <malloc+0xf0>
        p->s.size -= nunits;
 a34:	29 f1                	sub    %esi,%ecx
 a36:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a39:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a3c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 a3f:	89 15 d8 0f 00 00    	mov    %edx,0xfd8
}
 a45:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 a48:	83 c0 08             	add    $0x8,%eax
}
 a4b:	5b                   	pop    %ebx
 a4c:	5e                   	pop    %esi
 a4d:	5f                   	pop    %edi
 a4e:	5d                   	pop    %ebp
 a4f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 a50:	c7 05 d8 0f 00 00 dc 	movl   $0xfdc,0xfd8
 a57:	0f 00 00 
    base.s.size = 0;
 a5a:	bf dc 0f 00 00       	mov    $0xfdc,%edi
    base.s.ptr = freep = prevp = &base;
 a5f:	c7 05 dc 0f 00 00 dc 	movl   $0xfdc,0xfdc
 a66:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a69:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 a6b:	c7 05 e0 0f 00 00 00 	movl   $0x0,0xfe0
 a72:	00 00 00 
    if(p->s.size >= nunits){
 a75:	e9 42 ff ff ff       	jmp    9bc <malloc+0x2c>
 a7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 a80:	8b 08                	mov    (%eax),%ecx
 a82:	89 0a                	mov    %ecx,(%edx)
 a84:	eb b9                	jmp    a3f <malloc+0xaf>
