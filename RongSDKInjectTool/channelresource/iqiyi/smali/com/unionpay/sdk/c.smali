.class Lcom/unionpay/sdk/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/sdk/c$a;
    }
.end annotation


# static fields
.field private static volatile f:Lcom/unionpay/sdk/c;

.field private static g:Lcom/unionpay/sdk/i;

.field private static n:Landroid/os/Handler;

.field private static o:Landroid/os/HandlerThread;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private volatile e:Z

.field private h:Lcom/unionpay/sdk/ar;

.field private final i:I

.field private j:I

.field private k:Z

.field private l:J

.field private m:Ljava/util/Random;

.field private p:Ljava/nio/channels/FileLock;

.field private final q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/unionpay/sdk/c;->f:Lcom/unionpay/sdk/c;

    sput-object v0, Lcom/unionpay/sdk/c;->g:Lcom/unionpay/sdk/i;

    sput-object v0, Lcom/unionpay/sdk/c;->n:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "prepareSubmitHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/unionpay/sdk/c;->o:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/unionpay/sdk/q;

    sget-object v1, Lcom/unionpay/sdk/c;->o:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unionpay/sdk/q;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/unionpay/sdk/c;->n:Landroid/os/Handler;

    :try_start_0
    invoke-static {}, Lcom/unionpay/sdk/ah;->a()Lcom/unionpay/sdk/ah;

    move-result-object v0

    invoke-static {}, Lcom/unionpay/sdk/c;->a()Lcom/unionpay/sdk/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/sdk/ah;->register(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 6

    const/16 v5, 0x7530

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "140.207.168.45"

    iput-object v0, p0, Lcom/unionpay/sdk/c;->a:Ljava/lang/String;

    const-string v0, "140.207.168.45"

    iput-object v0, p0, Lcom/unionpay/sdk/c;->b:Ljava/lang/String;

    const-string v0, "http"

    iput-object v0, p0, Lcom/unionpay/sdk/c;->c:Ljava/lang/String;

    const-string v0, "http://140.207.168.45/g/d"

    iput-object v0, p0, Lcom/unionpay/sdk/c;->d:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/unionpay/sdk/c;->e:Z

    new-instance v0, Lcom/unionpay/sdk/c$a;

    const-string v1, "140.207.168.45"

    const-string v2, "140.207.168.45"

    const-string v3, "http://140.207.168.45/g/d"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/unionpay/sdk/c$a;-><init>(Lcom/unionpay/sdk/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unionpay/sdk/c;->h:Lcom/unionpay/sdk/ar;

    iput v5, p0, Lcom/unionpay/sdk/c;->i:I

    iput v5, p0, Lcom/unionpay/sdk/c;->j:I

    iput-boolean v4, p0, Lcom/unionpay/sdk/c;->k:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/unionpay/sdk/c;->j:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/unionpay/sdk/c;->l:J

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/unionpay/sdk/c;->m:Ljava/util/Random;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/sdk/c;->p:Ljava/nio/channels/FileLock;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/sdk/c;->q:Ljava/lang/String;

    return-void
.end method

.method static a()Lcom/unionpay/sdk/c;
    .locals 2

    sget-object v0, Lcom/unionpay/sdk/c;->f:Lcom/unionpay/sdk/c;

    if-nez v0, :cond_1

    const-class v1, Lcom/unionpay/sdk/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/unionpay/sdk/c;->f:Lcom/unionpay/sdk/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unionpay/sdk/c;

    invoke-direct {v0}, Lcom/unionpay/sdk/c;-><init>()V

    sput-object v0, Lcom/unionpay/sdk/c;->f:Lcom/unionpay/sdk/c;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/unionpay/sdk/c;->f:Lcom/unionpay/sdk/c;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/unionpay/sdk/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/unionpay/sdk/c;->b()V

    return-void
.end method

.method private declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/unionpay/sdk/c;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/unionpay/sdk/ab;->d:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/unionpay/sdk/ab;->d:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/unionpay/sdk/c;->p:Ljava/nio/channels/FileLock;

    :cond_2
    iget-object v0, p0, Lcom/unionpay/sdk/c;->p:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unionpay/sdk/f;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/unionpay/sdk/bc;->d()Lcom/unionpay/sdk/bc;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/sdk/r;->a(Lcom/unionpay/sdk/as;)Lcom/unionpay/sdk/m$f;

    move-result-object v0

    new-instance v1, Lcom/unionpay/sdk/ba;

    invoke-direct {v1}, Lcom/unionpay/sdk/ba;-><init>()V

    iget-object v2, p0, Lcom/unionpay/sdk/c;->h:Lcom/unionpay/sdk/ar;

    iget-object v2, v2, Lcom/unionpay/sdk/ar;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/unionpay/sdk/ba;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/unionpay/sdk/c;->h:Lcom/unionpay/sdk/ar;

    iget-object v2, v2, Lcom/unionpay/sdk/ar;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/unionpay/sdk/ba;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/unionpay/sdk/c;->h:Lcom/unionpay/sdk/ar;

    iget-object v2, v2, Lcom/unionpay/sdk/ar;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/unionpay/sdk/ba;->a:Ljava/lang/String;

    const-string v2, "Analytics"

    iput-object v2, v1, Lcom/unionpay/sdk/ba;->d:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, v1, Lcom/unionpay/sdk/ba;->e:Ljava/lang/String;

    iput-object v0, v1, Lcom/unionpay/sdk/ba;->g:Ljava/lang/Object;

    if-nez v0, :cond_3

    const-string v0, "No new data found!"

    invoke-static {v0}, Lcom/unionpay/sdk/ay;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/unionpay/sdk/ba;->f:[B

    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/unionpay/sdk/aw;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/sdk/c;->e:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-direct {p0}, Lcom/unionpay/sdk/c;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_3
    const-string v2, "New data found, Submitting..."

    invoke-static {v2}, Lcom/unionpay/sdk/ay;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "entity"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/sdk/c;->h:Lcom/unionpay/sdk/ar;

    invoke-virtual {v0, v2}, Lcom/unionpay/sdk/ar;->a(Ljava/util/HashMap;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/unionpay/sdk/ba;->f:[B

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/unionpay/sdk/ba;->h:Z

    goto :goto_1

    :cond_4
    const-string v0, "Aborted submitting, file cannot be accessed due to lock."

    sget-boolean v1, Lcom/unionpay/sdk/UPAgent;->LOG_ON:Z

    if-eqz v1, :cond_0

    const-string v1, "UPLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/sdk/c;->p:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/unionpay/sdk/c;->p:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method final declared-synchronized a(Z)V
    .locals 10

    const-wide/32 v8, 0x1d4c0

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    if-eqz p1, :cond_2

    :goto_0
    iput v2, v4, Landroid/os/Message;->what:I

    if-nez p1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/unionpay/sdk/c;->l:J

    sub-long/2addr v2, v6

    cmp-long v5, v2, v0

    if-ltz v5, :cond_1

    iget-wide v6, p0, Lcom/unionpay/sdk/c;->l:J

    cmp-long v5, v6, v0

    if-lez v5, :cond_0

    cmp-long v5, v2, v8

    if-gez v5, :cond_0

    sub-long v0, v8, v2

    :cond_0
    sget-object v2, Lcom/unionpay/sdk/c;->n:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v2, Lcom/unionpay/sdk/c;->n:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v2, Lcom/unionpay/sdk/c;->n:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    :try_start_1
    iget-boolean v0, p0, Lcom/unionpay/sdk/c;->k:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x7530

    iput v0, p0, Lcom/unionpay/sdk/c;->j:I

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/unionpay/sdk/c;->l:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/unionpay/sdk/c;->j:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    sget-object v0, Lcom/unionpay/sdk/c;->n:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/unionpay/sdk/c;->n:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/unionpay/sdk/c;->n:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onTDEBEventResponse(Lcom/unionpay/sdk/bb;)V
    .locals 3

    const v2, 0x1d4c0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unionpay/sdk/c;->l:J

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/unionpay/sdk/bb;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/unionpay/sdk/bb;->a:Landroid/os/Bundle;

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Analytics"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/unionpay/sdk/bb;->a:Landroid/os/Bundle;

    const-string v1, "statusCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    const-string v0, "Data submitting Succeed!"

    invoke-static {v0}, Lcom/unionpay/sdk/ay;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/unionpay/sdk/bb;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/unionpay/sdk/bb;->b:Ljava/lang/Object;

    instance-of v1, v1, Lcom/unionpay/sdk/m$f;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/unionpay/sdk/bb;->b:Ljava/lang/Object;

    check-cast v0, Lcom/unionpay/sdk/m$f;

    :cond_0
    invoke-static {}, Lcom/unionpay/sdk/bc;->d()Lcom/unionpay/sdk/bc;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/sdk/r;->a(Lcom/unionpay/sdk/m$f;Lcom/unionpay/sdk/as;)V

    const v0, 0x1d4c0

    iput v0, p0, Lcom/unionpay/sdk/c;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/sdk/c;->k:Z

    :cond_1
    :goto_0
    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unionpay/sdk/f;->c(Landroid/content/Context;)Z

    invoke-static {}, Lcom/unionpay/sdk/az;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/unionpay/sdk/az;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/unionpay/sdk/c;->a(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/unionpay/sdk/c;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/sdk/c;->e:Z

    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/unionpay/sdk/c;->m:Ljava/util/Random;

    const v1, 0xea60

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, -0x7530

    add-int/2addr v0, v2

    iput v0, p0, Lcom/unionpay/sdk/c;->j:I

    const-string v0, "Data submitting Failed!"

    invoke-static {v0}, Lcom/unionpay/sdk/ay;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/sdk/c;->k:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
