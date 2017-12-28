.class Lcom/rongmzw/frame/sdk/api/RongSdkController$4;
.super Lcom/muzhiwan/sdk/core/callback/MzwStaPayCallback;
.source "RongSdkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rongmzw/frame/sdk/api/RongSdkController;->callStaPay()V
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
    .line 94
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-direct {p0}, Lcom/muzhiwan/sdk/core/callback/MzwStaPayCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$4;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    # getter for: Lcom/rongmzw/frame/sdk/api/RongSdkController;->rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$200(Lcom/rongmzw/frame/sdk/api/RongSdkController;)Lcom/rongmzw/frame/sdk/callback/RongCallback;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1, p2}, Lcom/rongmzw/frame/sdk/callback/RongCallback;->onResult(IILjava/lang/String;)V

    .line 98
    return-void
.end method
