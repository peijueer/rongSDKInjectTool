.class Lcom/rongmzw/frame/sdk/api/RongSdkController$3;
.super Lcom/muzhiwan/sdk/core/callback/MzwPayCallback;
.source "RongSdkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rongmzw/frame/sdk/api/RongSdkController;->callPay(Lcom/rongmzw/frame/sdk/domain/RongOrder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;


# direct methods
.method constructor <init>(Lcom/rongmzw/frame/sdk/api/RongSdkController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/rongmzw/frame/sdk/api/RongSdkController;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$3;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-direct {p0}, Lcom/muzhiwan/sdk/core/callback/MzwPayCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/muzhiwan/sdk/service/MzwOrder;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "mzwOrder"    # Lcom/muzhiwan/sdk/service/MzwOrder;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$3;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/callback/RongCallback;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p2}, Lcom/muzhiwan/sdk/service/MzwOrder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/rongmzw/frame/sdk/callback/RongCallback;->onResult(IILjava/lang/String;)V

    .line 87
    return-void
.end method
