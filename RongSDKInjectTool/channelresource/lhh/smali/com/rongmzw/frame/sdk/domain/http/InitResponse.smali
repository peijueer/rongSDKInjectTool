.class public Lcom/rongmzw/frame/sdk/domain/http/InitResponse;
.super Ljava/lang/Object;
.source "InitResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

.field private err_msg:Ljava/lang/String;

.field private err_no:I

.field private time:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->data:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    return-object v0
.end method

.method public getErr_msg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->err_msg:Ljava/lang/String;

    return-object v0
.end method

.method public getErr_no()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->err_no:I

    return v0
.end method

.method public getTime()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->time:I

    return v0
.end method

.method public setData(Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;)V
    .locals 0
    .param p1, "data"    # Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->data:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;

    .line 28
    return-void
.end method

.method public setErr_msg(Ljava/lang/String;)V
    .locals 0
    .param p1, "err_msg"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->err_msg:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setErr_no(I)V
    .locals 0
    .param p1, "err_no"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->err_no:I

    .line 36
    return-void
.end method

.method public setTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/rongmzw/frame/sdk/domain/http/InitResponse;->time:I

    .line 52
    return-void
.end method
