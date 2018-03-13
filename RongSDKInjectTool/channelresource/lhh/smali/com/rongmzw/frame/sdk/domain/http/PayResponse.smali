.class public Lcom/rongmzw/frame/sdk/domain/http/PayResponse;
.super Ljava/lang/Object;
.source "PayResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;

.field private err_msg:Ljava/lang/String;

.field private err_no:I

.field private time:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/PayResponse;->data:Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;

    return-object v0
.end method

.method public getErr_msg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/PayResponse;->err_msg:Ljava/lang/String;

    return-object v0
.end method

.method public getErr_no()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/rongmzw/frame/sdk/domain/http/PayResponse;->err_no:I

    return v0
.end method

.method public getTime()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/rongmzw/frame/sdk/domain/http/PayResponse;->time:I

    return v0
.end method

.method public setData(Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;)V
    .locals 0
    .param p1, "data"    # Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/PayResponse;->data:Lcom/rongmzw/frame/sdk/domain/http/PayResponse$DataBean;

    .line 27
    return-void
.end method

.method public setErr_msg(Ljava/lang/String;)V
    .locals 0
    .param p1, "err_msg"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/PayResponse;->err_msg:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setErr_no(I)V
    .locals 0
    .param p1, "err_no"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/rongmzw/frame/sdk/domain/http/PayResponse;->err_no:I

    .line 35
    return-void
.end method

.method public setTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/rongmzw/frame/sdk/domain/http/PayResponse;->time:I

    .line 51
    return-void
.end method
