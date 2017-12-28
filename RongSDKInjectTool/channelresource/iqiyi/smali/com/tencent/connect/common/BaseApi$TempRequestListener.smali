.class public Lcom/tencent/connect/common/BaseApi$TempRequestListener;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/tauth/IRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/common/BaseApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TempRequestListener"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/tencent/tauth/IUiListener;

.field final synthetic this$0:Lcom/tencent/connect/common/BaseApi;


# direct methods
.method public constructor <init>(Lcom/tencent/connect/common/BaseApi;Lcom/tencent/tauth/IUiListener;)V
    .locals 2

    .prologue
    .line 300
    iput-object p1, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->this$0:Lcom/tencent/connect/common/BaseApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p2, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->mListener:Lcom/tencent/tauth/IUiListener;

    .line 302
    new-instance v0, Lcom/tencent/connect/common/BaseApi$TempRequestListener$1;

    invoke-static {}, Lcom/tencent/open/utils/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/tencent/connect/common/BaseApi$TempRequestListener$1;-><init>(Lcom/tencent/connect/common/BaseApi$TempRequestListener;Landroid/os/Looper;Lcom/tencent/connect/common/BaseApi;)V

    iput-object v0, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->mHandler:Landroid/os/Handler;

    .line 312
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/connect/common/BaseApi$TempRequestListener;)Lcom/tencent/tauth/IUiListener;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->mListener:Lcom/tencent/tauth/IUiListener;

    return-object v0
.end method


# virtual methods
.method public onComplete(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 317
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 318
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 319
    iget-object v1, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 320
    return-void
.end method

.method public onConnectTimeoutException(Lorg/apache/http/conn/ConnectTimeoutException;)V
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 349
    invoke-virtual {p1}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 350
    const/4 v1, -0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 351
    iget-object v1, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 352
    return-void
.end method

.method public onHttpStatusException(Lcom/tencent/open/utils/HttpUtils$HttpStatusException;)V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 373
    invoke-virtual {p1}, Lcom/tencent/open/utils/HttpUtils$HttpStatusException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 374
    const/16 v1, -0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 375
    iget-object v1, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 376
    return-void
.end method

.method public onIOException(Ljava/io/IOException;)V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 325
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 326
    const/4 v1, -0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 327
    iget-object v1, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 328
    return-void
.end method

.method public onJSONException(Lorg/json/JSONException;)V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 341
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 342
    const/4 v1, -0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 343
    iget-object v1, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 344
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;)V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 333
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 334
    const/4 v1, -0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 335
    iget-object v1, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 336
    return-void
.end method

.method public onNetworkUnavailableException(Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;)V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 365
    invoke-virtual {p1}, Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 366
    const/16 v1, -0xa

    iput v1, v0, Landroid/os/Message;->what:I

    .line 367
    iget-object v1, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 368
    return-void
.end method

.method public onSocketTimeoutException(Ljava/net/SocketTimeoutException;)V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 357
    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 358
    const/4 v1, -0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 359
    iget-object v1, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 360
    return-void
.end method

.method public onUnknowException(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 381
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 382
    const/4 v1, -0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 383
    iget-object v1, p0, Lcom/tencent/connect/common/BaseApi$TempRequestListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 384
    return-void
.end method
