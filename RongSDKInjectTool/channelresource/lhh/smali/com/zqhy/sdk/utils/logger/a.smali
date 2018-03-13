.class public final Lcom/zqhy/sdk/utils/logger/a;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zqhy/sdk/utils/logger/a$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/zqhy/sdk/utils/logger/a$a;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/zqhy/sdk/utils/logger/a$a;

    invoke-direct {v0}, Lcom/zqhy/sdk/utils/logger/a$a;-><init>()V

    sput-object v0, Lcom/zqhy/sdk/utils/logger/a;->a:Lcom/zqhy/sdk/utils/logger/a$a;

    .line 57
    const-string v0, "debugTAG"

    sput-object v0, Lcom/zqhy/sdk/utils/logger/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/zqhy/sdk/utils/logger/a$a;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/zqhy/sdk/utils/logger/a;->a:Lcom/zqhy/sdk/utils/logger/a$a;

    return-object v0
.end method

.method static synthetic a(I)V
    .locals 0

    .prologue
    .line 16
    invoke-static {p0}, Lcom/zqhy/sdk/utils/logger/a;->b(I)V

    return-void
.end method

.method private static a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 296
    const-string v0, "\u2554\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    invoke-static {p0, p1, v0}, Lcom/zqhy/sdk/utils/logger/a;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method private static a(ILjava/lang/String;I)V
    .locals 6

    .prologue
    .line 300
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 301
    sget-object v0, Lcom/zqhy/sdk/utils/logger/a;->a:Lcom/zqhy/sdk/utils/logger/a$a;

    iget-boolean v0, v0, Lcom/zqhy/sdk/utils/logger/a$a;->b:Z

    if-eqz v0, :cond_0

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2551 Thread: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/zqhy/sdk/utils/logger/a;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {p0, p1}, Lcom/zqhy/sdk/utils/logger/a;->c(ILjava/lang/String;)V

    .line 305
    :cond_0
    const-string v0, ""

    .line 306
    :goto_0
    if-lez p2, :cond_1

    .line 307
    add-int/lit8 v2, p2, 0x5

    .line 308
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    const-string v4, "\u2551 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 310
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    .line 311
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zqhy/sdk/utils/logger/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    .line 312
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    .line 313
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    .line 314
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    .line 315
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    .line 316
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    .line 317
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v2, v1, v2

    .line 318
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    .line 319
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/zqhy/sdk/utils/logger/a;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 306
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 323
    :cond_1
    return-void
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 334
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 335
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 336
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u2551 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v3}, Lcom/zqhy/sdk/utils/logger/a;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_0
    return-void
.end method

.method private static declared-synchronized a(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    const/16 v4, 0xfa0

    .line 267
    const-class v1, Lcom/zqhy/sdk/utils/logger/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/zqhy/sdk/utils/logger/a;->a:Lcom/zqhy/sdk/utils/logger/a$a;

    iget-object v0, v0, Lcom/zqhy/sdk/utils/logger/a$a;->c:Lcom/zqhy/sdk/utils/logger/LogLevel;

    sget-object v2, Lcom/zqhy/sdk/utils/logger/LogLevel;->NONE:Lcom/zqhy/sdk/utils/logger/LogLevel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v2, :cond_0

    .line 293
    :goto_0
    monitor-exit v1

    return-void

    .line 270
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/zqhy/sdk/utils/logger/a;->a(ILjava/lang/String;)V

    .line 271
    invoke-static {p0, p1, p3}, Lcom/zqhy/sdk/utils/logger/a;->a(ILjava/lang/String;I)V

    .line 274
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 275
    array-length v3, v2

    .line 276
    if-gt v3, v4, :cond_2

    .line 277
    if-lez p3, :cond_1

    .line 278
    invoke-static {p0, p1}, Lcom/zqhy/sdk/utils/logger/a;->c(ILjava/lang/String;)V

    .line 280
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/zqhy/sdk/utils/logger/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-static {p0, p1}, Lcom/zqhy/sdk/utils/logger/a;->b(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 284
    :cond_2
    if-lez p3, :cond_3

    .line 285
    :try_start_2
    invoke-static {p0, p1}, Lcom/zqhy/sdk/utils/logger/a;->c(ILjava/lang/String;)V

    .line 287
    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_4

    .line 288
    sub-int v4, v3, v0

    const/16 v5, 0xfa0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 290
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v0, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {p0, p1, v5}, Lcom/zqhy/sdk/utils/logger/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 287
    add-int/lit16 v0, v0, 0xfa0

    goto :goto_1

    .line 292
    :cond_4
    invoke-static {p0, p1}, Lcom/zqhy/sdk/utils/logger/a;->b(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/zqhy/sdk/utils/logger/a;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 110
    const/4 v0, 0x0

    sget-object v1, Lcom/zqhy/sdk/utils/logger/a;->a:Lcom/zqhy/sdk/utils/logger/a$a;

    iget v1, v1, Lcom/zqhy/sdk/utils/logger/a$a;->a:I

    invoke-static {p0, p1, v0, v1}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 111
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 2

    .prologue
    .line 136
    invoke-static {p3}, Lcom/zqhy/sdk/utils/logger/a;->b(I)V

    .line 137
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 140
    :goto_0
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    :cond_0
    if-nez v0, :cond_1

    .line 144
    const-string v0, "No message/exception is set"

    .line 146
    :cond_1
    const/4 v1, 0x6

    invoke-static {v1, p0, v0, p3}, Lcom/zqhy/sdk/utils/logger/a;->a(ILjava/lang/String;Ljava/lang/String;I)V

    .line 147
    return-void

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 368
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(I)V
    .locals 2

    .prologue
    .line 372
    if-ltz p0, :cond_0

    const/4 v0, 0x5

    if-le p0, v0, :cond_1

    .line 373
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "methodCount must be > 0 and < 5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_1
    return-void
.end method

.method private static b(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 326
    const-string v0, "\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    invoke-static {p0, p1, v0}, Lcom/zqhy/sdk/utils/logger/a;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method private static b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 341
    invoke-static {p1}, Lcom/zqhy/sdk/utils/logger/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    packed-switch p0, :pswitch_data_0

    .line 361
    :pswitch_0
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_0
    return-void

    .line 344
    :pswitch_1
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 347
    :pswitch_2
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 350
    :pswitch_3
    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 353
    :pswitch_4
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 356
    :pswitch_5
    invoke-static {v0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 378
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zqhy/sdk/utils/logger/a;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zqhy/sdk/utils/logger/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/zqhy/sdk/utils/logger/a;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method private static c(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 330
    const-string v0, "\u255f\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    invoke-static {p0, p1, v0}, Lcom/zqhy/sdk/utils/logger/a;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 331
    return-void
.end method
