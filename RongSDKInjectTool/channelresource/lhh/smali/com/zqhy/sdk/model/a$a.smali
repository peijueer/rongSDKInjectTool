.class public Lcom/zqhy/sdk/model/a$a;
.super Ljava/lang/Object;
.source "ACache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zqhy/sdk/model/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field protected a:Ljava/io/File;

.field final synthetic b:Lcom/zqhy/sdk/model/a;

.field private final c:Ljava/util/concurrent/atomic/AtomicLong;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final e:J

.field private final f:I

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/zqhy/sdk/model/a;Ljava/io/File;JI)V
    .locals 1

    .prologue
    .line 631
    iput-object p1, p0, Lcom/zqhy/sdk/model/a$a;->b:Lcom/zqhy/sdk/model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/zqhy/sdk/model/a$a;->g:Ljava/util/Map;

    .line 632
    iput-object p2, p0, Lcom/zqhy/sdk/model/a$a;->a:Ljava/io/File;

    .line 633
    iput-wide p3, p0, Lcom/zqhy/sdk/model/a$a;->e:J

    .line 634
    iput p5, p0, Lcom/zqhy/sdk/model/a$a;->f:I

    .line 635
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/zqhy/sdk/model/a$a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 636
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/zqhy/sdk/model/a$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 637
    invoke-direct {p0}, Lcom/zqhy/sdk/model/a$a;->a()V

    .line 638
    return-void
.end method

.method synthetic constructor <init>(Lcom/zqhy/sdk/model/a;Ljava/io/File;JILcom/zqhy/sdk/model/a$1;)V
    .locals 1

    .prologue
    .line 623
    invoke-direct/range {p0 .. p5}, Lcom/zqhy/sdk/model/a$a;-><init>(Lcom/zqhy/sdk/model/a;Ljava/io/File;JI)V

    return-void
.end method

.method static synthetic a(Lcom/zqhy/sdk/model/a$a;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lcom/zqhy/sdk/model/a$a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 687
    invoke-direct {p0, p1}, Lcom/zqhy/sdk/model/a$a;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 688
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 689
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 690
    iget-object v2, p0, Lcom/zqhy/sdk/model/a$a;->g:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    return-object v0
.end method

.method static synthetic a(Lcom/zqhy/sdk/model/a$a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/zqhy/sdk/model/a$a;->g:Ljava/util/Map;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 644
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/zqhy/sdk/model/a$a$1;

    invoke-direct {v1, p0}, Lcom/zqhy/sdk/model/a$a$1;-><init>(Lcom/zqhy/sdk/model/a$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 660
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 661
    return-void
.end method

.method static synthetic a(Lcom/zqhy/sdk/model/a$a;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lcom/zqhy/sdk/model/a$a;->a(Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 6

    .prologue
    .line 664
    iget-object v0, p0, Lcom/zqhy/sdk/model/a$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 665
    :goto_0
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/zqhy/sdk/model/a$a;->f:I

    if-le v0, v1, :cond_0

    .line 666
    invoke-direct {p0}, Lcom/zqhy/sdk/model/a$a;->b()J

    move-result-wide v0

    .line 667
    iget-object v2, p0, Lcom/zqhy/sdk/model/a$a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 669
    iget-object v0, p0, Lcom/zqhy/sdk/model/a$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    goto :goto_0

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/zqhy/sdk/model/a$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 673
    invoke-direct {p0, p1}, Lcom/zqhy/sdk/model/a$a;->b(Ljava/io/File;)J

    move-result-wide v2

    .line 674
    iget-object v0, p0, Lcom/zqhy/sdk/model/a$a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 675
    :goto_1
    add-long/2addr v0, v2

    iget-wide v4, p0, Lcom/zqhy/sdk/model/a$a;->e:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 676
    invoke-direct {p0}, Lcom/zqhy/sdk/model/a$a;->b()J

    move-result-wide v0

    .line 677
    iget-object v4, p0, Lcom/zqhy/sdk/model/a$a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v0, v0

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v0

    goto :goto_1

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/zqhy/sdk/model/a$a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 681
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 682
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 683
    iget-object v1, p0, Lcom/zqhy/sdk/model/a$a;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    return-void
.end method

.method private b()J
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 721
    iget-object v0, p0, Lcom/zqhy/sdk/model/a$a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 722
    const-wide/16 v0, 0x0

    .line 747
    :cond_0
    :goto_0
    return-wide v0

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/zqhy/sdk/model/a$a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 728
    iget-object v4, p0, Lcom/zqhy/sdk/model/a$a;->g:Ljava/util/Map;

    monitor-enter v4

    .line 729
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 730
    if-nez v2, :cond_2

    .line 731
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 732
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    :goto_2
    move-object v2, v1

    move-object v3, v0

    .line 740
    goto :goto_1

    .line 734
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 735
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    .line 737
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_2

    .line 741
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    invoke-direct {p0, v2}, Lcom/zqhy/sdk/model/a$a;->b(Ljava/io/File;)J

    move-result-wide v0

    .line 744
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 745
    iget-object v3, p0, Lcom/zqhy/sdk/model/a$a;->g:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 741
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    move-object v1, v2

    move-object v0, v3

    goto :goto_2
.end method

.method static synthetic b(Lcom/zqhy/sdk/model/a$a;Ljava/io/File;)J
    .locals 2

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lcom/zqhy/sdk/model/a$a;->b(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method private b(Ljava/io/File;)J
    .locals 2

    .prologue
    .line 751
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Lcom/zqhy/sdk/model/a$a;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lcom/zqhy/sdk/model/a$a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 696
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/zqhy/sdk/model/a$a;->a:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic b(Lcom/zqhy/sdk/model/a$a;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/zqhy/sdk/model/a$a;->c:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic c(Lcom/zqhy/sdk/model/a$a;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/zqhy/sdk/model/a$a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic c(Lcom/zqhy/sdk/model/a$a;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lcom/zqhy/sdk/model/a$a;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 700
    invoke-direct {p0, p1}, Lcom/zqhy/sdk/model/a$a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 701
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method
