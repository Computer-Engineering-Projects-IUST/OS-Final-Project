
_testthreads:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  exit();
}

int
main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	56                   	push   %esi
   e:	53                   	push   %ebx
  lock_init(lk);
  int arg1 = 1, arg2 = 1;

  printf(1, "below should be sequential print statements:\n");
  thread_create(&f1, (void *)&arg1, (void *)&arg2);
   f:	8d 75 e4             	lea    -0x1c(%ebp),%esi
  12:	8d 5d e0             	lea    -0x20(%ebp),%ebx
{
  15:	51                   	push   %ecx
  16:	83 ec 28             	sub    $0x28,%esp
  lock_init(lk);
  19:	ff 35 38 0f 00 00    	push   0xf38
  1f:	e8 3c 05 00 00       	call   560 <lock_init>
  printf(1, "below should be sequential print statements:\n");
  24:	58                   	pop    %eax
  25:	5a                   	pop    %edx
  26:	68 e4 0a 00 00       	push   $0xae4
  2b:	6a 01                	push   $0x1
  int arg1 = 1, arg2 = 1;
  2d:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%ebp)
  34:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
  printf(1, "below should be sequential print statements:\n");
  3b:	e8 d0 06 00 00       	call   710 <printf>
  thread_create(&f1, (void *)&arg1, (void *)&arg2);
  40:	83 c4 0c             	add    $0xc,%esp
  43:	56                   	push   %esi
  44:	53                   	push   %ebx
  45:	68 e0 00 00 00       	push   $0xe0
  4a:	e8 c1 04 00 00       	call   510 <thread_create>
  thread_create(&f2, (void *)&arg1, (void *)&arg2);
  4f:	83 c4 0c             	add    $0xc,%esp
  52:	56                   	push   %esi
  53:	53                   	push   %ebx
  54:	68 80 01 00 00       	push   $0x180
  59:	e8 b2 04 00 00       	call   510 <thread_create>
  thread_create(&f3, (void *)&arg1, (void *)&arg2);
  5e:	83 c4 0c             	add    $0xc,%esp
  61:	56                   	push   %esi
  62:	53                   	push   %ebx
  63:	68 20 02 00 00       	push   $0x220
  68:	e8 a3 04 00 00       	call   510 <thread_create>
  thread_join();
  6d:	e8 ce 04 00 00       	call   540 <thread_join>
  thread_join();
  72:	e8 c9 04 00 00       	call   540 <thread_join>
  thread_join();
  77:	e8 c4 04 00 00       	call   540 <thread_join>

  arg1 = 0;
  printf(1, "below should be a jarbled mess:\n");
  7c:	59                   	pop    %ecx
  7d:	58                   	pop    %eax
  7e:	68 14 0b 00 00       	push   $0xb14
  83:	6a 01                	push   $0x1
  arg1 = 0;
  85:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  printf(1, "below should be a jarbled mess:\n");
  8c:	e8 7f 06 00 00       	call   710 <printf>
  thread_create(&f1, (void *)&arg1, (void *)&arg2);
  91:	83 c4 0c             	add    $0xc,%esp
  94:	56                   	push   %esi
  95:	53                   	push   %ebx
  96:	68 e0 00 00 00       	push   $0xe0
  9b:	e8 70 04 00 00       	call   510 <thread_create>
  thread_create(&f2, (void *)&arg1, (void *)&arg2);
  a0:	83 c4 0c             	add    $0xc,%esp
  a3:	56                   	push   %esi
  a4:	53                   	push   %ebx
  a5:	68 80 01 00 00       	push   $0x180
  aa:	e8 61 04 00 00       	call   510 <thread_create>
  thread_create(&f3, (void *)&arg1, (void *)&arg2);
  af:	83 c4 0c             	add    $0xc,%esp
  b2:	56                   	push   %esi
  b3:	53                   	push   %ebx
  b4:	68 20 02 00 00       	push   $0x220
  b9:	e8 52 04 00 00       	call   510 <thread_create>
  thread_join();
  be:	e8 7d 04 00 00       	call   540 <thread_join>
  thread_join();
  c3:	e8 78 04 00 00       	call   540 <thread_join>
  thread_join();
  c8:	e8 73 04 00 00       	call   540 <thread_join>
  
  exit();
  cd:	e8 d3 04 00 00       	call   5a5 <exit>
  d2:	66 90                	xchg   %ax,%ax
  d4:	66 90                	xchg   %ax,%ax
  d6:	66 90                	xchg   %ax,%ax
  d8:	66 90                	xchg   %ax,%ax
  da:	66 90                	xchg   %ax,%ax
  dc:	66 90                	xchg   %ax,%ax
  de:	66 90                	xchg   %ax,%ax

000000e0 <f1>:
void f1(void* arg1, void* arg2) {
  e0:	55                   	push   %ebp
  e1:	89 e5                	mov    %esp,%ebp
  e3:	83 ec 08             	sub    $0x8,%esp
  if (num) lock_acquire(lk);
  e6:	8b 45 08             	mov    0x8(%ebp),%eax
  e9:	8b 08                	mov    (%eax),%ecx
  eb:	85 c9                	test   %ecx,%ecx
  ed:	75 37                	jne    126 <f1+0x46>
  printf(1, "1. this should print %s\n", num ? "first" : "whenever");
  ef:	50                   	push   %eax
  f0:	68 6e 0a 00 00       	push   $0xa6e
  f5:	68 3e 0a 00 00       	push   $0xa3e
  fa:	6a 01                	push   $0x1
  fc:	e8 0f 06 00 00       	call   710 <printf>
  printf(1, "1. sleep for %d ticks\n", SLEEP_TIME);
 101:	83 c4 0c             	add    $0xc,%esp
 104:	6a 64                	push   $0x64
 106:	68 57 0a 00 00       	push   $0xa57
 10b:	6a 01                	push   $0x1
 10d:	e8 fe 05 00 00       	call   710 <printf>
  sleep(SLEEP_TIME);
 112:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 119:	e8 17 05 00 00       	call   635 <sleep>
 11e:	83 c4 10             	add    $0x10,%esp
  exit();
 121:	e8 7f 04 00 00       	call   5a5 <exit>
  if (num) lock_acquire(lk);
 126:	83 ec 0c             	sub    $0xc,%esp
 129:	ff 35 38 0f 00 00    	push   0xf38
 12f:	e8 3c 04 00 00       	call   570 <lock_acquire>
  printf(1, "1. this should print %s\n", num ? "first" : "whenever");
 134:	83 c4 0c             	add    $0xc,%esp
 137:	68 38 0a 00 00       	push   $0xa38
 13c:	68 3e 0a 00 00       	push   $0xa3e
 141:	6a 01                	push   $0x1
 143:	e8 c8 05 00 00       	call   710 <printf>
  printf(1, "1. sleep for %d ticks\n", SLEEP_TIME);
 148:	83 c4 0c             	add    $0xc,%esp
 14b:	6a 64                	push   $0x64
 14d:	68 57 0a 00 00       	push   $0xa57
 152:	6a 01                	push   $0x1
 154:	e8 b7 05 00 00       	call   710 <printf>
  sleep(SLEEP_TIME);
 159:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 160:	e8 d0 04 00 00       	call   635 <sleep>
  if (num) lock_release(lk);
 165:	5a                   	pop    %edx
 166:	ff 35 38 0f 00 00    	push   0xf38
 16c:	e8 1f 04 00 00       	call   590 <lock_release>
 171:	83 c4 10             	add    $0x10,%esp
 174:	eb ab                	jmp    121 <f1+0x41>
 176:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 17d:	8d 76 00             	lea    0x0(%esi),%esi

00000180 <f2>:
void f2(void* arg1, void* arg2) {
 180:	55                   	push   %ebp
 181:	89 e5                	mov    %esp,%ebp
 183:	83 ec 08             	sub    $0x8,%esp
  if (num) lock_acquire(lk);
 186:	8b 45 08             	mov    0x8(%ebp),%eax
 189:	8b 08                	mov    (%eax),%ecx
 18b:	85 c9                	test   %ecx,%ecx
 18d:	75 37                	jne    1c6 <f2+0x46>
  printf(1, "2. this should print %s\n", num ? "second" : "whenever");
 18f:	50                   	push   %eax
 190:	68 6e 0a 00 00       	push   $0xa6e
 195:	68 7e 0a 00 00       	push   $0xa7e
 19a:	6a 01                	push   $0x1
 19c:	e8 6f 05 00 00       	call   710 <printf>
  printf(1, "2. sleep for %d ticks\n", SLEEP_TIME);
 1a1:	83 c4 0c             	add    $0xc,%esp
 1a4:	6a 64                	push   $0x64
 1a6:	68 97 0a 00 00       	push   $0xa97
 1ab:	6a 01                	push   $0x1
 1ad:	e8 5e 05 00 00       	call   710 <printf>
  sleep(SLEEP_TIME);
 1b2:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 1b9:	e8 77 04 00 00       	call   635 <sleep>
 1be:	83 c4 10             	add    $0x10,%esp
  exit();
 1c1:	e8 df 03 00 00       	call   5a5 <exit>
  if (num) lock_acquire(lk);
 1c6:	83 ec 0c             	sub    $0xc,%esp
 1c9:	ff 35 38 0f 00 00    	push   0xf38
 1cf:	e8 9c 03 00 00       	call   570 <lock_acquire>
  printf(1, "2. this should print %s\n", num ? "second" : "whenever");
 1d4:	83 c4 0c             	add    $0xc,%esp
 1d7:	68 77 0a 00 00       	push   $0xa77
 1dc:	68 7e 0a 00 00       	push   $0xa7e
 1e1:	6a 01                	push   $0x1
 1e3:	e8 28 05 00 00       	call   710 <printf>
  printf(1, "2. sleep for %d ticks\n", SLEEP_TIME);
 1e8:	83 c4 0c             	add    $0xc,%esp
 1eb:	6a 64                	push   $0x64
 1ed:	68 97 0a 00 00       	push   $0xa97
 1f2:	6a 01                	push   $0x1
 1f4:	e8 17 05 00 00       	call   710 <printf>
  sleep(SLEEP_TIME);
 1f9:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 200:	e8 30 04 00 00       	call   635 <sleep>
  if (num) lock_release(lk);
 205:	5a                   	pop    %edx
 206:	ff 35 38 0f 00 00    	push   0xf38
 20c:	e8 7f 03 00 00       	call   590 <lock_release>
 211:	83 c4 10             	add    $0x10,%esp
 214:	eb ab                	jmp    1c1 <f2+0x41>
 216:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 21d:	8d 76 00             	lea    0x0(%esi),%esi

00000220 <f3>:
void f3(void* arg1, void* arg2) {
 220:	55                   	push   %ebp
 221:	89 e5                	mov    %esp,%ebp
 223:	83 ec 08             	sub    $0x8,%esp
  if (num) lock_acquire(lk);
 226:	8b 45 08             	mov    0x8(%ebp),%eax
 229:	8b 08                	mov    (%eax),%ecx
 22b:	85 c9                	test   %ecx,%ecx
 22d:	75 37                	jne    266 <f3+0x46>
  printf(1, "3. this should print %s\n", num ? "third" : "whenever");
 22f:	50                   	push   %eax
 230:	68 6e 0a 00 00       	push   $0xa6e
 235:	68 b4 0a 00 00       	push   $0xab4
 23a:	6a 01                	push   $0x1
 23c:	e8 cf 04 00 00       	call   710 <printf>
  printf(1, "3. sleep for %d ticks\n", SLEEP_TIME);
 241:	83 c4 0c             	add    $0xc,%esp
 244:	6a 64                	push   $0x64
 246:	68 cd 0a 00 00       	push   $0xacd
 24b:	6a 01                	push   $0x1
 24d:	e8 be 04 00 00       	call   710 <printf>
  sleep(SLEEP_TIME);
 252:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 259:	e8 d7 03 00 00       	call   635 <sleep>
 25e:	83 c4 10             	add    $0x10,%esp
  exit();
 261:	e8 3f 03 00 00       	call   5a5 <exit>
  if (num) lock_acquire(lk);
 266:	83 ec 0c             	sub    $0xc,%esp
 269:	ff 35 38 0f 00 00    	push   0xf38
 26f:	e8 fc 02 00 00       	call   570 <lock_acquire>
  printf(1, "3. this should print %s\n", num ? "third" : "whenever");
 274:	83 c4 0c             	add    $0xc,%esp
 277:	68 ae 0a 00 00       	push   $0xaae
 27c:	68 b4 0a 00 00       	push   $0xab4
 281:	6a 01                	push   $0x1
 283:	e8 88 04 00 00       	call   710 <printf>
  printf(1, "3. sleep for %d ticks\n", SLEEP_TIME);
 288:	83 c4 0c             	add    $0xc,%esp
 28b:	6a 64                	push   $0x64
 28d:	68 cd 0a 00 00       	push   $0xacd
 292:	6a 01                	push   $0x1
 294:	e8 77 04 00 00       	call   710 <printf>
  sleep(SLEEP_TIME);
 299:	c7 04 24 64 00 00 00 	movl   $0x64,(%esp)
 2a0:	e8 90 03 00 00       	call   635 <sleep>
  if (num) lock_release(lk);
 2a5:	5a                   	pop    %edx
 2a6:	ff 35 38 0f 00 00    	push   0xf38
 2ac:	e8 df 02 00 00       	call   590 <lock_release>
 2b1:	83 c4 10             	add    $0x10,%esp
 2b4:	eb ab                	jmp    261 <f3+0x41>
 2b6:	66 90                	xchg   %ax,%ax
 2b8:	66 90                	xchg   %ax,%ax
 2ba:	66 90                	xchg   %ax,%ax
 2bc:	66 90                	xchg   %ax,%ax
 2be:	66 90                	xchg   %ax,%ax

000002c0 <strcpy>:
#include "mmu.h"  // dealing with low-level memory management tasks
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 2c0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 2c1:	31 c0                	xor    %eax,%eax
{
 2c3:	89 e5                	mov    %esp,%ebp
 2c5:	53                   	push   %ebx
 2c6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2c9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 2cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 2d0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 2d4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 2d7:	83 c0 01             	add    $0x1,%eax
 2da:	84 d2                	test   %dl,%dl
 2dc:	75 f2                	jne    2d0 <strcpy+0x10>
    ;
  return os;
}
 2de:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 2e1:	89 c8                	mov    %ecx,%eax
 2e3:	c9                   	leave  
 2e4:	c3                   	ret    
 2e5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000002f0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	53                   	push   %ebx
 2f4:	8b 55 08             	mov    0x8(%ebp),%edx
 2f7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 2fa:	0f b6 02             	movzbl (%edx),%eax
 2fd:	84 c0                	test   %al,%al
 2ff:	75 17                	jne    318 <strcmp+0x28>
 301:	eb 3a                	jmp    33d <strcmp+0x4d>
 303:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 307:	90                   	nop
 308:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 30c:	83 c2 01             	add    $0x1,%edx
 30f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 312:	84 c0                	test   %al,%al
 314:	74 1a                	je     330 <strcmp+0x40>
    p++, q++;
 316:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 318:	0f b6 19             	movzbl (%ecx),%ebx
 31b:	38 c3                	cmp    %al,%bl
 31d:	74 e9                	je     308 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 31f:	29 d8                	sub    %ebx,%eax
}
 321:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 324:	c9                   	leave  
 325:	c3                   	ret    
 326:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 32d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 330:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 334:	31 c0                	xor    %eax,%eax
 336:	29 d8                	sub    %ebx,%eax
}
 338:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 33b:	c9                   	leave  
 33c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 33d:	0f b6 19             	movzbl (%ecx),%ebx
 340:	31 c0                	xor    %eax,%eax
 342:	eb db                	jmp    31f <strcmp+0x2f>
 344:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 34b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 34f:	90                   	nop

00000350 <strlen>:

uint
strlen(const char *s)
{
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 356:	80 3a 00             	cmpb   $0x0,(%edx)
 359:	74 15                	je     370 <strlen+0x20>
 35b:	31 c0                	xor    %eax,%eax
 35d:	8d 76 00             	lea    0x0(%esi),%esi
 360:	83 c0 01             	add    $0x1,%eax
 363:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 367:	89 c1                	mov    %eax,%ecx
 369:	75 f5                	jne    360 <strlen+0x10>
    ;
  return n;
}
 36b:	89 c8                	mov    %ecx,%eax
 36d:	5d                   	pop    %ebp
 36e:	c3                   	ret    
 36f:	90                   	nop
  for(n = 0; s[n]; n++)
 370:	31 c9                	xor    %ecx,%ecx
}
 372:	5d                   	pop    %ebp
 373:	89 c8                	mov    %ecx,%eax
 375:	c3                   	ret    
 376:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 37d:	8d 76 00             	lea    0x0(%esi),%esi

00000380 <memset>:

void*
memset(void *dst, int c, uint n)
{
 380:	55                   	push   %ebp
 381:	89 e5                	mov    %esp,%ebp
 383:	57                   	push   %edi
 384:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 387:	8b 4d 10             	mov    0x10(%ebp),%ecx
 38a:	8b 45 0c             	mov    0xc(%ebp),%eax
 38d:	89 d7                	mov    %edx,%edi
 38f:	fc                   	cld    
 390:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 392:	8b 7d fc             	mov    -0x4(%ebp),%edi
 395:	89 d0                	mov    %edx,%eax
 397:	c9                   	leave  
 398:	c3                   	ret    
 399:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003a0 <strchr>:

char*
strchr(const char *s, char c)
{
 3a0:	55                   	push   %ebp
 3a1:	89 e5                	mov    %esp,%ebp
 3a3:	8b 45 08             	mov    0x8(%ebp),%eax
 3a6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 3aa:	0f b6 10             	movzbl (%eax),%edx
 3ad:	84 d2                	test   %dl,%dl
 3af:	75 12                	jne    3c3 <strchr+0x23>
 3b1:	eb 1d                	jmp    3d0 <strchr+0x30>
 3b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3b7:	90                   	nop
 3b8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 3bc:	83 c0 01             	add    $0x1,%eax
 3bf:	84 d2                	test   %dl,%dl
 3c1:	74 0d                	je     3d0 <strchr+0x30>
    if(*s == c)
 3c3:	38 d1                	cmp    %dl,%cl
 3c5:	75 f1                	jne    3b8 <strchr+0x18>
      return (char*)s;
  return 0;
}
 3c7:	5d                   	pop    %ebp
 3c8:	c3                   	ret    
 3c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 3d0:	31 c0                	xor    %eax,%eax
}
 3d2:	5d                   	pop    %ebp
 3d3:	c3                   	ret    
 3d4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3df:	90                   	nop

000003e0 <gets>:

char*
gets(char *buf, int max)
{
 3e0:	55                   	push   %ebp
 3e1:	89 e5                	mov    %esp,%ebp
 3e3:	57                   	push   %edi
 3e4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 3e5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 3e8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 3e9:	31 db                	xor    %ebx,%ebx
{
 3eb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 3ee:	eb 27                	jmp    417 <gets+0x37>
    cc = read(0, &c, 1);
 3f0:	83 ec 04             	sub    $0x4,%esp
 3f3:	6a 01                	push   $0x1
 3f5:	57                   	push   %edi
 3f6:	6a 00                	push   $0x0
 3f8:	e8 c0 01 00 00       	call   5bd <read>
    if(cc < 1)
 3fd:	83 c4 10             	add    $0x10,%esp
 400:	85 c0                	test   %eax,%eax
 402:	7e 1d                	jle    421 <gets+0x41>
      break;
    buf[i++] = c;
 404:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 408:	8b 55 08             	mov    0x8(%ebp),%edx
 40b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 40f:	3c 0a                	cmp    $0xa,%al
 411:	74 1d                	je     430 <gets+0x50>
 413:	3c 0d                	cmp    $0xd,%al
 415:	74 19                	je     430 <gets+0x50>
  for(i=0; i+1 < max; ){
 417:	89 de                	mov    %ebx,%esi
 419:	83 c3 01             	add    $0x1,%ebx
 41c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 41f:	7c cf                	jl     3f0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 421:	8b 45 08             	mov    0x8(%ebp),%eax
 424:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 428:	8d 65 f4             	lea    -0xc(%ebp),%esp
 42b:	5b                   	pop    %ebx
 42c:	5e                   	pop    %esi
 42d:	5f                   	pop    %edi
 42e:	5d                   	pop    %ebp
 42f:	c3                   	ret    
  buf[i] = '\0';
 430:	8b 45 08             	mov    0x8(%ebp),%eax
 433:	89 de                	mov    %ebx,%esi
 435:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 439:	8d 65 f4             	lea    -0xc(%ebp),%esp
 43c:	5b                   	pop    %ebx
 43d:	5e                   	pop    %esi
 43e:	5f                   	pop    %edi
 43f:	5d                   	pop    %ebp
 440:	c3                   	ret    
 441:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 448:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 44f:	90                   	nop

00000450 <stat>:

int
stat(const char *n, struct stat *st)
{
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	56                   	push   %esi
 454:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 455:	83 ec 08             	sub    $0x8,%esp
 458:	6a 00                	push   $0x0
 45a:	ff 75 08             	push   0x8(%ebp)
 45d:	e8 83 01 00 00       	call   5e5 <open>
  if(fd < 0)
 462:	83 c4 10             	add    $0x10,%esp
 465:	85 c0                	test   %eax,%eax
 467:	78 27                	js     490 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 469:	83 ec 08             	sub    $0x8,%esp
 46c:	ff 75 0c             	push   0xc(%ebp)
 46f:	89 c3                	mov    %eax,%ebx
 471:	50                   	push   %eax
 472:	e8 86 01 00 00       	call   5fd <fstat>
  close(fd);
 477:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 47a:	89 c6                	mov    %eax,%esi
  close(fd);
 47c:	e8 4c 01 00 00       	call   5cd <close>
  return r;
 481:	83 c4 10             	add    $0x10,%esp
}
 484:	8d 65 f8             	lea    -0x8(%ebp),%esp
 487:	89 f0                	mov    %esi,%eax
 489:	5b                   	pop    %ebx
 48a:	5e                   	pop    %esi
 48b:	5d                   	pop    %ebp
 48c:	c3                   	ret    
 48d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 490:	be ff ff ff ff       	mov    $0xffffffff,%esi
 495:	eb ed                	jmp    484 <stat+0x34>
 497:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 49e:	66 90                	xchg   %ax,%ax

000004a0 <atoi>:

int
atoi(const char *s)
{
 4a0:	55                   	push   %ebp
 4a1:	89 e5                	mov    %esp,%ebp
 4a3:	53                   	push   %ebx
 4a4:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 4a7:	0f be 02             	movsbl (%edx),%eax
 4aa:	8d 48 d0             	lea    -0x30(%eax),%ecx
 4ad:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 4b0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 4b5:	77 1e                	ja     4d5 <atoi+0x35>
 4b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4be:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 4c0:	83 c2 01             	add    $0x1,%edx
 4c3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 4c6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 4ca:	0f be 02             	movsbl (%edx),%eax
 4cd:	8d 58 d0             	lea    -0x30(%eax),%ebx
 4d0:	80 fb 09             	cmp    $0x9,%bl
 4d3:	76 eb                	jbe    4c0 <atoi+0x20>
  return n;
}
 4d5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 4d8:	89 c8                	mov    %ecx,%eax
 4da:	c9                   	leave  
 4db:	c3                   	ret    
 4dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004e0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	57                   	push   %edi
 4e4:	8b 45 10             	mov    0x10(%ebp),%eax
 4e7:	8b 55 08             	mov    0x8(%ebp),%edx
 4ea:	56                   	push   %esi
 4eb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 4ee:	85 c0                	test   %eax,%eax
 4f0:	7e 13                	jle    505 <memmove+0x25>
 4f2:	01 d0                	add    %edx,%eax
  dst = vdst;
 4f4:	89 d7                	mov    %edx,%edi
 4f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4fd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 500:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 501:	39 f8                	cmp    %edi,%eax
 503:	75 fb                	jne    500 <memmove+0x20>
  return vdst;
}
 505:	5e                   	pop    %esi
 506:	89 d0                	mov    %edx,%eax
 508:	5f                   	pop    %edi
 509:	5d                   	pop    %ebp
 50a:	c3                   	ret    
 50b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 50f:	90                   	nop

00000510 <thread_create>:

// defining functions bodies
int thread_create(void (*start_routine)(void *, void *), void* arg1, void* arg2)
{
 510:	55                   	push   %ebp
 511:	89 e5                	mov    %esp,%ebp
 513:	83 ec 14             	sub    $0x14,%esp
  void* threadStack;
  threadStack = malloc(PGSIZE); // taking memory for a page size
 516:	68 00 10 00 00       	push   $0x1000
 51b:	e8 20 04 00 00       	call   940 <malloc>

  return clone(start_routine, arg1, arg2, threadStack);
 520:	50                   	push   %eax
 521:	ff 75 10             	push   0x10(%ebp)
 524:	ff 75 0c             	push   0xc(%ebp)
 527:	ff 75 08             	push   0x8(%ebp)
 52a:	e8 16 01 00 00       	call   645 <clone>
}
 52f:	c9                   	leave  
 530:	c3                   	ret    
 531:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 538:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 53f:	90                   	nop

00000540 <thread_join>:

int thread_join()
{
 540:	55                   	push   %ebp
 541:	89 e5                	mov    %esp,%ebp
 543:	83 ec 24             	sub    $0x24,%esp
  void * stackPtr;
  int x = join(&stackPtr);
 546:	8d 45 f4             	lea    -0xc(%ebp),%eax
 549:	50                   	push   %eax
 54a:	e8 fe 00 00 00       	call   64d <join>
  return x;
}
 54f:	c9                   	leave  
 550:	c3                   	ret    
 551:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 558:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 55f:	90                   	nop

00000560 <lock_init>:

int lock_init(lock_thread *lk)
{
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
  lk->isLocked = 0;
 563:	8b 45 08             	mov    0x8(%ebp),%eax
 566:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  return 0;
}
 56c:	31 c0                	xor    %eax,%eax
 56e:	5d                   	pop    %ebp
 56f:	c3                   	ret    

00000570 <lock_acquire>:

void lock_acquire(lock_thread *lk){
 570:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
 571:	b9 01 00 00 00       	mov    $0x1,%ecx
 576:	89 e5                	mov    %esp,%ebp
 578:	8b 55 08             	mov    0x8(%ebp),%edx
 57b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 57f:	90                   	nop
 580:	89 c8                	mov    %ecx,%eax
 582:	f0 87 02             	lock xchg %eax,(%edx)
  //prevent interruption .
  //take a pointer to a lock_thread structure as an argument and returns nothing (void).
  while(xchg(&lk->isLocked, 1) != 0);
 585:	85 c0                	test   %eax,%eax
 587:	75 f7                	jne    580 <lock_acquire+0x10>
}
 589:	5d                   	pop    %ebp
 58a:	c3                   	ret    
 58b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 58f:	90                   	nop

00000590 <lock_release>:

void lock_release(lock_thread *lk){
 590:	55                   	push   %ebp
 591:	31 c0                	xor    %eax,%eax
 593:	89 e5                	mov    %esp,%ebp
 595:	8b 55 08             	mov    0x8(%ebp),%edx
 598:	f0 87 02             	lock xchg %eax,(%edx)
  // xchg = exchange
	xchg(&lk->isLocked, 0);
 59b:	5d                   	pop    %ebp
 59c:	c3                   	ret    

0000059d <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 59d:	b8 01 00 00 00       	mov    $0x1,%eax
 5a2:	cd 40                	int    $0x40
 5a4:	c3                   	ret    

000005a5 <exit>:
SYSCALL(exit)
 5a5:	b8 02 00 00 00       	mov    $0x2,%eax
 5aa:	cd 40                	int    $0x40
 5ac:	c3                   	ret    

000005ad <wait>:
SYSCALL(wait)
 5ad:	b8 03 00 00 00       	mov    $0x3,%eax
 5b2:	cd 40                	int    $0x40
 5b4:	c3                   	ret    

000005b5 <pipe>:
SYSCALL(pipe)
 5b5:	b8 04 00 00 00       	mov    $0x4,%eax
 5ba:	cd 40                	int    $0x40
 5bc:	c3                   	ret    

000005bd <read>:
SYSCALL(read)
 5bd:	b8 05 00 00 00       	mov    $0x5,%eax
 5c2:	cd 40                	int    $0x40
 5c4:	c3                   	ret    

000005c5 <write>:
SYSCALL(write)
 5c5:	b8 10 00 00 00       	mov    $0x10,%eax
 5ca:	cd 40                	int    $0x40
 5cc:	c3                   	ret    

000005cd <close>:
SYSCALL(close)
 5cd:	b8 15 00 00 00       	mov    $0x15,%eax
 5d2:	cd 40                	int    $0x40
 5d4:	c3                   	ret    

000005d5 <kill>:
SYSCALL(kill)
 5d5:	b8 06 00 00 00       	mov    $0x6,%eax
 5da:	cd 40                	int    $0x40
 5dc:	c3                   	ret    

000005dd <exec>:
SYSCALL(exec)
 5dd:	b8 07 00 00 00       	mov    $0x7,%eax
 5e2:	cd 40                	int    $0x40
 5e4:	c3                   	ret    

000005e5 <open>:
SYSCALL(open)
 5e5:	b8 0f 00 00 00       	mov    $0xf,%eax
 5ea:	cd 40                	int    $0x40
 5ec:	c3                   	ret    

000005ed <mknod>:
SYSCALL(mknod)
 5ed:	b8 11 00 00 00       	mov    $0x11,%eax
 5f2:	cd 40                	int    $0x40
 5f4:	c3                   	ret    

000005f5 <unlink>:
SYSCALL(unlink)
 5f5:	b8 12 00 00 00       	mov    $0x12,%eax
 5fa:	cd 40                	int    $0x40
 5fc:	c3                   	ret    

000005fd <fstat>:
SYSCALL(fstat)
 5fd:	b8 08 00 00 00       	mov    $0x8,%eax
 602:	cd 40                	int    $0x40
 604:	c3                   	ret    

00000605 <link>:
SYSCALL(link)
 605:	b8 13 00 00 00       	mov    $0x13,%eax
 60a:	cd 40                	int    $0x40
 60c:	c3                   	ret    

0000060d <mkdir>:
SYSCALL(mkdir)
 60d:	b8 14 00 00 00       	mov    $0x14,%eax
 612:	cd 40                	int    $0x40
 614:	c3                   	ret    

00000615 <chdir>:
SYSCALL(chdir)
 615:	b8 09 00 00 00       	mov    $0x9,%eax
 61a:	cd 40                	int    $0x40
 61c:	c3                   	ret    

0000061d <dup>:
SYSCALL(dup)
 61d:	b8 0a 00 00 00       	mov    $0xa,%eax
 622:	cd 40                	int    $0x40
 624:	c3                   	ret    

00000625 <getpid>:
SYSCALL(getpid)
 625:	b8 0b 00 00 00       	mov    $0xb,%eax
 62a:	cd 40                	int    $0x40
 62c:	c3                   	ret    

0000062d <sbrk>:
SYSCALL(sbrk)
 62d:	b8 0c 00 00 00       	mov    $0xc,%eax
 632:	cd 40                	int    $0x40
 634:	c3                   	ret    

00000635 <sleep>:
SYSCALL(sleep)
 635:	b8 0d 00 00 00       	mov    $0xd,%eax
 63a:	cd 40                	int    $0x40
 63c:	c3                   	ret    

0000063d <uptime>:
SYSCALL(uptime)
 63d:	b8 0e 00 00 00       	mov    $0xe,%eax
 642:	cd 40                	int    $0x40
 644:	c3                   	ret    

00000645 <clone>:
SYSCALL(clone)
 645:	b8 16 00 00 00       	mov    $0x16,%eax
 64a:	cd 40                	int    $0x40
 64c:	c3                   	ret    

0000064d <join>:
SYSCALL(join) 
 64d:	b8 17 00 00 00       	mov    $0x17,%eax
 652:	cd 40                	int    $0x40
 654:	c3                   	ret    
 655:	66 90                	xchg   %ax,%ax
 657:	66 90                	xchg   %ax,%ax
 659:	66 90                	xchg   %ax,%ax
 65b:	66 90                	xchg   %ax,%ax
 65d:	66 90                	xchg   %ax,%ax
 65f:	90                   	nop

00000660 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 660:	55                   	push   %ebp
 661:	89 e5                	mov    %esp,%ebp
 663:	57                   	push   %edi
 664:	56                   	push   %esi
 665:	53                   	push   %ebx
 666:	83 ec 3c             	sub    $0x3c,%esp
 669:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 66c:	89 d1                	mov    %edx,%ecx
{
 66e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 671:	85 d2                	test   %edx,%edx
 673:	0f 89 7f 00 00 00    	jns    6f8 <printint+0x98>
 679:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 67d:	74 79                	je     6f8 <printint+0x98>
    neg = 1;
 67f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 686:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 688:	31 db                	xor    %ebx,%ebx
 68a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 68d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 690:	89 c8                	mov    %ecx,%eax
 692:	31 d2                	xor    %edx,%edx
 694:	89 cf                	mov    %ecx,%edi
 696:	f7 75 c4             	divl   -0x3c(%ebp)
 699:	0f b6 92 94 0b 00 00 	movzbl 0xb94(%edx),%edx
 6a0:	89 45 c0             	mov    %eax,-0x40(%ebp)
 6a3:	89 d8                	mov    %ebx,%eax
 6a5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 6a8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 6ab:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 6ae:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 6b1:	76 dd                	jbe    690 <printint+0x30>
  if(neg)
 6b3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 6b6:	85 c9                	test   %ecx,%ecx
 6b8:	74 0c                	je     6c6 <printint+0x66>
    buf[i++] = '-';
 6ba:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 6bf:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 6c1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 6c6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 6c9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 6cd:	eb 07                	jmp    6d6 <printint+0x76>
 6cf:	90                   	nop
    putc(fd, buf[i]);
 6d0:	0f b6 13             	movzbl (%ebx),%edx
 6d3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 6d6:	83 ec 04             	sub    $0x4,%esp
 6d9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 6dc:	6a 01                	push   $0x1
 6de:	56                   	push   %esi
 6df:	57                   	push   %edi
 6e0:	e8 e0 fe ff ff       	call   5c5 <write>
  while(--i >= 0)
 6e5:	83 c4 10             	add    $0x10,%esp
 6e8:	39 de                	cmp    %ebx,%esi
 6ea:	75 e4                	jne    6d0 <printint+0x70>
}
 6ec:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6ef:	5b                   	pop    %ebx
 6f0:	5e                   	pop    %esi
 6f1:	5f                   	pop    %edi
 6f2:	5d                   	pop    %ebp
 6f3:	c3                   	ret    
 6f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 6f8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 6ff:	eb 87                	jmp    688 <printint+0x28>
 701:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 708:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 70f:	90                   	nop

00000710 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 710:	55                   	push   %ebp
 711:	89 e5                	mov    %esp,%ebp
 713:	57                   	push   %edi
 714:	56                   	push   %esi
 715:	53                   	push   %ebx
 716:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 719:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 71c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 71f:	0f b6 13             	movzbl (%ebx),%edx
 722:	84 d2                	test   %dl,%dl
 724:	74 6a                	je     790 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 726:	8d 45 10             	lea    0x10(%ebp),%eax
 729:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 72c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 72f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 731:	89 45 d0             	mov    %eax,-0x30(%ebp)
 734:	eb 36                	jmp    76c <printf+0x5c>
 736:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 73d:	8d 76 00             	lea    0x0(%esi),%esi
 740:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 743:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 748:	83 f8 25             	cmp    $0x25,%eax
 74b:	74 15                	je     762 <printf+0x52>
  write(fd, &c, 1);
 74d:	83 ec 04             	sub    $0x4,%esp
 750:	88 55 e7             	mov    %dl,-0x19(%ebp)
 753:	6a 01                	push   $0x1
 755:	57                   	push   %edi
 756:	56                   	push   %esi
 757:	e8 69 fe ff ff       	call   5c5 <write>
 75c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 75f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 762:	0f b6 13             	movzbl (%ebx),%edx
 765:	83 c3 01             	add    $0x1,%ebx
 768:	84 d2                	test   %dl,%dl
 76a:	74 24                	je     790 <printf+0x80>
    c = fmt[i] & 0xff;
 76c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 76f:	85 c9                	test   %ecx,%ecx
 771:	74 cd                	je     740 <printf+0x30>
      }
    } else if(state == '%'){
 773:	83 f9 25             	cmp    $0x25,%ecx
 776:	75 ea                	jne    762 <printf+0x52>
      if(c == 'd'){
 778:	83 f8 25             	cmp    $0x25,%eax
 77b:	0f 84 07 01 00 00    	je     888 <printf+0x178>
 781:	83 e8 63             	sub    $0x63,%eax
 784:	83 f8 15             	cmp    $0x15,%eax
 787:	77 17                	ja     7a0 <printf+0x90>
 789:	ff 24 85 3c 0b 00 00 	jmp    *0xb3c(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 790:	8d 65 f4             	lea    -0xc(%ebp),%esp
 793:	5b                   	pop    %ebx
 794:	5e                   	pop    %esi
 795:	5f                   	pop    %edi
 796:	5d                   	pop    %ebp
 797:	c3                   	ret    
 798:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 79f:	90                   	nop
  write(fd, &c, 1);
 7a0:	83 ec 04             	sub    $0x4,%esp
 7a3:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 7a6:	6a 01                	push   $0x1
 7a8:	57                   	push   %edi
 7a9:	56                   	push   %esi
 7aa:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 7ae:	e8 12 fe ff ff       	call   5c5 <write>
        putc(fd, c);
 7b3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 7b7:	83 c4 0c             	add    $0xc,%esp
 7ba:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7bd:	6a 01                	push   $0x1
 7bf:	57                   	push   %edi
 7c0:	56                   	push   %esi
 7c1:	e8 ff fd ff ff       	call   5c5 <write>
        putc(fd, c);
 7c6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7c9:	31 c9                	xor    %ecx,%ecx
 7cb:	eb 95                	jmp    762 <printf+0x52>
 7cd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 7d0:	83 ec 0c             	sub    $0xc,%esp
 7d3:	b9 10 00 00 00       	mov    $0x10,%ecx
 7d8:	6a 00                	push   $0x0
 7da:	8b 45 d0             	mov    -0x30(%ebp),%eax
 7dd:	8b 10                	mov    (%eax),%edx
 7df:	89 f0                	mov    %esi,%eax
 7e1:	e8 7a fe ff ff       	call   660 <printint>
        ap++;
 7e6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 7ea:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7ed:	31 c9                	xor    %ecx,%ecx
 7ef:	e9 6e ff ff ff       	jmp    762 <printf+0x52>
 7f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 7f8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 7fb:	8b 10                	mov    (%eax),%edx
        ap++;
 7fd:	83 c0 04             	add    $0x4,%eax
 800:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 803:	85 d2                	test   %edx,%edx
 805:	0f 84 8d 00 00 00    	je     898 <printf+0x188>
        while(*s != 0){
 80b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 80e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 810:	84 c0                	test   %al,%al
 812:	0f 84 4a ff ff ff    	je     762 <printf+0x52>
 818:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 81b:	89 d3                	mov    %edx,%ebx
 81d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 820:	83 ec 04             	sub    $0x4,%esp
          s++;
 823:	83 c3 01             	add    $0x1,%ebx
 826:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 829:	6a 01                	push   $0x1
 82b:	57                   	push   %edi
 82c:	56                   	push   %esi
 82d:	e8 93 fd ff ff       	call   5c5 <write>
        while(*s != 0){
 832:	0f b6 03             	movzbl (%ebx),%eax
 835:	83 c4 10             	add    $0x10,%esp
 838:	84 c0                	test   %al,%al
 83a:	75 e4                	jne    820 <printf+0x110>
      state = 0;
 83c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 83f:	31 c9                	xor    %ecx,%ecx
 841:	e9 1c ff ff ff       	jmp    762 <printf+0x52>
 846:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 84d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 850:	83 ec 0c             	sub    $0xc,%esp
 853:	b9 0a 00 00 00       	mov    $0xa,%ecx
 858:	6a 01                	push   $0x1
 85a:	e9 7b ff ff ff       	jmp    7da <printf+0xca>
 85f:	90                   	nop
        putc(fd, *ap);
 860:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 863:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 866:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 868:	6a 01                	push   $0x1
 86a:	57                   	push   %edi
 86b:	56                   	push   %esi
        putc(fd, *ap);
 86c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 86f:	e8 51 fd ff ff       	call   5c5 <write>
        ap++;
 874:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 878:	83 c4 10             	add    $0x10,%esp
      state = 0;
 87b:	31 c9                	xor    %ecx,%ecx
 87d:	e9 e0 fe ff ff       	jmp    762 <printf+0x52>
 882:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 888:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 88b:	83 ec 04             	sub    $0x4,%esp
 88e:	e9 2a ff ff ff       	jmp    7bd <printf+0xad>
 893:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 897:	90                   	nop
          s = "(null)";
 898:	ba 35 0b 00 00       	mov    $0xb35,%edx
        while(*s != 0){
 89d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 8a0:	b8 28 00 00 00       	mov    $0x28,%eax
 8a5:	89 d3                	mov    %edx,%ebx
 8a7:	e9 74 ff ff ff       	jmp    820 <printf+0x110>
 8ac:	66 90                	xchg   %ax,%ax
 8ae:	66 90                	xchg   %ax,%ax

000008b0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 8b0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8b1:	a1 3c 0f 00 00       	mov    0xf3c,%eax
{
 8b6:	89 e5                	mov    %esp,%ebp
 8b8:	57                   	push   %edi
 8b9:	56                   	push   %esi
 8ba:	53                   	push   %ebx
 8bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 8be:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 8c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8c8:	89 c2                	mov    %eax,%edx
 8ca:	8b 00                	mov    (%eax),%eax
 8cc:	39 ca                	cmp    %ecx,%edx
 8ce:	73 30                	jae    900 <free+0x50>
 8d0:	39 c1                	cmp    %eax,%ecx
 8d2:	72 04                	jb     8d8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 8d4:	39 c2                	cmp    %eax,%edx
 8d6:	72 f0                	jb     8c8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 8d8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 8db:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 8de:	39 f8                	cmp    %edi,%eax
 8e0:	74 30                	je     912 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 8e2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 8e5:	8b 42 04             	mov    0x4(%edx),%eax
 8e8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 8eb:	39 f1                	cmp    %esi,%ecx
 8ed:	74 3a                	je     929 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 8ef:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 8f1:	5b                   	pop    %ebx
  freep = p;
 8f2:	89 15 3c 0f 00 00    	mov    %edx,0xf3c
}
 8f8:	5e                   	pop    %esi
 8f9:	5f                   	pop    %edi
 8fa:	5d                   	pop    %ebp
 8fb:	c3                   	ret    
 8fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 900:	39 c2                	cmp    %eax,%edx
 902:	72 c4                	jb     8c8 <free+0x18>
 904:	39 c1                	cmp    %eax,%ecx
 906:	73 c0                	jae    8c8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 908:	8b 73 fc             	mov    -0x4(%ebx),%esi
 90b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 90e:	39 f8                	cmp    %edi,%eax
 910:	75 d0                	jne    8e2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 912:	03 70 04             	add    0x4(%eax),%esi
 915:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 918:	8b 02                	mov    (%edx),%eax
 91a:	8b 00                	mov    (%eax),%eax
 91c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 91f:	8b 42 04             	mov    0x4(%edx),%eax
 922:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 925:	39 f1                	cmp    %esi,%ecx
 927:	75 c6                	jne    8ef <free+0x3f>
    p->s.size += bp->s.size;
 929:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 92c:	89 15 3c 0f 00 00    	mov    %edx,0xf3c
    p->s.size += bp->s.size;
 932:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 935:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 938:	89 0a                	mov    %ecx,(%edx)
}
 93a:	5b                   	pop    %ebx
 93b:	5e                   	pop    %esi
 93c:	5f                   	pop    %edi
 93d:	5d                   	pop    %ebp
 93e:	c3                   	ret    
 93f:	90                   	nop

00000940 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 940:	55                   	push   %ebp
 941:	89 e5                	mov    %esp,%ebp
 943:	57                   	push   %edi
 944:	56                   	push   %esi
 945:	53                   	push   %ebx
 946:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 949:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 94c:	8b 3d 3c 0f 00 00    	mov    0xf3c,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 952:	8d 70 07             	lea    0x7(%eax),%esi
 955:	c1 ee 03             	shr    $0x3,%esi
 958:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 95b:	85 ff                	test   %edi,%edi
 95d:	0f 84 9d 00 00 00    	je     a00 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 963:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 965:	8b 4a 04             	mov    0x4(%edx),%ecx
 968:	39 f1                	cmp    %esi,%ecx
 96a:	73 6a                	jae    9d6 <malloc+0x96>
 96c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 971:	39 de                	cmp    %ebx,%esi
 973:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 976:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 97d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 980:	eb 17                	jmp    999 <malloc+0x59>
 982:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 988:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 98a:	8b 48 04             	mov    0x4(%eax),%ecx
 98d:	39 f1                	cmp    %esi,%ecx
 98f:	73 4f                	jae    9e0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 991:	8b 3d 3c 0f 00 00    	mov    0xf3c,%edi
 997:	89 c2                	mov    %eax,%edx
 999:	39 d7                	cmp    %edx,%edi
 99b:	75 eb                	jne    988 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 99d:	83 ec 0c             	sub    $0xc,%esp
 9a0:	ff 75 e4             	push   -0x1c(%ebp)
 9a3:	e8 85 fc ff ff       	call   62d <sbrk>
  if(p == (char*)-1)
 9a8:	83 c4 10             	add    $0x10,%esp
 9ab:	83 f8 ff             	cmp    $0xffffffff,%eax
 9ae:	74 1c                	je     9cc <malloc+0x8c>
  hp->s.size = nu;
 9b0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 9b3:	83 ec 0c             	sub    $0xc,%esp
 9b6:	83 c0 08             	add    $0x8,%eax
 9b9:	50                   	push   %eax
 9ba:	e8 f1 fe ff ff       	call   8b0 <free>
  return freep;
 9bf:	8b 15 3c 0f 00 00    	mov    0xf3c,%edx
      if((p = morecore(nunits)) == 0)
 9c5:	83 c4 10             	add    $0x10,%esp
 9c8:	85 d2                	test   %edx,%edx
 9ca:	75 bc                	jne    988 <malloc+0x48>
        return 0;
  }
}
 9cc:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 9cf:	31 c0                	xor    %eax,%eax
}
 9d1:	5b                   	pop    %ebx
 9d2:	5e                   	pop    %esi
 9d3:	5f                   	pop    %edi
 9d4:	5d                   	pop    %ebp
 9d5:	c3                   	ret    
    if(p->s.size >= nunits){
 9d6:	89 d0                	mov    %edx,%eax
 9d8:	89 fa                	mov    %edi,%edx
 9da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 9e0:	39 ce                	cmp    %ecx,%esi
 9e2:	74 4c                	je     a30 <malloc+0xf0>
        p->s.size -= nunits;
 9e4:	29 f1                	sub    %esi,%ecx
 9e6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 9e9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 9ec:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 9ef:	89 15 3c 0f 00 00    	mov    %edx,0xf3c
}
 9f5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 9f8:	83 c0 08             	add    $0x8,%eax
}
 9fb:	5b                   	pop    %ebx
 9fc:	5e                   	pop    %esi
 9fd:	5f                   	pop    %edi
 9fe:	5d                   	pop    %ebp
 9ff:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 a00:	c7 05 3c 0f 00 00 40 	movl   $0xf40,0xf3c
 a07:	0f 00 00 
    base.s.size = 0;
 a0a:	bf 40 0f 00 00       	mov    $0xf40,%edi
    base.s.ptr = freep = prevp = &base;
 a0f:	c7 05 40 0f 00 00 40 	movl   $0xf40,0xf40
 a16:	0f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a19:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 a1b:	c7 05 44 0f 00 00 00 	movl   $0x0,0xf44
 a22:	00 00 00 
    if(p->s.size >= nunits){
 a25:	e9 42 ff ff ff       	jmp    96c <malloc+0x2c>
 a2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 a30:	8b 08                	mov    (%eax),%ecx
 a32:	89 0a                	mov    %ecx,(%edx)
 a34:	eb b9                	jmp    9ef <malloc+0xaf>
