.class public Lcom/rongmzw/frame/sdk/domain/RongOrder;
.super Ljava/lang/Object;
.source "RongOrder.java"


# instance fields
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
.method public getProductDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/RongOrder;->productDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/RongOrder;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/RongOrder;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductOrderid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/RongOrder;->productOrderid:Ljava/lang/String;

    return-object v0
.end method

.method public getProductPrice()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/rongmzw/frame/sdk/domain/RongOrder;->productPrice:I

    return v0
.end method

.method public getRoleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/RongOrder;->roleId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/RongOrder;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/RongOrder;->userData:Ljava/lang/String;

    return-object v0
.end method

.method public setProductDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "productDesc"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/RongOrder;->productDesc:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/RongOrder;->productId:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/RongOrder;->productName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setProductOrderid(Ljava/lang/String;)V
    .locals 0
    .param p1, "productOrderid"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/RongOrder;->productOrderid:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setProductPrice(I)V
    .locals 0
    .param p1, "productPrice"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/rongmzw/frame/sdk/domain/RongOrder;->productPrice:I

    .line 43
    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .locals 0
    .param p1, "roleId"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/RongOrder;->roleId:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/RongOrder;->serverId:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .locals 0
    .param p1, "userData"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/RongOrder;->userData:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RongOrder [productid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/RongOrder;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/RongOrder;->productName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productdesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/RongOrder;->productDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productprice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/rongmzw/frame/sdk/domain/RongOrder;->productPrice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productorderid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/RongOrder;->productOrderid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/RongOrder;->roleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serverId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/RongOrder;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/RongOrder;->userData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
