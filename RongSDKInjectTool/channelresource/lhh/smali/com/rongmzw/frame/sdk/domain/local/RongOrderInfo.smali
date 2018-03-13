.class public Lcom/rongmzw/frame/sdk/domain/local/RongOrderInfo;
.super Ljava/lang/Object;
.source "RongOrderInfo.java"


# instance fields
.field private amount:Ljava/lang/String;

.field private extern:Ljava/lang/String;

.field private productdesc:Ljava/lang/String;

.field private productid:Ljava/lang/String;

.field private subject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrderInfo;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public getExtern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrderInfo;->extern:Ljava/lang/String;

    return-object v0
.end method

.method public getProductdesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrderInfo;->productdesc:Ljava/lang/String;

    return-object v0
.end method

.method public getProductid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrderInfo;->productid:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrderInfo;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 0
    .param p1, "amount"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrderInfo;->amount:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setExtern(Ljava/lang/String;)V
    .locals 0
    .param p1, "extern"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrderInfo;->extern:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setProductdesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "productdesc"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrderInfo;->productdesc:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setProductid(Ljava/lang/String;)V
    .locals 0
    .param p1, "productid"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrderInfo;->productid:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrderInfo;->subject:Ljava/lang/String;

    .line 28
    return-void
.end method
