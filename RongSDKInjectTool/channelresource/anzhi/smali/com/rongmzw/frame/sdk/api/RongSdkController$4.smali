.class Lcom/rongmzw/frame/sdk/api/RongSdkController$4;
.super Lcom/muzhiwan/sdk/core/callback/MzwPayCallback;
.source "RongSdkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rongmzw/frame/sdk/api/RongSdkController;->callPay(Lcom/rongmzw/frame/sdk/domain/local/RongOrder;)V
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
    .line 203
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-direct {p0}, Lcom/muzhiwan/sdk/core/callback/MzwPayCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/muzhiwan/sdk/service/MzwOrder;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "mzwOrder"    # Lcom/muzhiwan/sdk/service/MzwOrder;

    .prologue
    .line 206
    invoke-virtual {p2}, Lcom/muzhiwan/sdk/service/MzwOrder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->payCallBack(ILjava/lang/String;)V

    .line 207
    return-void
.end method
