.class public final Lcom/alibaba/fastjson/parser/JSONScanner;
.super Lcom/alibaba/fastjson/parser/JSONLexer;
.source "JSONScanner.java"


# instance fields
.field public final ISO8601_LEN_0:I

.field public final ISO8601_LEN_1:I

.field public final ISO8601_LEN_2:I

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 35
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "features"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>()V

    .line 132
    const-string v0, "0000-00-00"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_0:I

    .line 133
    const-string v0, "0000-00-00T00:00:00"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_1:I

    .line 134
    const-string v0, "0000-00-00T00:00:00.000"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_2:I

    .line 39
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->features:I

    .line 41
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 45
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const v1, 0xfeff

    if-ne v0, v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONScanner;->next()C

    .line 48
    :cond_0
    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I

    .prologue
    .line 63
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    .line 64
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2
    .param p1, "input"    # [C
    .param p2, "inputLength"    # I
    .param p3, "features"    # I

    .prologue
    .line 67
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method static final charArrayCompare(Ljava/lang/String;I[C)Z
    .locals 5
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "dest"    # [C

    .prologue
    const/4 v2, 0x0

    .line 75
    array-length v0, p2

    .line 76
    .local v0, "destLen":I
    add-int v3, v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v2

    .line 80
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 81
    aget-char v3, p2, v1

    add-int v4, p1, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 86
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static checkDate(CCCCCCII)Z
    .locals 5
    .param p0, "y0"    # C
    .param p1, "y1"    # C
    .param p2, "y2"    # C
    .param p3, "y3"    # C
    .param p4, "M0"    # C
    .param p5, "M1"    # C
    .param p6, "d0"    # I
    .param p7, "d1"    # I

    .prologue
    const/16 v4, 0x32

    const/16 v1, 0x39

    const/16 v3, 0x31

    const/16 v2, 0x30

    const/4 v0, 0x0

    .line 412
    if-eq p0, v3, :cond_1

    if-eq p0, v4, :cond_1

    .line 453
    :cond_0
    :goto_0
    return v0

    .line 415
    :cond_1
    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 418
    if-lt p2, v2, :cond_0

    if-gt p2, v1, :cond_0

    .line 421
    if-lt p3, v2, :cond_0

    if-gt p3, v1, :cond_0

    .line 425
    if-ne p4, v2, :cond_4

    .line 426
    if-lt p5, v3, :cond_0

    if-gt p5, v1, :cond_0

    .line 437
    :cond_2
    if-ne p6, v2, :cond_5

    .line 438
    if-lt p7, v3, :cond_0

    if-gt p7, v1, :cond_0

    .line 453
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 429
    :cond_4
    if-ne p4, v3, :cond_0

    .line 430
    if-eq p5, v2, :cond_2

    if-eq p5, v3, :cond_2

    if-eq p5, v4, :cond_2

    goto :goto_0

    .line 441
    :cond_5
    if-eq p6, v3, :cond_6

    if-ne p6, v4, :cond_7

    .line 442
    :cond_6
    if-lt p7, v2, :cond_0

    if-le p7, v1, :cond_3

    goto :goto_0

    .line 445
    :cond_7
    const/16 v1, 0x33

    if-ne p6, v1, :cond_0

    .line 446
    if-eq p7, v2, :cond_3

    if-eq p7, v3, :cond_3

    goto :goto_0
.end method

.method private checkTime(CCCCCC)Z
    .locals 6
    .param p1, "h0"    # C
    .param p2, "h1"    # C
    .param p3, "m0"    # C
    .param p4, "m1"    # C
    .param p5, "s0"    # C
    .param p6, "s1"    # C

    .prologue
    const/16 v5, 0x36

    const/16 v4, 0x35

    const/16 v3, 0x39

    const/16 v2, 0x30

    const/4 v0, 0x0

    .line 357
    if-ne p1, v2, :cond_1

    .line 358
    if-lt p2, v2, :cond_0

    if-le p2, v3, :cond_2

    .line 397
    :cond_0
    :goto_0
    return v0

    .line 361
    :cond_1
    const/16 v1, 0x31

    if-ne p1, v1, :cond_5

    .line 362
    if-lt p2, v2, :cond_0

    if-gt p2, v3, :cond_0

    .line 373
    :cond_2
    if-lt p3, v2, :cond_6

    if-gt p3, v4, :cond_6

    .line 374
    if-lt p4, v2, :cond_0

    if-gt p4, v3, :cond_0

    .line 385
    :cond_3
    if-lt p5, v2, :cond_7

    if-gt p5, v4, :cond_7

    .line 386
    if-lt p6, v2, :cond_0

    if-gt p6, v3, :cond_0

    .line 397
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 365
    :cond_5
    const/16 v1, 0x32

    if-ne p1, v1, :cond_0

    .line 366
    if-lt p2, v2, :cond_0

    const/16 v1, 0x34

    if-le p2, v1, :cond_2

    goto :goto_0

    .line 377
    :cond_6
    if-ne p3, v5, :cond_0

    .line 378
    if-eq p4, v2, :cond_3

    goto :goto_0

    .line 389
    :cond_7
    if-ne p5, v5, :cond_0

    .line 390
    if-eq p6, v2, :cond_4

    goto :goto_0
.end method

.method private setCalendar(CCCCCCCC)V
    .locals 6
    .param p1, "y0"    # C
    .param p2, "y1"    # C
    .param p3, "y2"    # C
    .param p4, "y3"    # C
    .param p5, "M0"    # C
    .param p6, "M1"    # C
    .param p7, "d0"    # C
    .param p8, "d1"    # C

    .prologue
    .line 401
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 402
    .local v1, "local":Ljava/util/Locale;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 403
    sget-object v4, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v4, v4, p1

    mul-int/lit16 v4, v4, 0x3e8

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v5, v5, p2

    mul-int/lit8 v5, v5, 0x64

    add-int/2addr v4, v5

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v5, v5, p3

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v5, v5, p4

    add-int v3, v4, v5

    .line 404
    .local v3, "year":I
    sget-object v4, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v4, v4, p5

    mul-int/lit8 v4, v4, 0xa

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v5, v5, p6

    add-int/2addr v4, v5

    add-int/lit8 v2, v4, -0x1

    .line 405
    .local v2, "month":I
    sget-object v4, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v4, v4, p7

    mul-int/lit8 v4, v4, 0xa

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v5, v5, p8

    add-int v0, v4, v5

    .line 406
    .local v0, "day":I
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 407
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 408
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 409
    return-void
.end method


# virtual methods
.method public final addSymbol(IIILcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 1
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "hash"    # I
    .param p4, "symbolTable"    # Lcom/alibaba/fastjson/parser/SymbolTable;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected arrayCopy(I[CII)V
    .locals 2
    .param p1, "srcPos"    # I
    .param p2, "dest"    # [C
    .param p3, "destPos"    # I
    .param p4, "length"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p4

    invoke-virtual {v0, p1, v1, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    .line 107
    return-void
.end method

.method public bytesValue()[B
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/Base64;->decodeFast(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method public final charArrayCompare([C)Z
    .locals 2
    .param p1, "chars"    # [C

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/JSONScanner;->charArrayCompare(Ljava/lang/String;I[C)Z

    move-result v0

    return v0
.end method

.method public final charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 52
    const/16 v0, 0x1a

    .line 55
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method protected final copyTo(II[C)V
    .locals 3
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "dest"    # [C

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 72
    return-void
.end method

.method public final indexOf(CI)I
    .locals 1
    .param p1, "ch"    # C
    .param p2, "startIndex"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public isEOF()Z
    .locals 2

    .prologue
    .line 458
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()C
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    return v0
.end method

.method public final numberString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 122
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v0

    .line 124
    .local v0, "chLocal":C
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    .line 125
    .local v1, "sp":I
    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    .line 126
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/2addr v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public scanISO8601DateIfMatch()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v0

    return v0
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .locals 51
    .param p1, "strict"    # Z

    .prologue
    .line 141
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move/from16 v17, v0

    sub-int v48, v10, v17

    .line 143
    .local v48, "rest":I
    if-nez p1, :cond_4

    const/16 v10, 0xd

    move/from16 v0, v48

    if-le v0, v10, :cond_4

    .line 144
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v30

    .line 145
    .local v30, "c0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v31

    .line 146
    .local v31, "c1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v32

    .line 147
    .local v32, "c2":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v33

    .line 148
    .local v33, "c3":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v34

    .line 149
    .local v34, "c4":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v35

    .line 151
    .local v35, "c5":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v10, v10, v48

    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v36

    .line 152
    .local v36, "c_r0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v10, v10, v48

    add-int/lit8 v10, v10, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v37

    .line 153
    .local v37, "c_r1":C
    const/16 v10, 0x2f

    move/from16 v0, v30

    if-ne v0, v10, :cond_4

    const/16 v10, 0x44

    move/from16 v0, v31

    if-ne v0, v10, :cond_4

    const/16 v10, 0x61

    move/from16 v0, v32

    if-ne v0, v10, :cond_4

    const/16 v10, 0x74

    move/from16 v0, v33

    if-ne v0, v10, :cond_4

    const/16 v10, 0x65

    move/from16 v0, v34

    if-ne v0, v10, :cond_4

    const/16 v10, 0x28

    move/from16 v0, v35

    if-ne v0, v10, :cond_4

    const/16 v10, 0x2f

    move/from16 v0, v36

    if-ne v0, v10, :cond_4

    const/16 v10, 0x29

    move/from16 v0, v37

    if-ne v0, v10, :cond_4

    .line 155
    const/16 v47, -0x1

    .line 156
    .local v47, "plusIndex":I
    const/16 v40, 0x6

    .local v40, "i":I
    :goto_0
    move/from16 v0, v40

    move/from16 v1, v48

    if-ge v0, v1, :cond_2

    .line 157
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int v10, v10, v40

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v29

    .line 158
    .local v29, "c":C
    const/16 v10, 0x2b

    move/from16 v0, v29

    if-ne v0, v10, :cond_1

    .line 159
    move/from16 v47, v40

    .line 156
    :cond_0
    add-int/lit8 v40, v40, 0x1

    goto :goto_0

    .line 160
    :cond_1
    const/16 v10, 0x30

    move/from16 v0, v29

    if-lt v0, v10, :cond_2

    const/16 v10, 0x39

    move/from16 v0, v29

    if-le v0, v10, :cond_0

    .line 164
    .end local v29    # "c":C
    :cond_2
    const/4 v10, -0x1

    move/from16 v0, v47

    if-ne v0, v10, :cond_3

    .line 165
    const/4 v10, 0x0

    .line 353
    .end local v30    # "c0":C
    .end local v31    # "c1":C
    .end local v32    # "c2":C
    .end local v33    # "c3":C
    .end local v34    # "c4":C
    .end local v35    # "c5":C
    .end local v36    # "c_r0":C
    .end local v37    # "c_r1":C
    .end local v40    # "i":I
    .end local v47    # "plusIndex":I
    :goto_1
    return v10

    .line 167
    .restart local v30    # "c0":C
    .restart local v31    # "c1":C
    .restart local v32    # "c2":C
    .restart local v33    # "c3":C
    .restart local v34    # "c4":C
    .restart local v35    # "c5":C
    .restart local v36    # "c_r0":C
    .restart local v37    # "c_r1":C
    .restart local v40    # "i":I
    .restart local v47    # "plusIndex":I
    :cond_3
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v46, v10, 0x6

    .line 168
    .local v46, "offset":I
    sub-int v10, v47, v46

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->subString(II)Ljava/lang/String;

    move-result-object v45

    .line 169
    .local v45, "numberText":Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v42

    .line 171
    .local v42, "millis":J
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v41

    .line 172
    .local v41, "local":Ljava/util/Locale;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    move-object/from16 v0, v41

    invoke-static {v10, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    .line 173
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    move-wide/from16 v0, v42

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 175
    const/4 v10, 0x5

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 176
    const/4 v10, 0x1

    goto :goto_1

    .line 180
    .end local v30    # "c0":C
    .end local v31    # "c1":C
    .end local v32    # "c2":C
    .end local v33    # "c3":C
    .end local v34    # "c4":C
    .end local v35    # "c5":C
    .end local v36    # "c_r0":C
    .end local v37    # "c_r1":C
    .end local v40    # "i":I
    .end local v41    # "local":Ljava/util/Locale;
    .end local v42    # "millis":J
    .end local v45    # "numberText":Ljava/lang/String;
    .end local v46    # "offset":I
    .end local v47    # "plusIndex":I
    :cond_4
    const/16 v10, 0x8

    move/from16 v0, v48

    if-eq v0, v10, :cond_5

    const/16 v10, 0xe

    move/from16 v0, v48

    if-eq v0, v10, :cond_5

    const/16 v10, 0x11

    move/from16 v0, v48

    if-ne v0, v10, :cond_11

    .line 181
    :cond_5
    if-eqz p1, :cond_6

    .line 182
    const/4 v10, 0x0

    goto :goto_1

    .line 185
    :cond_6
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 186
    .local v2, "y0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 187
    .local v3, "y1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 188
    .local v4, "y2":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 189
    .local v5, "y3":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 190
    .local v6, "M0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 191
    .local v7, "M1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 192
    .local v8, "d0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v9

    .line 194
    .local v9, "d1":C
    invoke-static/range {v2 .. v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v10

    if-nez v10, :cond_7

    .line 195
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v10, p0

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    .line 198
    invoke-direct/range {v10 .. v18}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 201
    const/16 v10, 0x8

    move/from16 v0, v48

    if-eq v0, v10, :cond_10

    .line 202
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v11

    .line 203
    .local v11, "h0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    .line 204
    .local v12, "h1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    .line 205
    .local v13, "m0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    .line 206
    .local v14, "m1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v15

    .line 207
    .local v15, "s0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v16

    .local v16, "s1":C
    move-object/from16 v10, p0

    .line 209
    invoke-direct/range {v10 .. v16}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v10

    if-nez v10, :cond_8

    .line 210
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 213
    :cond_8
    const/16 v10, 0x11

    move/from16 v0, v48

    if-ne v0, v10, :cond_f

    .line 214
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v26

    .line 215
    .local v26, "S0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v27

    .line 216
    .local v27, "S1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v28

    .line 217
    .local v28, "S2":C
    const/16 v10, 0x30

    move/from16 v0, v26

    if-lt v0, v10, :cond_9

    const/16 v10, 0x39

    move/from16 v0, v26

    if-le v0, v10, :cond_a

    .line 218
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 220
    :cond_a
    const/16 v10, 0x30

    move/from16 v0, v27

    if-lt v0, v10, :cond_b

    const/16 v10, 0x39

    move/from16 v0, v27

    if-le v0, v10, :cond_c

    .line 221
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 223
    :cond_c
    const/16 v10, 0x30

    move/from16 v0, v28

    if-lt v0, v10, :cond_d

    const/16 v10, 0x39

    move/from16 v0, v28

    if-le v0, v10, :cond_e

    .line 224
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 227
    :cond_e
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v10, v10, v26

    mul-int/lit8 v10, v10, 0x64

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v27

    mul-int/lit8 v17, v17, 0xa

    add-int v10, v10, v17

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v28

    add-int v42, v10, v17

    .line 232
    .end local v26    # "S0":C
    .end local v27    # "S1":C
    .end local v28    # "S2":C
    .local v42, "millis":I
    :goto_2
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v10, v10, v11

    mul-int/lit8 v10, v10, 0xa

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v12

    add-int v39, v10, v17

    .line 233
    .local v39, "hour":I
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v10, v10, v13

    mul-int/lit8 v10, v10, 0xa

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v14

    add-int v44, v10, v17

    .line 234
    .local v44, "minute":I
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v10, v10, v15

    mul-int/lit8 v10, v10, 0xa

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v16

    add-int v49, v10, v17

    .line 242
    .end local v11    # "h0":C
    .end local v12    # "h1":C
    .end local v13    # "m0":C
    .end local v14    # "m1":C
    .end local v15    # "s0":C
    .end local v16    # "s1":C
    .local v49, "seconds":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xb

    move/from16 v0, v17

    move/from16 v1, v39

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 243
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xc

    move/from16 v0, v17

    move/from16 v1, v44

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 244
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xd

    move/from16 v0, v17

    move/from16 v1, v49

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 245
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xe

    move/from16 v0, v17

    move/from16 v1, v42

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 247
    const/4 v10, 0x5

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 248
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 229
    .end local v39    # "hour":I
    .end local v42    # "millis":I
    .end local v44    # "minute":I
    .end local v49    # "seconds":I
    .restart local v11    # "h0":C
    .restart local v12    # "h1":C
    .restart local v13    # "m0":C
    .restart local v14    # "m1":C
    .restart local v15    # "s0":C
    .restart local v16    # "s1":C
    :cond_f
    const/16 v42, 0x0

    .restart local v42    # "millis":I
    goto :goto_2

    .line 236
    .end local v11    # "h0":C
    .end local v12    # "h1":C
    .end local v13    # "m0":C
    .end local v14    # "m1":C
    .end local v15    # "s0":C
    .end local v16    # "s1":C
    .end local v42    # "millis":I
    :cond_10
    const/16 v39, 0x0

    .line 237
    .restart local v39    # "hour":I
    const/16 v44, 0x0

    .line 238
    .restart local v44    # "minute":I
    const/16 v49, 0x0

    .line 239
    .restart local v49    # "seconds":I
    const/16 v42, 0x0

    .restart local v42    # "millis":I
    goto :goto_3

    .line 251
    .end local v2    # "y0":C
    .end local v3    # "y1":C
    .end local v4    # "y2":C
    .end local v5    # "y3":C
    .end local v6    # "M0":C
    .end local v7    # "M1":C
    .end local v8    # "d0":C
    .end local v9    # "d1":C
    .end local v39    # "hour":I
    .end local v42    # "millis":I
    .end local v44    # "minute":I
    .end local v49    # "seconds":I
    :cond_11
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_0:I

    move/from16 v0, v48

    if-ge v0, v10, :cond_12

    .line 252
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 255
    :cond_12
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    const/16 v17, 0x2d

    move/from16 v0, v17

    if-eq v10, v0, :cond_13

    .line 256
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 258
    :cond_13
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    const/16 v17, 0x2d

    move/from16 v0, v17

    if-eq v10, v0, :cond_14

    .line 259
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 262
    :cond_14
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v2

    .line 263
    .restart local v2    # "y0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v3

    .line 264
    .restart local v3    # "y1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v4

    .line 265
    .restart local v4    # "y2":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v5

    .line 266
    .restart local v5    # "y3":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v6

    .line 267
    .restart local v6    # "M0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v7

    .line 268
    .restart local v7    # "M1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v8

    .line 269
    .restart local v8    # "d0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x9

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v9

    .line 270
    .restart local v9    # "d1":C
    invoke-static/range {v2 .. v9}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkDate(CCCCCCII)Z

    move-result v10

    if-nez v10, :cond_15

    .line 271
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_15
    move-object/from16 v17, p0

    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v9

    .line 274
    invoke-direct/range {v17 .. v25}, Lcom/alibaba/fastjson/parser/JSONScanner;->setCalendar(CCCCCCCC)V

    .line 276
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v50

    .line 277
    .local v50, "t":C
    const/16 v10, 0x54

    move/from16 v0, v50

    if-eq v0, v10, :cond_16

    const/16 v10, 0x20

    move/from16 v0, v50

    if-ne v0, v10, :cond_17

    if-nez p1, :cond_17

    .line 278
    :cond_16
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_1:I

    move/from16 v0, v48

    if-ge v0, v10, :cond_1a

    .line 279
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 281
    :cond_17
    const/16 v10, 0x22

    move/from16 v0, v50

    if-eq v0, v10, :cond_18

    const/16 v10, 0x1a

    move/from16 v0, v50

    if-ne v0, v10, :cond_19

    .line 282
    :cond_18
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xb

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 283
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xc

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 284
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xd

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 285
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xe

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 287
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xa

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    move-object/from16 v0, p0

    iput-char v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 289
    const/4 v10, 0x5

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 290
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 292
    :cond_19
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 295
    :cond_1a
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    const/16 v17, 0x3a

    move/from16 v0, v17

    if-eq v10, v0, :cond_1b

    .line 296
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 298
    :cond_1b
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    const/16 v17, 0x3a

    move/from16 v0, v17

    if-eq v10, v0, :cond_1c

    .line 299
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 302
    :cond_1c
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v11

    .line 303
    .restart local v11    # "h0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v12

    .line 304
    .restart local v12    # "h1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v13

    .line 305
    .restart local v13    # "m0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0xf

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v14

    .line 306
    .restart local v14    # "m1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x11

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v15

    .line 307
    .restart local v15    # "s0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v16

    .restart local v16    # "s1":C
    move-object/from16 v10, p0

    .line 309
    invoke-direct/range {v10 .. v16}, Lcom/alibaba/fastjson/parser/JSONScanner;->checkTime(CCCCCC)Z

    move-result v10

    if-nez v10, :cond_1d

    .line 310
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 313
    :cond_1d
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v10, v10, v11

    mul-int/lit8 v10, v10, 0xa

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v12

    add-int v39, v10, v17

    .line 314
    .restart local v39    # "hour":I
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v10, v10, v13

    mul-int/lit8 v10, v10, 0xa

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v14

    add-int v44, v10, v17

    .line 315
    .restart local v44    # "minute":I
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v10, v10, v15

    mul-int/lit8 v10, v10, 0xa

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v16

    add-int v49, v10, v17

    .line 316
    .restart local v49    # "seconds":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xb

    move/from16 v0, v17

    move/from16 v1, v39

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 317
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xc

    move/from16 v0, v17

    move/from16 v1, v44

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 318
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xd

    move/from16 v0, v17

    move/from16 v1, v49

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 320
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x13

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v38

    .line 321
    .local v38, "dot":C
    const/16 v10, 0x2e

    move/from16 v0, v38

    if-ne v0, v10, :cond_1e

    .line 322
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ISO8601_LEN_2:I

    move/from16 v0, v48

    if-ge v0, v10, :cond_1f

    .line 323
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 326
    :cond_1e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xe

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 328
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x13

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    move-object/from16 v0, p0

    iput-char v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 330
    const/4 v10, 0x5

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 331
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 334
    :cond_1f
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v26

    .line 335
    .restart local v26    # "S0":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x15

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v27

    .line 336
    .restart local v27    # "S1":C
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v28

    .line 337
    .restart local v28    # "S2":C
    const/16 v10, 0x30

    move/from16 v0, v26

    if-lt v0, v10, :cond_20

    const/16 v10, 0x39

    move/from16 v0, v26

    if-le v0, v10, :cond_21

    .line 338
    :cond_20
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 340
    :cond_21
    const/16 v10, 0x30

    move/from16 v0, v27

    if-lt v0, v10, :cond_22

    const/16 v10, 0x39

    move/from16 v0, v27

    if-le v0, v10, :cond_23

    .line 341
    :cond_22
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 343
    :cond_23
    const/16 v10, 0x30

    move/from16 v0, v28

    if-lt v0, v10, :cond_24

    const/16 v10, 0x39

    move/from16 v0, v28

    if-le v0, v10, :cond_25

    .line 344
    :cond_24
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 347
    :cond_25
    sget-object v10, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v10, v10, v26

    mul-int/lit8 v10, v10, 0x64

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v27

    mul-int/lit8 v17, v17, 0xa

    add-int v10, v10, v17

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONScanner;->digits:[I

    aget v17, v17, v28

    add-int v42, v10, v17

    .line 348
    .restart local v42    # "millis":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->calendar:Ljava/util/Calendar;

    const/16 v17, 0xe

    move/from16 v0, v17

    move/from16 v1, v42

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 350
    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    add-int/lit8 v10, v10, 0x17

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->bp:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;->charAt(I)C

    move-result v10

    move-object/from16 v0, p0

    iput-char v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->ch:C

    .line 352
    const/4 v10, 0x5

    move-object/from16 v0, p0

    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONScanner;->token:I

    .line 353
    const/4 v10, 0x1

    goto/16 :goto_1
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->hasSpecial:Z

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->np:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sbuf:[C

    const/4 v2, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->sp:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public final subString(II)Ljava/lang/String;
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONScanner;->text:Ljava/lang/String;

    add-int v1, p1, p2

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
