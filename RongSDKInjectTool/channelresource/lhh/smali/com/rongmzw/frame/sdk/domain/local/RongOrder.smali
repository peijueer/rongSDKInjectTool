.class public Lcom/rongmzw/frame/sdk/domain/local/RongOrder;
.super Ljava/lang/Object;
.source "RongOrder.java"


# instance fields
.field private extern:Ljava/lang/String;

.field private productDesc:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private productOrderid:Ljava/lang/String;

.field private productPrice:I

.field private roleId:Ljava/lang/String;

.field private serverId:Ljava/lang/String;

.field private userData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->extern:Ljava/lang/String;

    return-object v0
.end method

.method public getProductDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->productDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductOrderid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->productOrderid:Ljava/lang/String;

    return-object v0
.end method

.method public getProductPrice()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->productPrice:I

    return v0
.end method

.method public getRoleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->roleId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->userData:Ljava/lang/String;

    return-object v0
.end method

.method public setExtern(Ljava/lang/String;)V
    .locals 0
    .param p1, "extern"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->extern:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setProductDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "productDesc"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->productDesc:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->productId:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->productName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setProductOrderid(Ljava/lang/String;)V
    .locals 0
    .param p1, "productOrderid"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->productOrderid:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setProductPrice(I)V
    .locals 0
    .param p1, "productPrice"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->productPrice:I

    .line 44
    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .locals 0
    .param p1, "roleId"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->roleId:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->serverId:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .locals 0
    .param p1, "userData"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->userData:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RongOrder [productid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->productName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productdesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->productDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productprice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->productPrice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productorderid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->productOrderid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->roleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serverId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/local/RongOrder;->userData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
