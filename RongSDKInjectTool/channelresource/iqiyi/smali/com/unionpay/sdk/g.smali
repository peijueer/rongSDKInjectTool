.class final Lcom/unionpay/sdk/g;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/unionpay/sdk/g;

.field private static e:Lcom/unionpay/sdk/ba;


# instance fields
.field private final b:Ljava/util/zip/CRC32;

.field private c:Landroid/os/Handler;

.field private final d:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/unionpay/sdk/g;->a:Lcom/unionpay/sdk/g;

    sput-object v0, Lcom/unionpay/sdk/g;->e:Lcom/unionpay/sdk/ba;

    invoke-static {}, Lcom/unionpay/sdk/g;->a()Lcom/unionpay/sdk/g;

    move-result-object v0

    iget-object v0, v0, Lcom/unionpay/sdk/g;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-static {}, Lcom/unionpay/sdk/g;->a()Lcom/unionpay/sdk/g;

    move-result-object v0

    new-instance v1, Lcom/unionpay/sdk/l;

    invoke-static {}, Lcom/unionpay/sdk/g;->a()Lcom/unionpay/sdk/g;

    move-result-object v2

    iget-object v2, v2, Lcom/unionpay/sdk/g;->d:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/unionpay/sdk/l;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/unionpay/sdk/g;->c:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/unionpay/sdk/g;->b:Ljava/util/zip/CRC32;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/sdk/g;->c:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetWorkThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unionpay/sdk/g;->d:Landroid/os/HandlerThread;

    return-void
.end method

.method static synthetic a(Lcom/unionpay/sdk/ba;)Lcom/unionpay/sdk/ba;
    .locals 0

    sput-object p0, Lcom/unionpay/sdk/g;->e:Lcom/unionpay/sdk/ba;

    return-object p0
.end method

.method public static a()Lcom/unionpay/sdk/g;
    .locals 2

    sget-object v0, Lcom/unionpay/sdk/g;->a:Lcom/unionpay/sdk/g;

    if-nez v0, :cond_1

    const-class v1, Lcom/unionpay/sdk/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/unionpay/sdk/g;->a:Lcom/unionpay/sdk/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unionpay/sdk/g;

    invoke-direct {v0}, Lcom/unionpay/sdk/g;-><init>()V

    sput-object v0, Lcom/unionpay/sdk/g;->a:Lcom/unionpay/sdk/g;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/unionpay/sdk/g;->a:Lcom/unionpay/sdk/g;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/unionpay/sdk/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Object;IZ)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/unionpay/sdk/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Object;IZ)V

    return-void
.end method

.method private final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Object;IZ)V
    .locals 6

    monitor-enter p0

    if-nez p8, :cond_1

    :try_start_0
    invoke-static {p5}, Lcom/unionpay/sdk/g;->a([B)[B

    move-result-object v5

    :goto_0
    iget-object v0, p0, Lcom/unionpay/sdk/g;->b:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    iget-object v0, p0, Lcom/unionpay/sdk/g;->b:Ljava/util/zip/CRC32;

    invoke-virtual {v0, v5}, Ljava/util/zip/CRC32;->update([B)V

    if-nez p7, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?crc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/sdk/g;->b:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    sget-object v0, Lcom/unionpay/sdk/ab;->mContext:Landroid/content/Context;

    move-object v1, p3

    move-object v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/unionpay/sdk/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/unionpay/sdk/b$d;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/unionpay/sdk/ab;->e:J

    new-instance v1, Lcom/unionpay/sdk/bb;

    invoke-direct {v1}, Lcom/unionpay/sdk/bb;-><init>()V

    iget-object v2, v1, Lcom/unionpay/sdk/bb;->a:Landroid/os/Bundle;

    const-string v3, "statusCode"

    iget v4, v0, Lcom/unionpay/sdk/b$d;->a:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, v1, Lcom/unionpay/sdk/bb;->a:Landroid/os/Bundle;

    const-string v3, "responseMsg"

    iget-object v0, v0, Lcom/unionpay/sdk/b$d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/unionpay/sdk/bb;->a:Landroid/os/Bundle;

    const-string v2, "action"

    sget-object v3, Lcom/unionpay/sdk/g;->e:Lcom/unionpay/sdk/ba;

    iget-object v3, v3, Lcom/unionpay/sdk/ba;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p6, v1, Lcom/unionpay/sdk/bb;->b:Ljava/lang/Object;

    iput p7, v1, Lcom/unionpay/sdk/bb;->c:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/unionpay/sdk/ah;->a()Lcom/unionpay/sdk/ah;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/unionpay/sdk/ah;->post(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?crc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/sdk/g;->b:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_1
    move-object v5, p5

    goto/16 :goto_0
.end method

.method private static a([B)[B
    .locals 5

    new-instance v0, Ljava/util/zip/Deflater;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/zip/Deflater;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v3, p0

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_2
    throw v0

    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Original: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unionpay/sdk/ay;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Compressed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unionpay/sdk/ay;->a(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method static synthetic b()Lcom/unionpay/sdk/ba;
    .locals 1

    sget-object v0, Lcom/unionpay/sdk/g;->e:Lcom/unionpay/sdk/ba;

    return-object v0
.end method

.method static synthetic c()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/unionpay/sdk/bb;

    invoke-direct {v0}, Lcom/unionpay/sdk/bb;-><init>()V

    iput-object v1, v0, Lcom/unionpay/sdk/bb;->a:Landroid/os/Bundle;

    iput-object v1, v0, Lcom/unionpay/sdk/bb;->b:Ljava/lang/Object;

    :try_start_0
    invoke-static {}, Lcom/unionpay/sdk/ah;->a()Lcom/unionpay/sdk/ah;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/unionpay/sdk/ah;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final onTDEBEventSubmitRequest(Lcom/unionpay/sdk/ba;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/unionpay/sdk/g;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
