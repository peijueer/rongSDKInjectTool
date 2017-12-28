.class Lcom/rongmzw/frame/sdk/api/RongSdkController$1$2;
.super Ljava/lang/Object;
.source "RongSdkController.java"

# interfaces
.implements Lcom/iqiyi/sdk/listener/PayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;


# direct methods
.method constructor <init>(Lcom/rongmzw/frame/sdk/api/RongSdkController$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$2;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public leavePlatform()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public paymentResult(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v3, 0x2

    .line 101
    if-ne p1, v3, :cond_0

    .line 102
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$2;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v0, v0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->val$rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;

    const/4 v1, 0x1

    const-string v2, "pay success"

    invoke-interface {v0, v3, v1, v2}, Lcom/rongmzw/frame/sdk/callback/RongCallback;->onResult(IILjava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1$2;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$1;

    iget-object v0, v0, Lcom/rongmzw/frame/sdk/api/RongSdkController$1;->val$rongCallback:Lcom/rongmzw/frame/sdk/callback/RongCallback;

    const/4 v1, 0x0

    const-string v2, "pay failed"

    invoke-interface {v0, v3, v1, v2}, Lcom/rongmzw/frame/sdk/callback/RongCallback;->onResult(IILjava/lang/String;)V

    goto :goto_0
.end method
