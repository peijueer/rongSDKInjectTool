.class public Lcom/zqhy/sdk/pay/a/b;
.super Ljava/lang/Object;
.source "AliPayInstance.java"


# static fields
.field private static b:Lcom/zqhy/sdk/pay/a/b;


# instance fields
.field private a:Landroid/app/Activity;

.field private c:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/zqhy/sdk/pay/a/b$1;

    invoke-direct {v0, p0}, Lcom/zqhy/sdk/pay/a/b$1;-><init>(Lcom/zqhy/sdk/pay/a/b;)V

    iput-object v0, p0, Lcom/zqhy/sdk/pay/a/b;->c:Landroid/os/Handler;

    .line 25
    iput-object p1, p0, Lcom/zqhy/sdk/pay/a/b;->a:Landroid/app/Activity;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/zqhy/sdk/pay/a/b;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/zqhy/sdk/pay/a/b;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)Lcom/zqhy/sdk/pay/a/b;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/zqhy/sdk/pay/a/b;->b:Lcom/zqhy/sdk/pay/a/b;

    if-nez v0, :cond_0

    .line 32
    const-class v1, Lcom/zqhy/sdk/pay/a/b;

    monitor-enter v1

    .line 33
    :try_start_0
    new-instance v0, Lcom/zqhy/sdk/pay/a/b;

    invoke-direct {v0, p0}, Lcom/zqhy/sdk/pay/a/b;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/zqhy/sdk/pay/a/b;->b:Lcom/zqhy/sdk/pay/a/b;

    .line 34
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_0
    sget-object v0, Lcom/zqhy/sdk/pay/a/b;->b:Lcom/zqhy/sdk/pay/a/b;

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Handler;I)V
    .locals 2

    .prologue
    .line 75
    new-instance v0, Lcom/zqhy/sdk/pay/a/b$2;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/zqhy/sdk/pay/a/b$2;-><init>(Lcom/zqhy/sdk/pay/a/b;Ljava/lang/String;ILandroid/os/Handler;)V

    .line 92
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 93
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 94
    return-void
.end method
