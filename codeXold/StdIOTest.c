#include <stdio.h>

void stdio_test(void) {
  { int n = 0;
    int *p = &n;

    printf("<%i> <%i> <%li> <%li> <%u> <%lu>\n\n", 123, -123, 123L, -123L, 123, 123L);

    printf("<%6i> <%6i> <%6li> <%6li> <%6u> <%6lu>\n", 123, -123, 123L, -123L, 123, 123L);
    printf("<%+6i> <%+6i> <%+6li> <%+6li> <%+6u> <%+6lu>\n", 123, -123, 123L, -123L, 123, 123L);
    printf("<%-6i> <%-6i> <%-6li> <%-6li> <%-6u> <%-6lu>\n", 123, -123, 123L, -123L, 123, 123L);
    printf("<%+-6i> <%+-6i> <%+-6li> <%+-6li> <%+-6u> <%+-6lu>\n\n", 123, +-123, 123L, +-123L, 123, 123L);

    printf("<%06i> <%06i> <%06li> <%06li> <%06u> <%06lu>\n", 123, -123, 123L, -123L, 123, 123L);
    printf("<%+06i> <%+06i> <%+06li> <%+06li> <%+06u> <%+06lu>\n", 123, -123, 123L, -123L, 123, 123L);
    printf("<%-06i> <%-06i> <%-06li> <%-06li> <%-06u> <%-06lu>\n", 123, -123, 123L, -123L, 123, 123L);
    printf("<%+-06i> <%+-06i> <%+-06li> <%+-06li> <%+-06u> <%+-06lu>\n\n", 123, -123, 123L, -123L, 123, 123L);

    printf("<% 6i> <% 6i> <% 6li> <% 6li> <% 6u> <% 6lu>\n", 123, -123, 123L, -123L, 123, 123L);
    printf("<%+ 6i> <%+ 6i> <%+ 6li> <%+ 6li> <%+ 6u> <%+ 6lu>\n", 123, -123, 123L, -123L, 123, 123L);
    printf("<%- 6i> <%- 6i> <%- 6li> <%- 6li> <%- 6u> <%- 6lu>\n", 123, -123, 123L, -123L, 123, 123L);
    printf("<%+- 6i> <%+- 6i> <%+- 6li> <%+- 6li> <%+- 6u> <%+- 6lu>\n\n", 123, -123, 123L, -123L, 123, 123L);

    printf("<%x> <%X> <%o> <%lx> <%lX> <%lo>\n", 123, 123, 123, 123L, 123L, 123L);
    printf("<%#x> <%#X> <%#o> <%#lx> <%#lX> <%#lo>\n", 123, 123, 123, 123L, 123L, 123L);
    printf("<%%> <%s> <%c> <%p>\n\n", "Hello, World!", 'X', p);

    printf("<%f> <%e> <%E> <%g> <%G>\n", 123.456, 123.456, 123.456, 123456.1, 123456.1);
    printf("<%lf> <%le> <%lE> <%lg> <%lG>\n", 123.456L, 123.456L, 123.456L, 123456.1L, 123456.1L);

    printf("<%#f> <%#e> <%#E> <%#g> <%#G>\n", 123.456, 123.456, 123.456, 123.456, 123.456);
    printf("<%#lf> <%#le> <%#lE> <%#lg> <%#lG>\n", 123.456L, 123.456L, 123.456L, 123.456L, 123.456L);

    printf("<%6.3f> <%6.3e> <%6.3E> <%6.3g> <%6.3G>\n", 123.456, 123.456, 123.456, 123.456, 123.456);
    printf("<%6.3lf> <%6.3le> <%6.3lE> <%6.3lg> <%6.3lG>\n\n", 123.456L, 123.456L, 123.456L, 123.456L, 123.456L);

    //printf("<%f> <%e> <%E> <%g> <%G>\n", -123.456, -123.456, -123.456, -123.456, -123.456);
    //printf("<%lf> <%le> <%lE> <%lg> <%lG>\n", -123.456L, -123.456L, -123.456L, -123.456L, -123.456L);

    printf("<%f> <%e> <%E> <%g> <%G>\n", -123.456, -123.456, -123.456, -0.000000123456, -0.000000123456);
    printf("<%lf> <%le> <%lE> <%lg> <%lG>\n", -123.456L, -123.456L, -123.456L, -0.000000123456L, -0.000000123456L);

    printf("<%#f> <%#e> <%#E> <%#g> <%#G>\n", -123.456, -123.456, -123.456, -123.456, -123.456);
    printf("<%#lf> <%#le> <%#lE> <%#lg> <%#lG>\n", -123.456L, -123.456L, -123.456L, -123.456L, -123.456L);

    printf("<%6.3f> <%6.3e> <%6.3E> <%6.3g> <%6.3G>\n", -123.456, -123.456, -123.456, -123.456, -123.456);
    printf("<%6.3lf> <%6.3le> <%6.3lE> <%6.3lg> <%6.3lG>\n\n", -123.456L, -123.456L, -123.456L, -123.456L, -123.456L);
  }

  { int a = 0, b = 0, n = 0;
    printf("Please write three integers: ");
    sscanf("123 456 789", "%i %*i %i %n", &a, &b, &n);
    printf("<%i> <%i> <%i>\n", a, b, n);
  }

  { char s[100];
    printf("Please write the patterns [abc]: ");
    sscanf("abcdef", "%[abc]", s);
    printf("<%s>\n", s);

    printf("Please write the patterns [^abc]: ");
    sscanf("defabc", "%[^abc]", s);
    printf("<%s>\n\n", s);
  }

  /*{ int a = 0, b = 0, n = 0;
    printf("Please write three integers: ");
    scanf("%i %*i %i %n", &a, &b, &n);
    printf("<%i> <%i> <%i>\n", a, b, n);
  }*/

/*  { char s[100];
    printf("Please write the patterns [abc]: ");
    scanf("%[abc]", s);
    printf("\n<%s>\n", s);

    printf("Please write the patterns [^abc]: ");
    scanf("%[^abc]", s);
    printf("\n<%s>", s);
  }*/
}