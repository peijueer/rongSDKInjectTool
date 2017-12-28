.class public Lcom/anzhi/sdk/middle/manage/MyLoading;
.super Ljava/lang/Object;
.source "MyLoading.java"

# interfaces
.implements Lcom/ipaynow/wechatpay/plugin/view/IpaynowLoading;


# instance fields
.field dialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/anzhi/sdk/middle/manage/MyLoading;->dialog:Landroid/app/ProgressDialog;

    .line 13
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/MyLoading;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 28
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/MyLoading;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setLoadingMsg(Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 16
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msg = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/MyLoading;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 18
    return-void
.end method

.method public show()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/anzhi/sdk/middle/manage/MyLoading;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method
