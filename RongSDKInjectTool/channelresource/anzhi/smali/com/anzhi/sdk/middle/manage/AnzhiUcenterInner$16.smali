.class Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$16;
.super Ljava/lang/Thread;
.source "AnzhiUcenterInner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->submitException()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;


# direct methods
.method constructor <init>(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$16;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    .line 553
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 556
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    .line 557
    .local v2, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    instance-of v3, v2, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;

    if-eqz v3, :cond_1

    move-object v3, v2

    .line 558
    check-cast v3, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;

    invoke-virtual {v3}, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->getExceptionLog()Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, "errorInfo":Ljava/lang/String;
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 560
    const/4 v0, 0x0

    .line 561
    .local v0, "code":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1000

    if-gt v3, v4, :cond_2

    .line 562
    new-instance v3, Lcom/anzhi/sdk/middle/protocol/ExceptionProtocol;

    iget-object v4, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$16;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$5(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/anzhi/sdk/middle/protocol/ExceptionProtocol;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/anzhi/sdk/middle/protocol/ExceptionProtocol;->request()I

    move-result v0

    .line 566
    :cond_0
    :goto_0
    const/16 v3, 0xc8

    if-ne v0, v3, :cond_1

    .line 567
    check-cast v2, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;

    .end local v2    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-virtual {v2}, Lcom/anzhi/sdk/middle/manage/AnzhiSDKExceptionHandler;->deleteExceptionFile()V

    .line 571
    .end local v0    # "code":I
    .end local v1    # "errorInfo":Ljava/lang/String;
    :cond_1
    return-void

    .line 563
    .restart local v0    # "code":I
    .restart local v1    # "errorInfo":Ljava/lang/String;
    .restart local v2    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_2
    iget-object v3, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$16;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$5(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/anzhi/sdk/middle/net/Connectivity;->getInstance(Landroid/content/Context;)Lcom/anzhi/sdk/middle/net/Connectivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/anzhi/sdk/middle/net/Connectivity;->isWifiConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 564
    new-instance v3, Lcom/anzhi/sdk/middle/protocol/ExceptionProtocol;

    iget-object v4, p0, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner$16;->this$0:Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;

    # getter for: Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->mApplicationContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;->access$5(Lcom/anzhi/sdk/middle/manage/AnzhiUcenterInner;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/anzhi/sdk/middle/protocol/ExceptionProtocol;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/anzhi/sdk/middle/protocol/ExceptionProtocol;->request()I

    move-result v0

    goto :goto_0
.end method
