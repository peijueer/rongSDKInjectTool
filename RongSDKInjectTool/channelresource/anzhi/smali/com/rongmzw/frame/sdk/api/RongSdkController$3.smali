.class Lcom/rongmzw/frame/sdk/api/RongSdkController$3;
.super Lcom/muzhiwan/sdk/core/callback/MzwLoignCallback;
.source "RongSdkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/rongmzw/frame/sdk/api/RongSdkController;->callLogin()V
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
    .line 183
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$3;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-direct {p0}, Lcom/muzhiwan/sdk/core/callback/MzwLoignCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-static {p1, p2}, Lcom/rongmzw/frame/sdk/callback/RongCallBackUtils;->loginCallBack(ILjava/lang/String;)V

    .line 187
    return-void
.end method
