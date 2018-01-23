.class public Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;
.super Ljava/lang/Object;
.source "LoginResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rongmzw/frame/sdk/domain/http/LoginResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private bindstate:I

.field private mzwid:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBindstate()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;->bindstate:I

    return v0
.end method

.method public getMzwid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;->mzwid:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setBindstate(I)V
    .locals 0
    .param p1, "bindstate"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;->bindstate:I

    .line 85
    return-void
.end method

.method public setMzwid(Ljava/lang/String;)V
    .locals 0
    .param p1, "mzwid"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;->mzwid:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/LoginResponse$DataBean;->token:Ljava/lang/String;

    .line 69
    return-void
.end method
