.class Lcom/rongmzw/frame/sdk/api/RongSdkController$2$1;
.super Ljava/lang/Object;
.source "RongSdkController.java"

# interfaces
.implements Lcom/muzhiwan/sdk/core/callback/MzwInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rongmzw/frame/sdk/api/RongSdkController$2;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$2;


# direct methods
.method constructor <init>(Lcom/rongmzw/frame/sdk/api/RongSdkController$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/rongmzw/frame/sdk/api/RongSdkController$2;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$2$1;->this$1:Lcom/rongmzw/frame/sdk/api/RongSdkController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-static {p1, p2}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->initCallBack(ILjava/lang/String;)V

    .line 162
    return-void
.end method
