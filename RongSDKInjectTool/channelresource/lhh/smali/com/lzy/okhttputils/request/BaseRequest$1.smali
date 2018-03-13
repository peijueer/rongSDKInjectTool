.class Lcom/lzy/okhttputils/request/BaseRequest$1;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Lcom/lzy/okhttputils/request/ProgressRequestBody$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okhttputils/request/BaseRequest;->wrapRequestBody(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okhttputils/request/BaseRequest;


# direct methods
.method constructor <init>(Lcom/lzy/okhttputils/request/BaseRequest;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/lzy/okhttputils/request/BaseRequest$1;->this$0:Lcom/lzy/okhttputils/request/BaseRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestProgress(JJJ)V
    .locals 9

    .prologue
    .line 352
    invoke-static {}, Lcom/lzy/okhttputils/OkHttpUtils;->getInstance()Lcom/lzy/okhttputils/OkHttpUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okhttputils/OkHttpUtils;->getDelivery()Landroid/os/Handler;

    move-result-object v8

    new-instance v0, Lcom/lzy/okhttputils/request/BaseRequest$1$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/lzy/okhttputils/request/BaseRequest$1$1;-><init>(Lcom/lzy/okhttputils/request/BaseRequest$1;JJJ)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    return-void
.end method
