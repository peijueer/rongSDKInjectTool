.class public Lcom/zqhy/sdk/model/PayParams;
.super Ljava/lang/Object;
.source "PayParams.java"


# instance fields
.field public amount:F

.field public extendsinfo:Ljava/lang/String;

.field public gameid:Ljava/lang/String;

.field public pid:Ljava/lang/String;

.field public product_name:Ljava/lang/String;

.field public role_id:Ljava/lang/String;

.field public role_name:Ljava/lang/String;

.field public serverid:Ljava/lang/String;

.field public servername:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/zqhy/sdk/model/PayParams;->serverid:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/zqhy/sdk/model/PayParams;->servername:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/zqhy/sdk/model/PayParams;->role_id:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/zqhy/sdk/model/PayParams;->role_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAmount()F
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/zqhy/sdk/model/PayParams;->amount:F

    return v0
.end method

.method public getExtendsinfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/zqhy/sdk/model/PayParams;->extendsinfo:Ljava/lang/String;

    return-object v0
.end method

.method public getGameid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zqhy/sdk/model/PayParams;->gameid:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zqhy/sdk/model/PayParams;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/zqhy/sdk/model/PayParams;->product_name:Ljava/lang/String;

    return-object v0
.end method

.method public getRole_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/zqhy/sdk/model/PayParams;->role_id:Ljava/lang/String;

    return-object v0
.end method

.method public getRole_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zqhy/sdk/model/PayParams;->role_name:Ljava/lang/String;

    return-object v0
.end method

.method public getServerid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/zqhy/sdk/model/PayParams;->serverid:Ljava/lang/String;

    return-object v0
.end method

.method public getServername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zqhy/sdk/model/PayParams;->servername:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zqhy/sdk/model/PayParams;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/zqhy/sdk/model/PayParams;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setAmount(F)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/zqhy/sdk/model/PayParams;->amount:F

    .line 92
    return-void
.end method

.method public setExtendsinfo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/zqhy/sdk/model/PayParams;->extendsinfo:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setGameid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/zqhy/sdk/model/PayParams;->gameid:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/zqhy/sdk/model/PayParams;->pid:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setProduct_name(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/zqhy/sdk/model/PayParams;->product_name:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setRole_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/zqhy/sdk/model/PayParams;->role_id:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setRole_name(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/zqhy/sdk/model/PayParams;->role_name:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setServerid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/zqhy/sdk/model/PayParams;->serverid:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setServername(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/zqhy/sdk/model/PayParams;->servername:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/zqhy/sdk/model/PayParams;->token:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/zqhy/sdk/model/PayParams;->username:Ljava/lang/String;

    .line 76
    return-void
.end method
