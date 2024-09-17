tribonacci(int):
        push    rbp
        mov     rbp, rsp
        push    rbx
        sub     rsp, 24
        mov     DWORD PTR [rbp-20], edi
        cmp     DWORD PTR [rbp-20], 0
        je      .L2
        cmp     DWORD PTR [rbp-20], 1
        jne     .L3
.L2:
        mov     eax, 0
        jmp     .L4
.L3:
        cmp     DWORD PTR [rbp-20], 2
        jne     .L5
        mov     eax, 1
        jmp     .L4
.L5:
        mov     eax, DWORD PTR [rbp-20]
        sub     eax, 1
        mov     edi, eax
        call    tribonacci(int)
        mov     ebx, eax
        mov     eax, DWORD PTR [rbp-20]
        sub     eax, 2
        mov     edi, eax
        call    tribonacci(int)
        add     ebx, eax
        mov     eax, DWORD PTR [rbp-20]
        sub     eax, 3
        mov     edi, eax
        call    tribonacci(int)
        add     eax, ebx
.L4:
        mov     rbx, QWORD PTR [rbp-8]
        leave
        ret
main:
        push    rbp
        mov     rbp, rsp
        mov     edi, 10
        call    tribonacci(int)
        mov     esi, eax
        mov     edi, OFFSET FLAT:std::cout
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(int)
        mov     esi, OFFSET FLAT:std::basic_ostream<char, std::char_traits<char> >& std::endl<char, std::char_traits<char> >(std::basic_ostream<char, std::char_traits<char> >&)
        mov     rdi, rax
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
        mov     eax, 0
        pop     rbp
        ret
