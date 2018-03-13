.class Lcom/zqhy/sdk/model/a$a$1;
.super Ljava/lang/Object;
.source "ACache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zqhy/sdk/model/a$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zqhy/sdk/model/a$a;


# direct methods
.method constructor <init>(Lcom/zqhy/sdk/model/a$a;)V
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Lcom/zqhy/sdk/model/a$a$1;->a:Lcom/zqhy/sdk/model/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 647
    .line 649
    iget-object v1, p0, Lcom/zqhy/sdk/model/a$a$1;->a:Lcom/zqhy/sdk/model/a$a;

    iget-object v1, v1, Lcom/zqhy/sdk/model/a$a;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 650
    if-eqz v3, :cond_1

    .line 651
    array-length v4, v3

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 652
    int-to-long v6, v2

    iget-object v2, p0, Lcom/zqhy/sdk/model/a$a$1;->a:Lcom/zqhy/sdk/model/a$a;

    invoke-static {v2, v5}, Lcom/zqhy/sdk/model/a$a;->b(Lcom/zqhy/sdk/model/a$a;Ljava/io/File;)J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v2, v6

    .line 653
    add-int/lit8 v1, v1, 0x1

    .line 654
    iget-object v6, p0, Lcom/zqhy/sdk/model/a$a$1;->a:Lcom/zqhy/sdk/model/a$a;

    invoke-static {v6}, Lcom/zqhy/sdk/model/a$a;->a(Lcom/zqhy/sdk/model/a$a;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/zqhy/sdk/model/a$a$1;->a:Lcom/zqhy/sdk/model/a$a;

    invoke-static {v0}, Lcom/zqhy/sdk/model/a$a;->b(Lcom/zqhy/sdk/model/a$a;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 657
    iget-object v0, p0, Lcom/zqhy/sdk/model/a$a$1;->a:Lcom/zqhy/sdk/model/a$a;

    invoke-static {v0}, Lcom/zqhy/sdk/model/a$a;->c(Lcom/zqhy/sdk/model/a$a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 659
    :cond_1
    return-void
.end method
