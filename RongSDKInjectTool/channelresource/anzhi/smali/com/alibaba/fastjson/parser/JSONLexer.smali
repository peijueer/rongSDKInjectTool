.class public abstract Lcom/alibaba/fastjson/parser/JSONLexer;
.super Ljava/lang/Object;
.source "JSONLexer.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final ARRAY:I = 0x2

.field public static final END:I = 0x4

.field public static final EOI:B = 0x1at

.field protected static final INT_MULTMIN_RADIX_TEN:I = -0xccccccc

.field protected static final INT_N_MULTMAX_RADIX_TEN:I = -0xccccccc

.field protected static final MULTMIN_RADIX_TEN:J = -0xcccccccccccccccL

.field public static final NOT_MATCH:I = -0x1

.field public static final NOT_MATCH_NAME:I = -0x2

.field protected static final N_MULTMAX_RADIX_TEN:J = -0xcccccccccccccccL

.field public static final OBJECT:I = 0x1

.field private static final SBUF_REF_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<[C>;>;"
        }
    .end annotation
.end field

.field public static final UNKOWN:I = 0x0

.field public static final VALUE:I = 0x3

.field protected static final digits:[I

.field protected static final typeFieldName:[C

.field protected static whitespaceFlags:[Z


# instance fields
.field protected bp:I

.field protected calendar:Ljava/util/Calendar;

.field protected ch:C

.field protected eofPos:I

.field protected features:I

.field protected hasSpecial:Z

.field protected keywods:Lcom/alibaba/fastjson/parser/Keywords;

.field public matchStat:I

.field protected np:I

.field protected pos:I

.field protected sbuf:[C

.field protected sp:I

.field protected token:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 86
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->SBUF_REF_LOCAL:Ljava/lang/ThreadLocal;

    .line 1042
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->typeFieldName:[C

    .line 2367
    const/16 v1, 0x100

    new-array v1, v1, [Z

    sput-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->whitespaceFlags:[Z

    .line 2369
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->whitespaceFlags:[Z

    const/16 v2, 0x20

    aput-boolean v3, v1, v2

    .line 2370
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->whitespaceFlags:[Z

    const/16 v2, 0xa

    aput-boolean v3, v1, v2

    .line 2371
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->whitespaceFlags:[Z

    const/16 v2, 0xd

    aput-boolean v3, v1, v2

    .line 2372
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->whitespaceFlags:[Z

    const/16 v2, 0x9

    aput-boolean v3, v1, v2

    .line 2373
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->whitespaceFlags:[Z

    const/16 v2, 0xc

    aput-boolean v3, v1, v2

    .line 2374
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->whitespaceFlags:[Z

    const/16 v2, 0x8

    aput-boolean v3, v1, v2

    .line 2383
    const/16 v1, 0x67

    new-array v1, v1, [I

    sput-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    .line 2386
    const/16 v0, 0x30

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 2387
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v2, v0, -0x30

    aput v2, v1, v0

    .line 2386
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2390
    :cond_0
    const/16 v0, 0x61

    :goto_1
    const/16 v1, 0x66

    if-gt v0, v1, :cond_1

    .line 2391
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    .line 2390
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2393
    :cond_1
    const/16 v0, 0x41

    :goto_2
    const/16 v1, 0x46

    if-gt v0, v1, :cond_2

    .line 2394
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v2, v0, -0x41

    add-int/lit8 v2, v2, 0xa

    aput v2, v1, v0

    .line 2393
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2396
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    .line 82
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 84
    const/4 v1, 0x0

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 87
    sget-object v1, Lcom/alibaba/fastjson/parser/Keywords;->DEFAULT_KEYWORDS:Lcom/alibaba/fastjson/parser/Keywords;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->keywods:Lcom/alibaba/fastjson/parser/Keywords;

    .line 90
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->SBUF_REF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 92
    .local v0, "sbufRef":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<[C>;"
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 94
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->SBUF_REF_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    if-nez v1, :cond_1

    .line 98
    const/16 v1, 0x40

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 100
    :cond_1
    return-void
.end method

.method public static final isWhitespace(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 2364
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
.end method

.method protected abstract arrayCopy(I[CII)V
.end method

.method public abstract bytesValue()[B
.end method

.method public abstract charArrayCompare([C)Z
.end method

.method public abstract charAt(I)C
.end method

.method public close()V
    .locals 3

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v0, v0

    const/16 v1, 0x2000

    if-gt v0, v1, :cond_0

    .line 1029
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexer;->SBUF_REF_LOCAL:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/ref/SoftReference;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1031
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 1032
    return-void
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;
    .param p2, "state"    # Z

    .prologue
    .line 562
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    invoke-static {v0, p1, p2}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    .line 563
    return-void
.end method

.method protected abstract copyTo(II[C)V
.end method

.method public final decimalValue(Z)Ljava/lang/Number;
    .locals 4
    .param p1, "decimal"    # Z

    .prologue
    .line 2325
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 2326
    .local v0, "chLocal":C
    const/16 v1, 0x46

    if-ne v0, v1, :cond_0

    .line 2327
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 2339
    :goto_0
    return-object v1

    .line 2331
    :cond_0
    const/16 v1, 0x44

    if-ne v0, v1, :cond_1

    .line 2332
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 2336
    :cond_1
    if-eqz p1, :cond_2

    .line 2337
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_0

    .line 2339
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0
.end method

.method public final decimalValue()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 2344
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public final getBufferPosition()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    return v0
.end method

.method public getCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public final getCurrent()C
    .locals 1

    .prologue
    .line 574
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return v0
.end method

.method public abstract indexOf(CI)I
.end method

.method public final intValue()I
    .locals 11

    .prologue
    const v6, -0xccccccc

    .line 975
    const/4 v8, 0x0

    .line 976
    .local v8, "result":I
    const/4 v7, 0x0

    .line 977
    .local v7, "negative":Z
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .local v2, "i":I
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int v5, v9, v10

    .line 982
    .local v5, "max":I
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v9

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_3

    .line 983
    const/4 v7, 0x1

    .line 984
    const/high16 v4, -0x80000000

    .line 985
    .local v4, "limit":I
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 989
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-eqz v7, :cond_0

    .line 990
    .local v6, "multmin":I
    :cond_0
    if-ge v3, v5, :cond_1

    .line 991
    sget-object v9, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v10

    aget v1, v9, v10

    .line 992
    .local v1, "digit":I
    neg-int v8, v1

    move v3, v2

    .line 994
    .end local v1    # "digit":I
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_1
    :goto_1
    if-ge v3, v5, :cond_9

    .line 996
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 998
    .local v0, "chLocal":C
    const/16 v9, 0x4c

    if-eq v0, v9, :cond_2

    const/16 v9, 0x53

    if-eq v0, v9, :cond_2

    const/16 v9, 0x42

    if-ne v0, v9, :cond_4

    .line 1014
    .end local v0    # "chLocal":C
    :cond_2
    :goto_2
    if-eqz v7, :cond_8

    .line 1015
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v9, v9, 0x1

    if-le v2, v9, :cond_7

    .line 1021
    .end local v8    # "result":I
    :goto_3
    return v8

    .line 987
    .end local v4    # "limit":I
    .end local v6    # "multmin":I
    .restart local v8    # "result":I
    :cond_3
    const v4, -0x7fffffff

    .restart local v4    # "limit":I
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 1002
    .end local v3    # "i":I
    .restart local v0    # "chLocal":C
    .restart local v2    # "i":I
    .restart local v6    # "multmin":I
    :cond_4
    sget-object v9, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    aget v1, v9, v0

    .line 1004
    .restart local v1    # "digit":I
    if-ge v8, v6, :cond_5

    .line 1005
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1007
    :cond_5
    mul-int/lit8 v8, v8, 0xa

    .line 1008
    add-int v9, v4, v1

    if-ge v8, v9, :cond_6

    .line 1009
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1011
    :cond_6
    sub-int/2addr v8, v1

    move v3, v2

    .line 1012
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 1018
    .end local v0    # "chLocal":C
    .end local v1    # "digit":I
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_7
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1021
    :cond_8
    neg-int v8, v8

    goto :goto_3

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_9
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_2
.end method

.method public final integerValue()Ljava/lang/Number;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const-wide v6, -0xcccccccccccccccL

    const/16 v14, 0x4c

    .line 398
    const-wide/16 v10, 0x0

    .line 399
    .local v10, "result":J
    const/4 v8, 0x0

    .line 400
    .local v8, "negative":Z
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .local v1, "i":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int v3, v12, v13

    .line 405
    .local v3, "max":I
    const/16 v9, 0x20

    .line 407
    .local v9, "type":C
    add-int/lit8 v12, v3, -0x1

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v12

    sparse-switch v12, :sswitch_data_0

    .line 424
    :goto_0
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v12

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_2

    .line 425
    const/4 v8, 0x1

    .line 426
    const-wide/high16 v4, -0x8000000000000000L

    .line 427
    .local v4, "limit":J
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .line 431
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    if-eqz v8, :cond_0

    .line 432
    .local v6, "multmin":J
    :cond_0
    if-ge v2, v3, :cond_1

    .line 433
    sget-object v12, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v13

    aget v0, v12, v13

    .line 434
    .local v0, "digit":I
    neg-int v12, v0

    int-to-long v10, v12

    move v2, v1

    .line 436
    .end local v0    # "digit":I
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_1
    :goto_2
    if-ge v2, v3, :cond_5

    .line 438
    sget-object v12, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v13

    aget v0, v12, v13

    .line 439
    .restart local v0    # "digit":I
    cmp-long v12, v10, v6

    if-gez v12, :cond_3

    .line 440
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 471
    .end local v0    # "digit":I
    :goto_3
    return-object v12

    .line 409
    .end local v4    # "limit":J
    .end local v6    # "multmin":J
    :sswitch_0
    add-int/lit8 v3, v3, -0x1

    .line 410
    const/16 v9, 0x4c

    .line 411
    goto :goto_0

    .line 413
    :sswitch_1
    add-int/lit8 v3, v3, -0x1

    .line 414
    const/16 v9, 0x53

    .line 415
    goto :goto_0

    .line 417
    :sswitch_2
    add-int/lit8 v3, v3, -0x1

    .line 418
    const/16 v9, 0x42

    .line 419
    goto :goto_0

    .line 429
    :cond_2
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .restart local v4    # "limit":J
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 442
    .end local v2    # "i":I
    .restart local v0    # "digit":I
    .restart local v1    # "i":I
    .restart local v6    # "multmin":J
    :cond_3
    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    .line 443
    int-to-long v12, v0

    add-long/2addr v12, v4

    cmp-long v12, v10, v12

    if-gez v12, :cond_4

    .line 444
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 446
    :cond_4
    int-to-long v12, v0

    sub-long/2addr v10, v12

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .line 449
    .end local v0    # "digit":I
    :cond_5
    if-eqz v8, :cond_8

    .line 450
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v12, v12, 0x1

    if-le v2, v12, :cond_7

    .line 451
    const-wide/32 v12, -0x80000000

    cmp-long v12, v10, v12

    if-ltz v12, :cond_6

    if-eq v9, v14, :cond_6

    .line 452
    long-to-int v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .line 454
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_6
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .line 456
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_7
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 459
    :cond_8
    neg-long v10, v10

    .line 460
    const-wide/32 v12, 0x7fffffff

    cmp-long v12, v10, v12

    if-gtz v12, :cond_b

    if-eq v9, v14, :cond_b

    .line 461
    const/16 v12, 0x53

    if-ne v9, v12, :cond_9

    .line 462
    long-to-int v12, v10

    int-to-short v12, v12

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .line 465
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_9
    const/16 v12, 0x42

    if-ne v9, v12, :cond_a

    .line 466
    long-to-int v12, v10

    int-to-byte v12, v12

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .line 469
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_a
    long-to-int v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_3

    .line 471
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_b
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_3

    .line 407
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x4c -> :sswitch_0
        0x53 -> :sswitch_1
    .end sparse-switch
.end method

.method public final isBlankInput()Z
    .locals 3

    .prologue
    .line 2003
    const/4 v1, 0x0

    .line 2004
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 2005
    .local v0, "chLocal":C
    const/16 v2, 0x1a

    if-ne v0, v2, :cond_0

    .line 2014
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 2009
    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2010
    const/4 v2, 0x0

    goto :goto_1

    .line 2003
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public abstract isEOF()Z
.end method

.method public final isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;

    .prologue
    .line 566
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    invoke-static {v0, p1}, Lcom/alibaba/fastjson/parser/Feature;->isEnabled(ILcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    return v0
.end method

.method public final isRef()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1035
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    const/16 v2, 0x24

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected varargs lexError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 58
    return-void
.end method

.method public final longValue()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const-wide v8, -0xcccccccccccccccL

    .line 2275
    const-wide/16 v10, 0x0

    .line 2276
    .local v10, "result":J
    const/4 v7, 0x0

    .line 2277
    .local v7, "negative":Z
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .local v2, "i":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int v6, v12, v13

    .line 2282
    .local v6, "max":I
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v12

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_3

    .line 2283
    const/4 v7, 0x1

    .line 2284
    const-wide/high16 v4, -0x8000000000000000L

    .line 2285
    .local v4, "limit":J
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 2289
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-eqz v7, :cond_0

    .line 2290
    .local v8, "multmin":J
    :cond_0
    if-ge v3, v6, :cond_1

    .line 2291
    sget-object v12, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v13

    aget v1, v12, v13

    .line 2292
    .local v1, "digit":I
    neg-int v12, v1

    int-to-long v10, v12

    move v3, v2

    .line 2294
    .end local v1    # "digit":I
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_1
    :goto_1
    if-ge v3, v6, :cond_9

    .line 2296
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 2298
    .local v0, "chLocal":C
    const/16 v12, 0x4c

    if-eq v0, v12, :cond_2

    const/16 v12, 0x53

    if-eq v0, v12, :cond_2

    const/16 v12, 0x42

    if-ne v0, v12, :cond_4

    .line 2313
    .end local v0    # "chLocal":C
    :cond_2
    :goto_2
    if-eqz v7, :cond_8

    .line 2314
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v12, v12, 0x1

    if-le v2, v12, :cond_7

    .line 2320
    .end local v10    # "result":J
    :goto_3
    return-wide v10

    .line 2287
    .end local v4    # "limit":J
    .end local v8    # "multmin":J
    .restart local v10    # "result":J
    :cond_3
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .restart local v4    # "limit":J
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 2302
    .end local v3    # "i":I
    .restart local v0    # "chLocal":C
    .restart local v2    # "i":I
    .restart local v8    # "multmin":J
    :cond_4
    sget-object v12, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    aget v1, v12, v0

    .line 2303
    .restart local v1    # "digit":I
    cmp-long v12, v10, v8

    if-gez v12, :cond_5

    .line 2304
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2306
    :cond_5
    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    .line 2307
    int-to-long v12, v1

    add-long/2addr v12, v4

    cmp-long v12, v10, v12

    if-gez v12, :cond_6

    .line 2308
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2310
    :cond_6
    int-to-long v12, v1

    sub-long/2addr v10, v12

    move v3, v2

    .line 2311
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 2317
    .end local v0    # "chLocal":C
    .end local v1    # "digit":I
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_7
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2320
    :cond_8
    neg-long v10, v10

    goto :goto_3

    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_9
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_2
.end method

.method public final matchField([C)Z
    .locals 2
    .param p1, "fieldName"    # [C

    .prologue
    .line 1095
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charArrayCompare([C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1096
    const/4 v0, 0x0

    .line 1112
    :goto_0
    return v0

    .line 1099
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1100
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1102
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_1

    .line 1103
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1104
    const/16 v0, 0xc

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1112
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1105
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_2

    .line 1106
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1107
    const/16 v0, 0xe

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    .line 1109
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_1
.end method

.method public final matchStat()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0
.end method

.method public abstract next()C
.end method

.method public final nextIdent()V
    .locals 2

    .prologue
    .line 345
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    .line 348
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanIdent()V

    .line 353
    :goto_1
    return-void

    .line 351
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_1
.end method

.method public final nextToken()V
    .locals 4

    .prologue
    const/16 v2, 0x14

    const/4 v3, 0x0

    .line 107
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 110
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 112
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    .line 204
    :goto_1
    return-void

    .line 117
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 119
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    .line 123
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    .line 124
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    goto :goto_1

    .line 128
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_3

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    goto :goto_1

    .line 133
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    sparse-switch v0, :sswitch_data_0

    .line 192
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEOF()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 193
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v0, v2, :cond_5

    .line 194
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "EOF error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :sswitch_0
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 136
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "Feature.AllowSingleQuotes is false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanStringSingleQuote()V

    goto :goto_1

    .line 146
    :sswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    .line 149
    :sswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanTrue()V

    goto :goto_1

    .line 152
    :sswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanTreeSet()V

    goto :goto_1

    .line 155
    :sswitch_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSet()V

    goto :goto_1

    .line 158
    :sswitch_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFalse()V

    goto :goto_1

    .line 161
    :sswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNullOrNew()V

    goto :goto_1

    .line 164
    :sswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 165
    const/16 v0, 0xa

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    .line 168
    :sswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 169
    const/16 v0, 0xb

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    .line 172
    :sswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 173
    const/16 v0, 0xe

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    .line 176
    :sswitch_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 177
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    .line 180
    :sswitch_b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 181
    const/16 v0, 0xc

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    .line 184
    :sswitch_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 185
    const/16 v0, 0xd

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    .line 188
    :sswitch_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 189
    const/16 v0, 0x11

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    .line 197
    :cond_5
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 198
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->eofPos:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    goto/16 :goto_1

    .line 200
    :cond_6
    const-string v0, "illegal.char"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->lexError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_1

    .line 133
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x27 -> :sswitch_0
        0x28 -> :sswitch_7
        0x29 -> :sswitch_8
        0x3a -> :sswitch_d
        0x53 -> :sswitch_4
        0x54 -> :sswitch_3
        0x5b -> :sswitch_9
        0x5d -> :sswitch_a
        0x66 -> :sswitch_5
        0x6e -> :sswitch_6
        0x74 -> :sswitch_2
        0x7b -> :sswitch_b
        0x7d -> :sswitch_c
    .end sparse-switch
.end method

.method public final nextToken(I)V
    .locals 7
    .param p1, "expect"    # I

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0x7b

    const/16 v4, 0x5b

    const/16 v3, 0xe

    const/16 v2, 0xc

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 214
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 334
    :cond_0
    :pswitch_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v0, v6, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v0, v2, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_e

    .line 335
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    .line 216
    :pswitch_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v5, :cond_2

    .line 217
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 218
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 342
    :goto_1
    return-void

    .line 221
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v4, :cond_0

    .line 222
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 223
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_1

    .line 228
    :pswitch_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_3

    .line 229
    const/16 v0, 0x10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 230
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_1

    .line 234
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_4

    .line 235
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 236
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_1

    .line 240
    :cond_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_5

    .line 241
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 242
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_1

    .line 246
    :cond_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 247
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    .line 252
    :pswitch_3
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_6

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_6

    .line 253
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 254
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    goto :goto_1

    .line 258
    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_7

    .line 259
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 260
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    goto :goto_1

    .line 264
    :cond_7
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v4, :cond_8

    .line 265
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 266
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_1

    .line 270
    :cond_8
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v5, :cond_0

    .line 271
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 272
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_1

    .line 278
    :pswitch_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_9

    .line 279
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 280
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    goto/16 :goto_1

    .line 284
    :cond_9
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_a

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_a

    .line 285
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 286
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    goto/16 :goto_1

    .line 290
    :cond_a
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v4, :cond_b

    .line 291
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 292
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_1

    .line 296
    :cond_b
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v5, :cond_0

    .line 297
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 298
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_1

    .line 303
    :pswitch_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v4, :cond_c

    .line 304
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 305
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_1

    .line 309
    :cond_c
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v5, :cond_0

    .line 310
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 311
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_1

    .line 316
    :pswitch_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_d

    .line 317
    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 318
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_1

    .line 322
    :cond_d
    :pswitch_7
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 323
    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    .line 328
    :pswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextIdent()V

    goto/16 :goto_1

    .line 339
    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_1

    .line 214
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public final nextTokenWithColon()V
    .locals 3

    .prologue
    .line 356
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 359
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 361
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 362
    return-void

    .line 365
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 366
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    .line 370
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not match \':\' - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final nextTokenWithColon(I)V
    .locals 7
    .param p1, "expect"    # I

    .prologue
    const/16 v6, 0x39

    const/16 v5, 0x30

    const/16 v4, 0x22

    const/16 v3, 0xe

    const/16 v2, 0xc

    .line 476
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 479
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 493
    :goto_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 494
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v0, v5, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-gt v0, v6, :cond_2

    .line 495
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 496
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    .line 551
    :goto_2
    return-void

    .line 484
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    .line 489
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not match \':\', actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v4, :cond_9

    .line 501
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 502
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    goto :goto_2

    .line 505
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 506
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v4, :cond_4

    .line 507
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 508
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    goto :goto_2

    .line 512
    :cond_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v0, v5, :cond_9

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-gt v0, v6, :cond_9

    .line 513
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 514
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    goto :goto_2

    .line 518
    :cond_5
    if-ne p1, v2, :cond_7

    .line 519
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_6

    .line 520
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 521
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_2

    .line 524
    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_9

    .line 525
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 526
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_2

    .line 529
    :cond_7
    if-ne p1, v3, :cond_9

    .line 530
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_8

    .line 531
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 532
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_2

    .line 536
    :cond_8
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_9

    .line 537
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 538
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_2

    .line 543
    :cond_9
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 544
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_1

    .line 548
    :cond_a
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_2
.end method

.method public abstract numberString()Ljava/lang/String;
.end method

.method public final numberValue()Ljava/lang/Number;
    .locals 4

    .prologue
    .line 2348
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    .line 2350
    .local v1, "type":C
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v0

    .line 2352
    .local v0, "str":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 2358
    :pswitch_0
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v2

    .line 2354
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    .line 2356
    :pswitch_2
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_0

    .line 2352
    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final pos()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    return v0
.end method

.method protected final putChar(C)V
    .locals 4
    .param p1, "ch"    # C

    .prologue
    const/4 v3, 0x0

    .line 2182
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 2183
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [C

    .line 2184
    .local v0, "newsbuf":[C
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2185
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 2187
    .end local v0    # "newsbuf":[C
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    aput-char p1, v1, v2

    .line 2188
    return-void
.end method

.method public final resetStringPosition()V
    .locals 1

    .prologue
    .line 788
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 789
    return-void
.end method

.method public final scanFalse()V
    .locals 2

    .prologue
    .line 1939
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    .line 1940
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1942
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1944
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x61

    if-eq v0, v1, :cond_1

    .line 1945
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1947
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1949
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_2

    .line 1950
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1952
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1954
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x73

    if-eq v0, v1, :cond_3

    .line 1955
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1957
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1959
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_4

    .line 1960
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse false"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1962
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1964
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 1966
    :cond_5
    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1970
    return-void

    .line 1968
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan false error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scanFieldBoolean([C)Z
    .locals 11
    .param p1, "fieldName"    # [C

    .prologue
    const/16 v10, 0x2c

    const/16 v9, 0x1a

    const/16 v8, 0x10

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 1469
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1471
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charArrayCompare([C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1472
    const/4 v5, -0x2

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v3, v4

    .line 1557
    :goto_0
    return v3

    .line 1476
    :cond_0
    array-length v1, p1

    .line 1477
    .local v1, "offset":I
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1480
    .local v0, "chLocal":C
    const/16 v5, 0x74

    if-ne v0, v5, :cond_4

    .line 1481
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    const/16 v6, 0x72

    if-eq v5, v6, :cond_1

    .line 1482
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v3, v4

    .line 1483
    goto :goto_0

    .line 1485
    :cond_1
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    const/16 v6, 0x75

    if-eq v5, v6, :cond_2

    .line 1486
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v3, v4

    .line 1487
    goto :goto_0

    .line 1489
    :cond_2
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    const/16 v6, 0x65

    if-eq v5, v6, :cond_3

    .line 1490
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v3, v4

    .line 1491
    goto :goto_0

    .line 1494
    :cond_3
    const/4 v3, 0x1

    .line 1519
    .local v3, "value":Z
    :goto_1
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1520
    if-ne v0, v10, :cond_a

    .line 1521
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, -0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1522
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1523
    const/4 v4, 0x3

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1524
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    .line 1495
    .end local v3    # "value":Z
    :cond_4
    const/16 v5, 0x66

    if-ne v0, v5, :cond_9

    .line 1496
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    const/16 v6, 0x61

    if-eq v5, v6, :cond_5

    .line 1497
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v3, v4

    .line 1498
    goto :goto_0

    .line 1500
    :cond_5
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    const/16 v6, 0x6c

    if-eq v5, v6, :cond_6

    .line 1501
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v3, v4

    .line 1502
    goto/16 :goto_0

    .line 1504
    :cond_6
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    const/16 v6, 0x73

    if-eq v5, v6, :cond_7

    .line 1505
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v3, v4

    .line 1506
    goto/16 :goto_0

    .line 1508
    :cond_7
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    const/16 v6, 0x65

    if-eq v5, v6, :cond_8

    .line 1509
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v3, v4

    .line 1510
    goto/16 :goto_0

    .line 1513
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "value":Z
    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_1

    .line 1515
    .end local v1    # "offset":I
    .end local v3    # "value":Z
    .restart local v2    # "offset":I
    :cond_9
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v3, v4

    .line 1516
    goto/16 :goto_0

    .line 1529
    .restart local v3    # "value":Z
    :cond_a
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_f

    .line 1530
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1531
    if-ne v0, v10, :cond_b

    .line 1532
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1533
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v1, -0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1534
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1551
    :goto_2
    const/4 v4, 0x4

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto/16 :goto_0

    .line 1535
    :cond_b
    const/16 v5, 0x5d

    if-ne v0, v5, :cond_c

    .line 1536
    const/16 v4, 0xf

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1537
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v1, -0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1538
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_2

    .line 1539
    :cond_c
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_d

    .line 1540
    const/16 v4, 0xd

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1541
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v1, -0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1542
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_2

    .line 1543
    :cond_d
    if-ne v0, v9, :cond_e

    .line 1544
    const/16 v4, 0x14

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1545
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v1, -0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1546
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_2

    .line 1548
    :cond_e
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v3, v4

    .line 1549
    goto/16 :goto_0

    .line 1553
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :cond_f
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v3, v4

    .line 1554
    goto/16 :goto_0
.end method

.method public final scanFieldDouble([C)D
    .locals 10
    .param p1, "fieldName"    # [C

    .prologue
    .line 1721
    const/4 v8, 0x0

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1723
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charArrayCompare([C)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1724
    const/4 v8, -0x2

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1725
    const-wide/16 v6, 0x0

    .line 1818
    :goto_0
    return-wide v6

    .line 1728
    :cond_0
    array-length v2, p1

    .line 1729
    .local v2, "offset":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1732
    .local v0, "chLocal":C
    const/16 v8, 0x30

    if-lt v0, v8, :cond_7

    const/16 v8, 0x39

    if-gt v0, v8, :cond_7

    move v2, v3

    .line 1734
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :goto_1
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1735
    const/16 v8, 0x30

    if-lt v0, v8, :cond_1

    const/16 v8, 0x39

    if-gt v0, v8, :cond_1

    move v2, v3

    .line 1736
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_1

    .line 1742
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_1
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_3

    .line 1743
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v8, v3

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1744
    const/16 v8, 0x30

    if-lt v0, v8, :cond_2

    const/16 v8, 0x39

    if-gt v0, v8, :cond_2

    .line 1746
    :goto_2
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1747
    const/16 v8, 0x30

    if-lt v0, v8, :cond_3

    const/16 v8, 0x39

    if-gt v0, v8, :cond_3

    move v2, v3

    .line 1748
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_2

    .line 1754
    :cond_2
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1755
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 1759
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_3
    const/16 v8, 0x65

    if-eq v0, v8, :cond_4

    const/16 v8, 0x45

    if-ne v0, v8, :cond_6

    .line 1760
    :cond_4
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v8, v3

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1761
    const/16 v8, 0x2b

    if-eq v0, v8, :cond_5

    const/16 v8, 0x2d

    if-ne v0, v8, :cond_e

    .line 1762
    :cond_5
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1765
    :goto_3
    const/16 v8, 0x30

    if-lt v0, v8, :cond_6

    const/16 v8, 0x39

    if-gt v0, v8, :cond_6

    .line 1766
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v8, v3

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    move v3, v2

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_3

    :cond_6
    move v2, v3

    .line 1773
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    array-length v9, p1

    add-int v4, v8, v9

    .line 1774
    .local v4, "start":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v2

    sub-int/2addr v8, v4

    add-int/lit8 v1, v8, -0x1

    .line 1775
    .local v1, "count":I
    invoke-virtual {p0, v4, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v5

    .line 1776
    .local v5, "text":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 1782
    .local v6, "value":D
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_8

    .line 1783
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v2, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1784
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1785
    const/4 v8, 0x3

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1786
    const/16 v8, 0x10

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_0

    .line 1778
    .end local v1    # "count":I
    .end local v2    # "offset":I
    .end local v4    # "start":I
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "value":D
    .restart local v3    # "offset":I
    :cond_7
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1779
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 1790
    .end local v3    # "offset":I
    .restart local v1    # "count":I
    .restart local v2    # "offset":I
    .restart local v4    # "start":I
    .restart local v5    # "text":Ljava/lang/String;
    .restart local v6    # "value":D
    :cond_8
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_d

    .line 1791
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1792
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_9

    .line 1793
    const/16 v8, 0x10

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1794
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v3, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1795
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1812
    :goto_4
    const/4 v8, 0x4

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto/16 :goto_0

    .line 1796
    :cond_9
    const/16 v8, 0x5d

    if-ne v0, v8, :cond_a

    .line 1797
    const/16 v8, 0xf

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1798
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v3, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1799
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_4

    .line 1800
    :cond_a
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_b

    .line 1801
    const/16 v8, 0xd

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1802
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v3, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1803
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_4

    .line 1804
    :cond_b
    const/16 v8, 0x1a

    if-ne v0, v8, :cond_c

    .line 1805
    const/16 v8, 0x14

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1806
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v3, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1807
    const/16 v8, 0x1a

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_4

    .line 1809
    :cond_c
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1810
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 1814
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :cond_d
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1815
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .end local v1    # "count":I
    .end local v4    # "start":I
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "value":D
    :cond_e
    move v3, v2

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_3
.end method

.method public final scanFieldFloat([C)F
    .locals 13
    .param p1, "fieldName"    # [C

    .prologue
    const/16 v12, 0x10

    const/16 v11, 0x39

    const/16 v9, 0x30

    const/4 v10, -0x1

    const/4 v7, 0x0

    .line 1634
    const/4 v8, 0x0

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1636
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charArrayCompare([C)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1637
    const/4 v8, -0x2

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v6, v7

    .line 1717
    :goto_0
    return v6

    .line 1641
    :cond_0
    array-length v2, p1

    .line 1642
    .local v2, "offset":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1645
    .local v0, "chLocal":C
    if-lt v0, v9, :cond_4

    if-gt v0, v11, :cond_4

    move v2, v3

    .line 1647
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :goto_1
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1648
    if-lt v0, v9, :cond_1

    if-gt v0, v11, :cond_1

    move v2, v3

    .line 1649
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_1

    .line 1655
    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_1
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_3

    .line 1656
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v8, v3

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1657
    if-lt v0, v9, :cond_2

    if-gt v0, v11, :cond_2

    .line 1659
    :goto_2
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1660
    if-lt v0, v9, :cond_3

    if-gt v0, v11, :cond_3

    move v2, v3

    .line 1661
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    goto :goto_2

    .line 1667
    :cond_2
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v6, v7

    .line 1668
    goto :goto_0

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    :cond_3
    move v2, v3

    .line 1672
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    array-length v9, p1

    add-int v4, v8, v9

    .line 1673
    .local v4, "start":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v2

    sub-int/2addr v8, v4

    add-int/lit8 v1, v8, -0x1

    .line 1674
    .local v1, "count":I
    invoke-virtual {p0, v4, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v5

    .line 1675
    .local v5, "text":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 1681
    .local v6, "value":F
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_5

    .line 1682
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v2, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1683
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1684
    const/4 v7, 0x3

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1685
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    .line 1677
    .end local v1    # "count":I
    .end local v2    # "offset":I
    .end local v4    # "start":I
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "value":F
    .restart local v3    # "offset":I
    :cond_4
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v6, v7

    .line 1678
    goto :goto_0

    .line 1689
    .end local v3    # "offset":I
    .restart local v1    # "count":I
    .restart local v2    # "offset":I
    .restart local v4    # "start":I
    .restart local v5    # "text":Ljava/lang/String;
    .restart local v6    # "value":F
    :cond_5
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_a

    .line 1690
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v8, v2

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1691
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_6

    .line 1692
    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1693
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v3, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1694
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1711
    :goto_3
    const/4 v7, 0x4

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto/16 :goto_0

    .line 1695
    :cond_6
    const/16 v8, 0x5d

    if-ne v0, v8, :cond_7

    .line 1696
    const/16 v7, 0xf

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1697
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v3, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1698
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_3

    .line 1699
    :cond_7
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_8

    .line 1700
    const/16 v7, 0xd

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1701
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v3, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1702
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_3

    .line 1703
    :cond_8
    const/16 v8, 0x1a

    if-ne v0, v8, :cond_9

    .line 1704
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v3, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1705
    const/16 v7, 0x14

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1706
    const/16 v7, 0x1a

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_3

    .line 1708
    :cond_9
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v6, v7

    .line 1709
    goto/16 :goto_0

    .line 1713
    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    :cond_a
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v6, v7

    .line 1714
    goto/16 :goto_0
.end method

.method public scanFieldInt([C)I
    .locals 11
    .param p1, "fieldName"    # [C

    .prologue
    const/16 v10, 0x2c

    const/16 v9, 0x1a

    const/16 v8, 0x10

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 1396
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1398
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charArrayCompare([C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1399
    const/4 v5, -0x2

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v3, v4

    .line 1465
    :goto_0
    return v3

    .line 1403
    :cond_0
    array-length v1, p1

    .line 1404
    .local v1, "offset":I
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1407
    .local v0, "chLocal":C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_3

    const/16 v5, 0x39

    if-gt v0, v5, :cond_3

    .line 1408
    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    aget v3, v5, v0

    .local v3, "value":I
    move v1, v2

    .line 1410
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :goto_1
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1411
    const/16 v5, 0x30

    if-lt v0, v5, :cond_1

    const/16 v5, 0x39

    if-gt v0, v5, :cond_1

    .line 1412
    mul-int/lit8 v5, v3, 0xa

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    aget v6, v6, v0

    add-int v3, v5, v6

    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_1

    .line 1413
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :cond_1
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_2

    .line 1414
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v3, v4

    .line 1415
    goto :goto_0

    .line 1420
    :cond_2
    if-gez v3, :cond_4

    .line 1421
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v3, v4

    .line 1422
    goto :goto_0

    .line 1425
    .end local v3    # "value":I
    :cond_3
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v3, v4

    .line 1426
    goto :goto_0

    .line 1429
    .restart local v3    # "value":I
    :cond_4
    if-ne v0, v10, :cond_5

    .line 1430
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, -0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1431
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1432
    const/4 v4, 0x3

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1433
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    .line 1437
    :cond_5
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_a

    .line 1438
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1439
    if-ne v0, v10, :cond_6

    .line 1440
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1441
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v1, -0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1442
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1459
    :goto_2
    const/4 v4, 0x4

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto :goto_0

    .line 1443
    :cond_6
    const/16 v5, 0x5d

    if-ne v0, v5, :cond_7

    .line 1444
    const/16 v4, 0xf

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1445
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v1, -0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1446
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_2

    .line 1447
    :cond_7
    const/16 v5, 0x7d

    if-ne v0, v5, :cond_8

    .line 1448
    const/16 v4, 0xd

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1449
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v1, -0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1450
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_2

    .line 1451
    :cond_8
    if-ne v0, v9, :cond_9

    .line 1452
    const/16 v4, 0x14

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1453
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v1, -0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1454
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_2

    .line 1456
    :cond_9
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v3, v4

    .line 1457
    goto/16 :goto_0

    .line 1461
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :cond_a
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v3, v4

    .line 1462
    goto/16 :goto_0
.end method

.method public scanFieldLong([C)J
    .locals 10
    .param p1, "fieldName"    # [C

    .prologue
    .line 1561
    const/4 v3, 0x0

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1563
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charArrayCompare([C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1564
    const/4 v3, -0x2

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1565
    const-wide/16 v4, 0x0

    .line 1630
    :goto_0
    return-wide v4

    .line 1568
    :cond_0
    array-length v1, p1

    .line 1569
    .local v1, "offset":I
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1572
    .local v0, "chLocal":C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_3

    const/16 v3, 0x39

    if-gt v0, v3, :cond_3

    .line 1573
    sget-object v3, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    aget v3, v3, v0

    int-to-long v4, v3

    .local v4, "value":J
    move v1, v2

    .line 1575
    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    :goto_1
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1576
    const/16 v3, 0x30

    if-lt v0, v3, :cond_1

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    .line 1577
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v4

    sget-object v3, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    aget v3, v3, v0

    int-to-long v8, v3

    add-long v4, v6, v8

    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_1

    .line 1578
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :cond_1
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_2

    .line 1579
    const/4 v3, -0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1580
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 1585
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_4

    .line 1586
    const/4 v3, -0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1587
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 1590
    .end local v4    # "value":J
    :cond_3
    const/4 v3, -0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1591
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 1594
    .restart local v4    # "value":J
    :cond_4
    const/16 v3, 0x2c

    if-ne v0, v3, :cond_5

    .line 1595
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v2, -0x1

    add-int/2addr v3, v6

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1596
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1597
    const/4 v3, 0x3

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1598
    const/16 v3, 0x10

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    .line 1602
    :cond_5
    const/16 v3, 0x7d

    if-ne v0, v3, :cond_a

    .line 1603
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1604
    const/16 v3, 0x2c

    if-ne v0, v3, :cond_6

    .line 1605
    const/16 v3, 0x10

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1606
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v1, -0x1

    add-int/2addr v3, v6

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1607
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1624
    :goto_2
    const/4 v3, 0x4

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto/16 :goto_0

    .line 1608
    :cond_6
    const/16 v3, 0x5d

    if-ne v0, v3, :cond_7

    .line 1609
    const/16 v3, 0xf

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1610
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v1, -0x1

    add-int/2addr v3, v6

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1611
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_2

    .line 1612
    :cond_7
    const/16 v3, 0x7d

    if-ne v0, v3, :cond_8

    .line 1613
    const/16 v3, 0xd

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1614
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v1, -0x1

    add-int/2addr v3, v6

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1615
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_2

    .line 1616
    :cond_8
    const/16 v3, 0x1a

    if-ne v0, v3, :cond_9

    .line 1617
    const/16 v3, 0x14

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1618
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v1, -0x1

    add-int/2addr v3, v6

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1619
    const/16 v3, 0x1a

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_2

    .line 1621
    :cond_9
    const/4 v3, -0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1622
    const-wide/16 v4, 0x0

    goto/16 :goto_0

    .line 1626
    .end local v1    # "offset":I
    .restart local v2    # "offset":I
    :cond_a
    const/4 v3, -0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1627
    const-wide/16 v4, 0x0

    goto/16 :goto_0
.end method

.method public scanFieldString([C)Ljava/lang/String;
    .locals 11
    .param p1, "fieldName"    # [C

    .prologue
    .line 1120
    const/4 v9, 0x0

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1122
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charArrayCompare([C)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1123
    const/4 v9, -0x2

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1124
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue()Ljava/lang/String;

    move-result-object v7

    .line 1201
    :goto_0
    return-object v7

    .line 1129
    :cond_0
    array-length v4, p1

    .line 1130
    .local v4, "offset":I
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .local v5, "offset":I
    add-int/2addr v9, v4

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1132
    .local v0, "chLocal":C
    const/16 v9, 0x22

    if-eq v0, v9, :cond_1

    .line 1133
    const/4 v9, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1135
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1138
    :cond_1
    const/4 v2, 0x0

    .line 1141
    .local v2, "hasSpecial":Z
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    array-length v10, p1

    add-int/2addr v9, v10

    add-int/lit8 v6, v9, 0x1

    .line 1142
    .local v6, "startIndex":I
    const/16 v9, 0x22

    invoke-virtual {p0, v9, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->indexOf(CI)I

    move-result v1

    .line 1143
    .local v1, "endIndex":I
    const/4 v9, -0x1

    if-ne v1, v9, :cond_2

    .line 1144
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    const-string v10, "unclosed str"

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1147
    :cond_2
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    array-length v10, p1

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    sub-int v10, v1, v6

    invoke-virtual {p0, v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v8

    .line 1148
    .local v8, "stringVal":Ljava/lang/String;
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    array-length v10, p1

    add-int/2addr v9, v10

    add-int/lit8 v3, v9, 0x1

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 1149
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v9

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_4

    .line 1150
    const/4 v2, 0x1

    .line 1155
    :cond_3
    if-eqz v2, :cond_5

    .line 1156
    const/4 v9, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1158
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 1148
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1161
    :cond_5
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    array-length v10, p1

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x1

    sub-int v9, v1, v9

    add-int/lit8 v9, v9, 0x1

    add-int v4, v5, v9

    .line 1162
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v9, v4

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1163
    move-object v7, v8

    .line 1166
    .local v7, "strVal":Ljava/lang/String;
    const/16 v9, 0x2c

    if-ne v0, v9, :cond_6

    .line 1167
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v5, -0x1

    add-int/2addr v9, v10

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1168
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1169
    const/4 v9, 0x3

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto :goto_0

    .line 1173
    :cond_6
    const/16 v9, 0x7d

    if-ne v0, v9, :cond_b

    .line 1174
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    add-int/2addr v9, v5

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1175
    const/16 v9, 0x2c

    if-ne v0, v9, :cond_7

    .line 1176
    const/16 v9, 0x10

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1177
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v4, -0x1

    add-int/2addr v9, v10

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1178
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1195
    :goto_2
    const/4 v9, 0x4

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto/16 :goto_0

    .line 1179
    :cond_7
    const/16 v9, 0x5d

    if-ne v0, v9, :cond_8

    .line 1180
    const/16 v9, 0xf

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1181
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v4, -0x1

    add-int/2addr v9, v10

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1182
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_2

    .line 1183
    :cond_8
    const/16 v9, 0x7d

    if-ne v0, v9, :cond_9

    .line 1184
    const/16 v9, 0xd

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1185
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v4, -0x1

    add-int/2addr v9, v10

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1186
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_2

    .line 1187
    :cond_9
    const/16 v9, 0x1a

    if-ne v0, v9, :cond_a

    .line 1188
    const/16 v9, 0x14

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1189
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v4, -0x1

    add-int/2addr v9, v10

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1190
    const/16 v9, 0x1a

    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_2

    .line 1192
    :cond_a
    const/4 v9, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1193
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 1197
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_b
    const/4 v9, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1198
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0
.end method

.method public scanFieldStringArray([CLjava/lang/Class;)Ljava/util/Collection;
    .locals 11
    .param p1, "fieldName"    # [C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1283
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1285
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charArrayCompare([C)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1286
    const/4 v9, -0x2

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1287
    const/4 v3, 0x0

    .line 1392
    :goto_0
    return-object v3

    .line 1292
    :cond_0
    const-class v9, Ljava/util/HashSet;

    invoke-virtual {p2, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1293
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1306
    .local v3, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_1
    array-length v4, p1

    .line 1307
    .local v4, "offset":I
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .local v5, "offset":I
    add-int/2addr v9, v4

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1309
    .local v0, "chLocal":C
    const/16 v9, 0x5b

    if-eq v0, v9, :cond_3

    .line 1310
    const/4 v9, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1311
    const/4 v3, 0x0

    goto :goto_0

    .line 1294
    .end local v0    # "chLocal":C
    .end local v3    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v5    # "offset":I
    :cond_1
    const-class v9, Ljava/util/ArrayList;

    invoke-virtual {p2, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1295
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .restart local v3    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto :goto_1

    .line 1298
    .end local v3    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto :goto_1

    .line 1299
    .end local v3    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 1300
    .local v1, "e":Ljava/lang/Exception;
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 1314
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "chLocal":C
    .restart local v3    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v5    # "offset":I
    :cond_3
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    add-int/2addr v9, v5

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1317
    :goto_2
    const/16 v9, 0x22

    if-eq v0, v9, :cond_4

    .line 1318
    const/4 v9, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1319
    const/4 v3, 0x0

    goto :goto_0

    .line 1324
    :cond_4
    move v7, v4

    .line 1326
    .local v7, "startOffset":I
    :goto_3
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v9, v4

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1327
    const/16 v9, 0x22

    if-ne v0, v9, :cond_5

    .line 1328
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v6, v9, v7

    .line 1329
    .local v6, "start":I
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v9, v5

    sub-int/2addr v9, v6

    add-int/lit8 v2, v9, -0x1

    .line 1330
    .local v2, "len":I
    invoke-virtual {p0, v6, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v8

    .line 1331
    .local v8, "strVal":Ljava/lang/String;
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1333
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    add-int/2addr v9, v5

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1343
    const/16 v9, 0x2c

    if-ne v0, v9, :cond_6

    .line 1344
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v9, v4

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    move v4, v5

    .line 1345
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_2

    .line 1337
    .end local v2    # "len":I
    .end local v4    # "offset":I
    .end local v6    # "start":I
    .end local v8    # "strVal":Ljava/lang/String;
    .restart local v5    # "offset":I
    :cond_5
    const/16 v9, 0x5c

    if-ne v0, v9, :cond_e

    .line 1338
    const/4 v9, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1339
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1348
    .end local v5    # "offset":I
    .restart local v2    # "len":I
    .restart local v4    # "offset":I
    .restart local v6    # "start":I
    .restart local v8    # "strVal":Ljava/lang/String;
    :cond_6
    const/16 v9, 0x5d

    if-ne v0, v9, :cond_7

    .line 1349
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    add-int/2addr v9, v4

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1357
    const/16 v9, 0x2c

    if-ne v0, v9, :cond_8

    .line 1358
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v5, -0x1

    add-int/2addr v9, v10

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1359
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1360
    const/4 v9, 0x3

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto/16 :goto_0

    .line 1353
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    :cond_7
    const/4 v9, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1354
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1364
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_8
    const/16 v9, 0x7d

    if-ne v0, v9, :cond_d

    .line 1365
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    add-int/2addr v9, v5

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1366
    const/16 v9, 0x2c

    if-ne v0, v9, :cond_9

    .line 1367
    const/16 v9, 0x10

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1368
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v4, -0x1

    add-int/2addr v9, v10

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1369
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1386
    :goto_4
    const/4 v9, 0x4

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto/16 :goto_0

    .line 1370
    :cond_9
    const/16 v9, 0x5d

    if-ne v0, v9, :cond_a

    .line 1371
    const/16 v9, 0xf

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1372
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v4, -0x1

    add-int/2addr v9, v10

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1373
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_4

    .line 1374
    :cond_a
    const/16 v9, 0x7d

    if-ne v0, v9, :cond_b

    .line 1375
    const/16 v9, 0xd

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1376
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v4, -0x1

    add-int/2addr v9, v10

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1377
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_4

    .line 1378
    :cond_b
    const/16 v9, 0x1a

    if-ne v0, v9, :cond_c

    .line 1379
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v4, -0x1

    add-int/2addr v9, v10

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1380
    const/16 v9, 0x14

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1381
    const/16 v9, 0x1a

    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_4

    .line 1383
    :cond_c
    const/4 v9, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1384
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1388
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_d
    const/4 v9, -0x1

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1389
    const/4 v3, 0x0

    goto/16 :goto_0

    .end local v2    # "len":I
    .end local v6    # "start":I
    .end local v8    # "strVal":Ljava/lang/String;
    :cond_e
    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto/16 :goto_3
.end method

.method public final scanFieldSymbol([CLcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 13
    .param p1, "fieldName"    # [C
    .param p2, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    const/16 v12, 0x2c

    const/16 v9, 0x22

    const/16 v11, 0x1a

    const/4 v10, -0x1

    const/4 v7, 0x0

    .line 1205
    const/4 v8, 0x0

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1207
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charArrayCompare([C)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1208
    const/4 v8, -0x2

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move-object v6, v7

    .line 1278
    :goto_0
    return-object v6

    .line 1212
    :cond_0
    array-length v3, p1

    .line 1213
    .local v3, "offset":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    add-int/2addr v8, v3

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1215
    .local v0, "chLocal":C
    if-eq v0, v9, :cond_1

    .line 1216
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move-object v6, v7

    .line 1217
    goto :goto_0

    .line 1222
    :cond_1
    const/4 v1, 0x0

    .local v1, "hash":I
    move v3, v4

    .line 1224
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :goto_1
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    add-int/2addr v8, v3

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1225
    if-ne v0, v9, :cond_2

    .line 1228
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    array-length v9, p1

    add-int/2addr v8, v9

    add-int/lit8 v5, v8, 0x1

    .line 1229
    .local v5, "start":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v4

    sub-int/2addr v8, v5

    add-int/lit8 v2, v8, -0x1

    .line 1230
    .local v2, "len":I
    invoke-virtual {p0, v5, v2, v1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v6

    .line 1231
    .local v6, "strVal":Ljava/lang/String;
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    add-int/2addr v8, v4

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1243
    if-ne v0, v12, :cond_3

    .line 1244
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v3, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1245
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1246
    const/4 v7, 0x3

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto :goto_0

    .line 1235
    .end local v2    # "len":I
    .end local v3    # "offset":I
    .end local v5    # "start":I
    .end local v6    # "strVal":Ljava/lang/String;
    .restart local v4    # "offset":I
    :cond_2
    mul-int/lit8 v8, v1, 0x1f

    add-int v1, v8, v0

    .line 1237
    const/16 v8, 0x5c

    if-ne v0, v8, :cond_9

    .line 1238
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move-object v6, v7

    .line 1239
    goto :goto_0

    .line 1250
    .end local v4    # "offset":I
    .restart local v2    # "len":I
    .restart local v3    # "offset":I
    .restart local v5    # "start":I
    .restart local v6    # "strVal":Ljava/lang/String;
    :cond_3
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_8

    .line 1251
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    add-int/2addr v8, v3

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 1252
    if-ne v0, v12, :cond_4

    .line 1253
    const/16 v7, 0x10

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1254
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v4, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1255
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1272
    :goto_2
    const/4 v7, 0x4

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto :goto_0

    .line 1256
    :cond_4
    const/16 v8, 0x5d

    if-ne v0, v8, :cond_5

    .line 1257
    const/16 v7, 0xf

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1258
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v4, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1259
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_2

    .line 1260
    :cond_5
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_6

    .line 1261
    const/16 v7, 0xd

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1262
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v4, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1263
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_2

    .line 1264
    :cond_6
    if-ne v0, v11, :cond_7

    .line 1265
    const/16 v7, 0x14

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1266
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v4, -0x1

    add-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1267
    iput-char v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_2

    .line 1269
    :cond_7
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move-object v6, v7

    .line 1270
    goto/16 :goto_0

    .line 1274
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :cond_8
    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move-object v6, v7

    .line 1275
    goto/16 :goto_0

    .end local v2    # "len":I
    .end local v3    # "offset":I
    .end local v5    # "start":I
    .end local v6    # "strVal":Ljava/lang/String;
    .restart local v4    # "offset":I
    :cond_9
    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto/16 :goto_1
.end method

.method public final scanIdent()V
    .locals 3

    .prologue
    .line 1973
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1974
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    .line 1977
    :cond_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1979
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1980
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1984
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 1986
    .local v0, "ident":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->keywods:Lcom/alibaba/fastjson/parser/Keywords;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/parser/Keywords;->getKeyword(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1987
    .local v1, "tok":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 1988
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1992
    :goto_0
    return-void

    .line 1990
    :cond_1
    const/16 v2, 0x12

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0
.end method

.method public final scanNullOrNew()V
    .locals 7

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xc

    const/16 v4, 0xa

    const/16 v3, 0x9

    const/16 v2, 0x8

    .line 1894
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_0

    .line 1895
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse null or new"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1897
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1899
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x75

    if-ne v0, v1, :cond_5

    .line 1900
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1901
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_1

    .line 1902
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1904
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1906
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_2

    .line 1907
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1909
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1911
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v0, v4, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v0, v6, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v0, v3, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v0, v5, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v2, :cond_4

    .line 1913
    :cond_3
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1936
    :goto_0
    return-void

    .line 1915
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1920
    :cond_5
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_6

    .line 1921
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse e"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1923
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1925
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x77

    if-eq v0, v1, :cond_7

    .line 1926
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse w"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1928
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1930
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v0, v4, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v0, v6, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v0, v3, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v0, v5, :cond_8

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v2, :cond_9

    .line 1932
    :cond_8
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    .line 1934
    :cond_9
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanNumber()V
    .locals 8

    .prologue
    const/16 v7, 0x46

    const/16 v6, 0x44

    const/16 v5, 0x2d

    const/16 v4, 0x39

    const/16 v3, 0x30

    .line 2191
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 2193
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v1, v5, :cond_0

    .line 2194
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 2195
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 2199
    :cond_0
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v1, v3, :cond_1

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-gt v1, v4, :cond_1

    .line 2200
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 2204
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    .line 2207
    :cond_1
    const/4 v0, 0x0

    .line 2209
    .local v0, "isDouble":Z
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_2

    .line 2210
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 2211
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 2212
    const/4 v0, 0x1

    .line 2215
    :goto_1
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v1, v3, :cond_2

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-gt v1, v4, :cond_2

    .line 2216
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 2220
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_1

    .line 2224
    :cond_2
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_4

    .line 2225
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 2226
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 2267
    :cond_3
    :goto_2
    if-eqz v0, :cond_f

    .line 2268
    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2272
    :goto_3
    return-void

    .line 2227
    :cond_4
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x53

    if-ne v1, v2, :cond_5

    .line 2228
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 2229
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_2

    .line 2230
    :cond_5
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x42

    if-ne v1, v2, :cond_6

    .line 2231
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 2232
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_2

    .line 2233
    :cond_6
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v1, v7, :cond_7

    .line 2234
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 2235
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 2236
    const/4 v0, 0x1

    goto :goto_2

    .line 2237
    :cond_7
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v1, v6, :cond_8

    .line 2238
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 2239
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 2240
    const/4 v0, 0x1

    goto :goto_2

    .line 2241
    :cond_8
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x65

    if-eq v1, v2, :cond_9

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x45

    if-ne v1, v2, :cond_3

    .line 2242
    :cond_9
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 2243
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 2245
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_a

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v1, v5, :cond_b

    .line 2246
    :cond_a
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 2247
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 2251
    :cond_b
    :goto_4
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v1, v3, :cond_c

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-gt v1, v4, :cond_c

    .line 2252
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 2256
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_4

    .line 2259
    :cond_c
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v1, v6, :cond_d

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v1, v7, :cond_e

    .line 2260
    :cond_d
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 2261
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 2264
    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 2270
    :cond_f
    const/4 v1, 0x2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_3
.end method

.method public final scanSet()V
    .locals 2

    .prologue
    .line 2156
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x53

    if-eq v0, v1, :cond_0

    .line 2157
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2159
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 2161
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    .line 2162
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2164
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 2166
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x74

    if-eq v0, v1, :cond_2

    .line 2167
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2169
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 2171
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_3

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x28

    if-ne v0, v1, :cond_4

    .line 2172
    :cond_3
    const/16 v0, 0x15

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2176
    return-void

    .line 2174
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan set error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanString()V
    .locals 17

    .prologue
    .line 840
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 841
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    .line 844
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    .line 846
    .local v1, "ch":C
    const/16 v13, 0x22

    if-ne v1, v13, :cond_0

    .line 966
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 967
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v13

    move-object/from16 v0, p0

    iput-char v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 968
    return-void

    .line 850
    :cond_0
    const/16 v13, 0x1a

    if-ne v1, v13, :cond_1

    .line 851
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unclosed string : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 854
    :cond_1
    const/16 v13, 0x5c

    if-ne v1, v13, :cond_5

    .line 855
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    if-nez v13, :cond_4

    .line 856
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    .line 858
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v14, v14

    if-lt v13, v14, :cond_3

    .line 859
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v13, v13

    mul-int/lit8 v2, v13, 0x2

    .line 860
    .local v2, "newCapcity":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    if-le v13, v2, :cond_2

    .line 861
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 863
    :cond_2
    new-array v3, v2, [C

    .line 864
    .local v3, "newsbuf":[C
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v13, v14, v3, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 865
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 868
    .end local v2    # "newCapcity":I
    .end local v3    # "newsbuf":[C
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->copyTo(II[C)V

    .line 873
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    .line 875
    sparse-switch v1, :sswitch_data_0

    .line 948
    move-object/from16 v0, p0

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 949
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "unclosed string : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 877
    :sswitch_0
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 880
    :sswitch_1
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 883
    :sswitch_2
    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 886
    :sswitch_3
    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 889
    :sswitch_4
    const/4 v13, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 892
    :sswitch_5
    const/4 v13, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 895
    :sswitch_6
    const/4 v13, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 898
    :sswitch_7
    const/4 v13, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 901
    :sswitch_8
    const/16 v13, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 904
    :sswitch_9
    const/16 v13, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 907
    :sswitch_a
    const/16 v13, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 910
    :sswitch_b
    const/16 v13, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 914
    :sswitch_c
    const/16 v13, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 917
    :sswitch_d
    const/16 v13, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 920
    :sswitch_e
    const/16 v13, 0x22

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 923
    :sswitch_f
    const/16 v13, 0x27

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 926
    :sswitch_10
    const/16 v13, 0x2f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 929
    :sswitch_11
    const/16 v13, 0x5c

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 932
    :sswitch_12
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    move v9, v1

    .line 933
    .local v9, "x1":C
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    move v10, v1

    .line 935
    .local v10, "x2":C
    sget-object v13, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    aget v13, v13, v9

    mul-int/lit8 v13, v13, 0x10

    sget-object v14, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    aget v14, v14, v10

    add-int v12, v13, v14

    .line 936
    .local v12, "x_val":I
    int-to-char v11, v12

    .line 937
    .local v11, "x_char":C
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 940
    .end local v9    # "x1":C
    .end local v10    # "x2":C
    .end local v11    # "x_char":C
    .end local v12    # "x_val":I
    :sswitch_13
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    move v4, v1

    .line 941
    .local v4, "u1":C
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    move v5, v1

    .line 942
    .local v5, "u2":C
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    move v6, v1

    .line 943
    .local v6, "u3":C
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    move v7, v1

    .line 944
    .local v7, "u4":C
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x4

    new-array v14, v14, [C

    const/4 v15, 0x0

    aput-char v4, v14, v15

    const/4 v15, 0x1

    aput-char v5, v14, v15

    const/4 v15, 0x2

    aput-char v6, v14, v15

    const/4 v15, 0x3

    aput-char v7, v14, v15

    invoke-direct {v13, v14}, Ljava/lang/String;-><init>([C)V

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 945
    .local v8, "val":I
    int-to-char v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 954
    .end local v4    # "u1":C
    .end local v5    # "u2":C
    .end local v6    # "u3":C
    .end local v7    # "u4":C
    .end local v8    # "val":I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    if-nez v13, :cond_6

    .line 955
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    goto/16 :goto_0

    .line 959
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v14, v14

    if-ne v13, v14, :cond_7

    .line 960
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 962
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    aput-char v1, v13, v14

    goto/16 :goto_0

    .line 875
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method

.method public final scanStringSingleQuote()V
    .locals 15

    .prologue
    .line 2029
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 2030
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    .line 2033
    :goto_0
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    .line 2035
    .local v4, "chLocal":C
    const/16 v11, 0x27

    if-ne v4, v11, :cond_0

    .line 2151
    const/4 v11, 0x4

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2152
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 2153
    return-void

    .line 2039
    :cond_0
    const/16 v11, 0x1a

    if-ne v4, v11, :cond_1

    .line 2040
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string v12, "unclosed single-quote string"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2043
    :cond_1
    const/16 v11, 0x5c

    if-ne v4, v11, :cond_4

    .line 2044
    iget-boolean v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    if-nez v11, :cond_3

    .line 2045
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    .line 2047
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v12, v12

    if-le v11, v12, :cond_2

    .line 2048
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    mul-int/lit8 v11, v11, 0x2

    new-array v5, v11, [C

    .line 2049
    .local v5, "newsbuf":[C
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v14, v14

    invoke-static {v11, v12, v5, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2050
    iput-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 2054
    .end local v5    # "newsbuf":[C
    :cond_2
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v11, v11, 0x1

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    iget-object v13, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-virtual {p0, v11, v12, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->copyTo(II[C)V

    .line 2058
    :cond_3
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    .line 2060
    sparse-switch v4, :sswitch_data_0

    .line 2133
    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2134
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string v12, "unclosed single-quote string"

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2062
    :sswitch_0
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto :goto_0

    .line 2065
    :sswitch_1
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto :goto_0

    .line 2068
    :sswitch_2
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto :goto_0

    .line 2071
    :sswitch_3
    const/4 v11, 0x3

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto :goto_0

    .line 2074
    :sswitch_4
    const/4 v11, 0x4

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto :goto_0

    .line 2077
    :sswitch_5
    const/4 v11, 0x5

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 2080
    :sswitch_6
    const/4 v11, 0x6

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 2083
    :sswitch_7
    const/4 v11, 0x7

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 2086
    :sswitch_8
    const/16 v11, 0x8

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 2089
    :sswitch_9
    const/16 v11, 0x9

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 2092
    :sswitch_a
    const/16 v11, 0xa

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 2095
    :sswitch_b
    const/16 v11, 0xb

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 2099
    :sswitch_c
    const/16 v11, 0xc

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 2102
    :sswitch_d
    const/16 v11, 0xd

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 2105
    :sswitch_e
    const/16 v11, 0x22

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 2108
    :sswitch_f
    const/16 v11, 0x27

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 2111
    :sswitch_10
    const/16 v11, 0x2f

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 2114
    :sswitch_11
    const/16 v11, 0x5c

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 2117
    :sswitch_12
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    move v7, v4

    .line 2118
    .local v7, "x1":C
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    move v8, v4

    .line 2120
    .local v8, "x2":C
    sget-object v11, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    aget v11, v11, v7

    mul-int/lit8 v11, v11, 0x10

    sget-object v12, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    aget v12, v12, v8

    add-int v10, v11, v12

    .line 2121
    .local v10, "x_val":I
    int-to-char v9, v10

    .line 2122
    .local v9, "x_char":C
    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 2125
    .end local v7    # "x1":C
    .end local v8    # "x2":C
    .end local v9    # "x_char":C
    .end local v10    # "x_val":I
    :sswitch_13
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    move v0, v4

    .line 2126
    .local v0, "c1":C
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    move v1, v4

    .line 2127
    .local v1, "c2":C
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    move v2, v4

    .line 2128
    .local v2, "c3":C
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    move v3, v4

    .line 2129
    .local v3, "c4":C
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x4

    new-array v12, v12, [C

    const/4 v13, 0x0

    aput-char v0, v12, v13

    const/4 v13, 0x1

    aput-char v1, v12, v13

    const/4 v13, 0x2

    aput-char v2, v12, v13

    const/4 v13, 0x3

    aput-char v3, v12, v13

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([C)V

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    .line 2130
    .local v6, "val":I
    int-to-char v11, v6

    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 2139
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v2    # "c3":C
    .end local v3    # "c4":C
    .end local v6    # "val":I
    :cond_4
    iget-boolean v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    if-nez v11, :cond_5

    .line 2140
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    goto/16 :goto_0

    .line 2144
    :cond_5
    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v12, v12

    if-ne v11, v12, :cond_6

    .line 2145
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 2147
    :cond_6
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    aput-char v4, v11, v12

    goto/16 :goto_0

    .line 2060
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 4
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    const/16 v3, 0x27

    const/16 v2, 0x22

    const/4 v0, 0x0

    .line 582
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 584
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v1, v2, :cond_0

    .line 585
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    .line 617
    :goto_0
    return-object v0

    .line 588
    :cond_0
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v1, v3, :cond_2

    .line 589
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 590
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 596
    :cond_2
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_3

    .line 597
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 598
    const/16 v1, 0xd

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    .line 602
    :cond_3
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_4

    .line 603
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 604
    const/16 v1, 0x10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    .line 608
    :cond_4
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_5

    .line 609
    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    .line 613
    :cond_5
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 614
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :cond_6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 23
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;
    .param p2, "quote"    # C

    .prologue
    .line 625
    const/4 v11, 0x0

    .line 627
    .local v11, "hash":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 628
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 629
    const/4 v10, 0x0

    .line 632
    .local v10, "hasSpecial":Z
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v9

    .line 634
    .local v9, "chLocal":C
    move/from16 v0, p2

    if-ne v9, v0, :cond_0

    .line 776
    const/16 v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 777
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 779
    if-nez v10, :cond_8

    .line 781
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v11, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v19

    .line 783
    :goto_1
    return-object v19

    .line 638
    :cond_0
    const/16 v19, 0x1a

    move/from16 v0, v19

    if-ne v9, v0, :cond_1

    .line 639
    new-instance v19, Lcom/alibaba/fastjson/JSONException;

    const-string v20, "unclosed.str"

    invoke-direct/range {v19 .. v20}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 642
    :cond_1
    const/16 v19, 0x5c

    move/from16 v0, v19

    if-ne v9, v0, :cond_5

    .line 643
    if-nez v10, :cond_4

    .line 644
    const/4 v10, 0x1

    .line 646
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    mul-int/lit8 v12, v19, 0x2

    .line 648
    .local v12, "newCapcity":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-le v0, v12, :cond_2

    .line 649
    move-object/from16 v0, p0

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 651
    :cond_2
    new-array v13, v12, [C

    .line 652
    .local v13, "newsbuf":[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v13, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 653
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 658
    .end local v12    # "newCapcity":I
    .end local v13    # "newsbuf":[C
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->arrayCopy(I[CII)V

    .line 661
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v9

    .line 663
    sparse-switch v9, :sswitch_data_0

    .line 756
    move-object/from16 v0, p0

    iput-char v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 757
    new-instance v19, Lcom/alibaba/fastjson/JSONException;

    const-string v20, "unclosed.str.lit"

    invoke-direct/range {v19 .. v20}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 665
    :sswitch_0
    mul-int/lit8 v19, v11, 0x1f

    add-int v11, v19, v9

    .line 666
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 669
    :sswitch_1
    mul-int/lit8 v19, v11, 0x1f

    add-int v11, v19, v9

    .line 670
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 673
    :sswitch_2
    mul-int/lit8 v19, v11, 0x1f

    add-int v11, v19, v9

    .line 674
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 677
    :sswitch_3
    mul-int/lit8 v19, v11, 0x1f

    add-int v11, v19, v9

    .line 678
    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 681
    :sswitch_4
    mul-int/lit8 v19, v11, 0x1f

    add-int v11, v19, v9

    .line 682
    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 685
    :sswitch_5
    mul-int/lit8 v19, v11, 0x1f

    add-int v11, v19, v9

    .line 686
    const/16 v19, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 689
    :sswitch_6
    mul-int/lit8 v19, v11, 0x1f

    add-int v11, v19, v9

    .line 690
    const/16 v19, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 693
    :sswitch_7
    mul-int/lit8 v19, v11, 0x1f

    add-int v11, v19, v9

    .line 694
    const/16 v19, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 697
    :sswitch_8
    mul-int/lit8 v19, v11, 0x1f

    add-int/lit8 v11, v19, 0x8

    .line 698
    const/16 v19, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 701
    :sswitch_9
    mul-int/lit8 v19, v11, 0x1f

    add-int/lit8 v11, v19, 0x9

    .line 702
    const/16 v19, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 705
    :sswitch_a
    mul-int/lit8 v19, v11, 0x1f

    add-int/lit8 v11, v19, 0xa

    .line 706
    const/16 v19, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 709
    :sswitch_b
    mul-int/lit8 v19, v11, 0x1f

    add-int/lit8 v11, v19, 0xb

    .line 710
    const/16 v19, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 714
    :sswitch_c
    mul-int/lit8 v19, v11, 0x1f

    add-int/lit8 v11, v19, 0xc

    .line 715
    const/16 v19, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 718
    :sswitch_d
    mul-int/lit8 v19, v11, 0x1f

    add-int/lit8 v11, v19, 0xd

    .line 719
    const/16 v19, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 722
    :sswitch_e
    mul-int/lit8 v19, v11, 0x1f

    add-int/lit8 v11, v19, 0x22

    .line 723
    const/16 v19, 0x22

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 726
    :sswitch_f
    mul-int/lit8 v19, v11, 0x1f

    add-int/lit8 v11, v19, 0x27

    .line 727
    const/16 v19, 0x27

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 730
    :sswitch_10
    mul-int/lit8 v19, v11, 0x1f

    add-int/lit8 v11, v19, 0x2f

    .line 731
    const/16 v19, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 734
    :sswitch_11
    mul-int/lit8 v19, v11, 0x1f

    add-int/lit8 v11, v19, 0x5c

    .line 735
    const/16 v19, 0x5c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 738
    :sswitch_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v15

    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 739
    .local v15, "x1":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 741
    .local v16, "x2":C
    sget-object v19, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    aget v19, v19, v15

    mul-int/lit8 v19, v19, 0x10

    sget-object v20, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    aget v20, v20, v16

    add-int v18, v19, v20

    .line 742
    .local v18, "x_val":I
    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v17, v0

    .line 743
    .local v17, "x_char":C
    mul-int/lit8 v19, v11, 0x1f

    add-int v11, v19, v17

    .line 744
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 747
    .end local v15    # "x1":C
    .end local v16    # "x2":C
    .end local v17    # "x_char":C
    .end local v18    # "x_val":I
    :sswitch_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v9

    move v5, v9

    .line 748
    .local v5, "c1":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v9

    move v6, v9

    .line 749
    .local v6, "c2":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v9

    move v7, v9

    .line 750
    .local v7, "c3":C
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v9

    move v8, v9

    .line 751
    .local v8, "c4":C
    new-instance v19, Ljava/lang/String;

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [C

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-char v5, v20, v21

    const/16 v21, 0x1

    aput-char v6, v20, v21

    const/16 v21, 0x2

    aput-char v7, v20, v21

    const/16 v21, 0x3

    aput-char v8, v20, v21

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>([C)V

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    .line 752
    .local v14, "val":I
    mul-int/lit8 v19, v11, 0x1f

    add-int v11, v19, v14

    .line 753
    int-to-char v0, v14

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 762
    .end local v5    # "c1":C
    .end local v6    # "c2":C
    .end local v7    # "c3":C
    .end local v8    # "c4":C
    .end local v14    # "val":I
    :cond_5
    mul-int/lit8 v19, v11, 0x1f

    add-int v11, v19, v9

    .line 764
    if-nez v10, :cond_6

    .line 765
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    goto/16 :goto_0

    .line 769
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 770
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->putChar(C)V

    goto/16 :goto_0

    .line 772
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    move/from16 v20, v0

    add-int/lit8 v21, v20, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    aput-char v9, v19, v20

    goto/16 :goto_0

    .line 783
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v11}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    .line 663
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method

.method public final scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 11
    .param p1, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    const/16 v10, 0x6c

    const/4 v7, 0x1

    .line 792
    sget-object v4, Lcom/alibaba/fastjson/parser/CharTypes;->firstIdentifierFlags:[Z

    .line 793
    .local v4, "firstIdentifierFlags":[Z
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 795
    .local v2, "first":C
    iget-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    array-length v9, v4

    if-ge v8, v9, :cond_0

    aget-boolean v8, v4, v2

    if-eqz v8, :cond_1

    :cond_0
    move v3, v7

    .line 796
    .local v3, "firstFlag":Z
    :goto_0
    if-nez v3, :cond_2

    .line 797
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "illegal identifier : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 795
    .end local v3    # "firstFlag":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 800
    .restart local v3    # "firstFlag":Z
    :cond_2
    sget-object v6, Lcom/alibaba/fastjson/parser/CharTypes;->identifierFlags:[Z

    .line 802
    .local v6, "identifierFlags":[Z
    move v5, v2

    .line 804
    .local v5, "hash":I
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 805
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 808
    :goto_1
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    .line 810
    .local v1, "chLocal":C
    array-length v7, v6

    if-ge v1, v7, :cond_3

    .line 811
    aget-boolean v7, v6, v1

    if-nez v7, :cond_3

    .line 822
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 823
    const/16 v7, 0x12

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 825
    const v0, 0x33c587

    .line 826
    .local v0, "NULL_HASH":I
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    const v7, 0x33c587

    if-ne v5, v7, :cond_4

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v7

    const/16 v8, 0x6e

    if-ne v7, v8, :cond_4

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v7

    const/16 v8, 0x75

    if-ne v7, v8, :cond_4

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_4

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_4

    .line 828
    const/4 v7, 0x0

    .line 833
    :goto_2
    return-object v7

    .line 816
    .end local v0    # "NULL_HASH":I
    :cond_3
    mul-int/lit8 v7, v5, 0x1f

    add-int v5, v7, v1

    .line 818
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    goto :goto_1

    .line 833
    .restart local v0    # "NULL_HASH":I
    :cond_4
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    invoke-virtual {p0, v7, v8, v5, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2
.end method

.method public final scanTreeSet()V
    .locals 3

    .prologue
    const/16 v2, 0x65

    .line 1851
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    .line 1852
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1854
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1856
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x72

    if-eq v0, v1, :cond_1

    .line 1857
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1859
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1861
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v0, v2, :cond_2

    .line 1862
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1864
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1866
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v0, v2, :cond_3

    .line 1867
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1869
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1871
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x53

    if-eq v0, v1, :cond_4

    .line 1872
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1874
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1876
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v0, v2, :cond_5

    .line 1877
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1879
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1881
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x74

    if-eq v0, v1, :cond_6

    .line 1882
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1884
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1886
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_7

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x28

    if-ne v0, v1, :cond_8

    .line 1887
    :cond_7
    const/16 v0, 0x16

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1891
    return-void

    .line 1889
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan set error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanTrue()V
    .locals 2

    .prologue
    .line 1822
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    .line 1823
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1825
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1827
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x72

    if-eq v0, v1, :cond_1

    .line 1828
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1830
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1832
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x75

    if-eq v0, v1, :cond_2

    .line 1833
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1835
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1837
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x65

    if-eq v0, v1, :cond_3

    .line 1838
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "error parse true"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1840
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1842
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_4

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 1844
    :cond_4
    const/4 v0, 0x6

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1848
    return-void

    .line 1846
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final scanType(Ljava/lang/String;)I
    .locals 9
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x7d

    const/16 v7, 0x2c

    const/16 v6, 0x10

    const/4 v3, -0x1

    .line 1045
    const/4 v4, 0x0

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1047
    sget-object v4, Lcom/alibaba/fastjson/parser/JSONLexer;->typeFieldName:[C

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charArrayCompare([C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1048
    const/4 v3, -0x2

    .line 1091
    :cond_0
    :goto_0
    return v3

    .line 1051
    :cond_1
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexer;->typeFieldName:[C

    array-length v5, v5

    add-int v0, v4, v5

    .line 1053
    .local v0, "bpLocal":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1054
    .local v2, "typeLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1055
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v5, v0, v1

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1054
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1059
    :cond_2
    add-int/2addr v0, v2

    .line 1060
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    if-ne v4, v5, :cond_0

    .line 1064
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1066
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v4, v7, :cond_3

    .line 1067
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1068
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1069
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1070
    const/4 v3, 0x3

    goto :goto_0

    .line 1071
    :cond_3
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v4, v8, :cond_4

    .line 1072
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1073
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v4, v7, :cond_5

    .line 1074
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1075
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1087
    :goto_2
    const/4 v3, 0x4

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 1090
    :cond_4
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1091
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto :goto_0

    .line 1076
    :cond_5
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_6

    .line 1077
    const/16 v3, 0xf

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1078
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_2

    .line 1079
    :cond_6
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v4, v8, :cond_7

    .line 1080
    const/16 v3, 0xd

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 1081
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_2

    .line 1082
    :cond_7
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x1a

    if-ne v4, v5, :cond_0

    .line 1083
    const/16 v3, 0x14

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_2
.end method

.method public final skipWhitespace()V
    .locals 2

    .prologue
    .line 2019
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexer;->whitespaceFlags:[Z

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 2020
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    .line 2026
    :cond_0
    return-void
.end method

.method public final stringDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    const-string v0, ""

    .line 394
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract stringVal()Ljava/lang/String;
.end method

.method public abstract subString(II)Ljava/lang/String;
.end method

.method public final token()I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v0
.end method

.method public final tokenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
