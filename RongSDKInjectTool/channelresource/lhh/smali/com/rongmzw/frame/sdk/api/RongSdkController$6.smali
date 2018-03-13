.class Lcom/rongmzw/frame/sdk/api/RongSdkController$6;
.super Ljava/lang/Object;
.source "RongSdkController.java"

# interfaces
.implements Lcom/zqhy/sdk/callback/ReLoginCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rongmzw/frame/sdk/api/RongSdkController;
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
    .line 368
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$6;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReLogin()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/api/RongSdkController$6;->this$0:Lcom/rongmzw/frame/sdk/api/RongSdkController;

    invoke-static {v0}, Lcom/rongmzw/frame/sdk/api/RongSdkController;->access$2300(Lcom/rongmzw/frame/sdk/api/RongSdkController;)V

    .line 372
    return-void
.end method
