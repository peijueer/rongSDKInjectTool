.class public Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;
.super Ljava/lang/Object;
.source "InitResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rongmzw/frame/sdk/domain/http/InitResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;
    }
.end annotation


# instance fields
.field private apilevel:I

.field private bindstate:I

.field private bindurl:Ljava/lang/String;

.field private params:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;

.field private switchX:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "switch"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApilevel()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->apilevel:I

    return v0
.end method

.method public getBindstate()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->bindstate:I

    return v0
.end method

.method public getBindurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->bindurl:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->params:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;

    return-object v0
.end method

.method public getSwitchX()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->switchX:I

    return v0
.end method

.method public setApilevel(I)V
    .locals 0
    .param p1, "apilevel"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->apilevel:I

    .line 84
    return-void
.end method

.method public setBindstate(I)V
    .locals 0
    .param p1, "bindstate"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->bindstate:I

    .line 92
    return-void
.end method

.method public setBindurl(Ljava/lang/String;)V
    .locals 0
    .param p1, "bindurl"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->bindurl:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setParams(Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;)V
    .locals 0
    .param p1, "params"    # Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->params:Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean$ParamsBean;

    .line 108
    return-void
.end method

.method public setSwitchX(I)V
    .locals 0
    .param p1, "switchX"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/rongmzw/frame/sdk/domain/http/InitResponse$DataBean;->switchX:I

    .line 76
    return-void
.end method
