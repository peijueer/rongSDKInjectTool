.class final Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;
.super Ljava/util/concurrent/FutureTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;


# direct methods
.method public constructor <init>(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)V
    .locals 1

    iput-object p1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    new-instance v0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b$1;

    invoke-direct {v0, p1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b$1;-><init>(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/concurrent/TimeUnit;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-virtual {p0, v0, v1, p1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v2}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->cancel(Z)Z

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v2}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->cancel(Z)Z

    :goto_1
    const-string v0, ""

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v2}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->cancel(Z)Z

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0, v2}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->cancel(Z)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v2}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->cancel(Z)Z

    throw v0
.end method

.method static synthetic a(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/unionpay/tsmservice/request/GetEncryptDataRequestParams;

    invoke-direct {v0}, Lcom/unionpay/tsmservice/request/GetEncryptDataRequestParams;-><init>()V

    invoke-virtual {v0, p1}, Lcom/unionpay/tsmservice/request/GetEncryptDataRequestParams;->setPan(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->g(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unionpay/tsmservice/request/GetEncryptDataRequestParams;->setType(I)V

    new-instance v1, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b$a;

    invoke-direct {v1, p0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b$a;-><init>(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;)V

    :try_start_0
    iget-object v2, p0, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->a:Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;

    invoke-static {v2}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;->i(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard;)Lcom/unionpay/tsmservice/UPTsmAddon;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/unionpay/tsmservice/UPTsmAddon;->getEncryptData(Lcom/unionpay/tsmservice/request/GetEncryptDataRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unionpay/tsmservice/widget/UPSaftyKeyboard$b;->set(Ljava/lang/Object;)V

    return-void
.end method
