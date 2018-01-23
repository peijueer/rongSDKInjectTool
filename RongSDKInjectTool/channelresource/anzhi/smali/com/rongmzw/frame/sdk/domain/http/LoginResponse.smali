.class public Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
.super Ljava/lang/Object;
.source "LoginResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;
    }
.end annotation


# instance fields
.field private data:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

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
.method public getData()Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;->data:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    return-object v0
.end method

.method public getErr_msg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;->err_msg:Ljava/lang/String;

    return-object v0
.end method

.method public getErr_no()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;->err_no:I

    return v0
.end method

.method public getTime()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;->time:I

    return v0
.end method

.method public setData(Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;)V
    .locals 0
    .param p1, "data"    # Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;->data:Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;

    .line 26
    return-void
.end method

.method public setErr_msg(Ljava/lang/String;)V
    .locals 0
    .param p1, "err_msg"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;->err_msg:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setErr_no(I)V
    .locals 0
    .param p1, "err_no"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;->err_no:I

    .line 34
    return-void
.end method

.method public setTime(I)V
    .locals 0
    .param p1, "time"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;->time:I

    .line 50
    return-void
.end method
