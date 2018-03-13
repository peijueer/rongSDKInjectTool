.class public Lcom/zqhy/sdk/model/GameDataParams;
.super Ljava/lang/Object;
.source "GameDataParams.java"


# instance fields
.field private game_level:I

.field private op:I

.field private role_id:I

.field private role_name:Ljava/lang/String;

.field private serverid:I

.field private servername:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->username:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->token:Ljava/lang/String;

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->serverid:I

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->servername:Ljava/lang/String;

    .line 22
    iput v1, p0, Lcom/zqhy/sdk/model/GameDataParams;->role_id:I

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->role_name:Ljava/lang/String;

    .line 26
    iput v1, p0, Lcom/zqhy/sdk/model/GameDataParams;->game_level:I

    .line 28
    iput v1, p0, Lcom/zqhy/sdk/model/GameDataParams;->op:I

    return-void
.end method


# virtual methods
.method public checkGameData()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 96
    iget v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->serverid:I

    if-gtz v2, :cond_0

    .line 97
    const-string v1, "reFreshGameData : serverid\u4e0d\u80fd\u4e3a0\uff01"

    invoke-static {v1}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 141
    :goto_0
    return v0

    .line 99
    :cond_0
    iget v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->serverid:I

    if-ne v2, v1, :cond_1

    .line 100
    iget-object v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->servername:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    const-string v1, "reFreshGameData : serverid\u4e3a1\u65f6\uff0cservername\u5fc5\u586b\uff01"

    invoke-static {v1}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_1
    iget v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->role_id:I

    if-gtz v2, :cond_2

    .line 107
    iput v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->role_id:I

    .line 108
    iget-object v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->role_name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    const-string v1, "reFreshGameData : role_id\u4e3a0\u65f6\uff0crole_name\u5fc5\u586b\uff01"

    invoke-static {v1}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->username:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    const-string v1, "reFreshGameData : username\u5fc5\u586b\uff01"

    invoke-static {v1}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_3
    iget-object v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->token:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 120
    const-string v1, "reFreshGameData : token\u5fc5\u586b\uff01"

    invoke-static {v1}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_4
    iget-object v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->servername:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 125
    const-string v2, ""

    iput-object v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->servername:Ljava/lang/String;

    .line 128
    :cond_5
    iget-object v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->role_name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 129
    const-string v2, ""

    iput-object v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->role_name:Ljava/lang/String;

    .line 132
    :cond_6
    iget v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->game_level:I

    if-gez v2, :cond_7

    .line 133
    const-string v1, "reFreshGameData : game_level\u4e0d\u80fd\u4e3a\u8d1f\u6570\uff01"

    invoke-static {v1}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_7
    iget v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->op:I

    if-lt v2, v1, :cond_8

    iget v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->op:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_9

    .line 138
    :cond_8
    const-string v1, "reFreshGameData : op\u53ea\u80fd\u4e3a1,2,3\uff01"

    invoke-static {v1}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    move v0, v1

    .line 141
    goto :goto_0
.end method

.method public getGame_level()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->game_level:I

    return v0
.end method

.method public getOp()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->op:I

    return v0
.end method

.method public getRole_id()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->role_id:I

    return v0
.end method

.method public getRole_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->role_name:Ljava/lang/String;

    return-object v0
.end method

.method public getServerid()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->serverid:I

    return v0
.end method

.method public getServername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->servername:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setGame_level(I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/zqhy/sdk/model/GameDataParams;->game_level:I

    .line 85
    return-void
.end method

.method public setOp(I)V
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lcom/zqhy/sdk/model/GameDataParams;->op:I

    .line 93
    return-void
.end method

.method public setRole_id(I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/zqhy/sdk/model/GameDataParams;->role_id:I

    .line 69
    return-void
.end method

.method public setRole_name(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/zqhy/sdk/model/GameDataParams;->role_name:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setServerid(I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/zqhy/sdk/model/GameDataParams;->serverid:I

    .line 53
    return-void
.end method

.method public setServername(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/zqhy/sdk/model/GameDataParams;->servername:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/zqhy/sdk/model/GameDataParams;->token:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/zqhy/sdk/model/GameDataParams;->username:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameDataParams{username=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/model/GameDataParams;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/model/GameDataParams;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serverid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zqhy/sdk/model/GameDataParams;->serverid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", servername=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/model/GameDataParams;->servername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", role_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zqhy/sdk/model/GameDataParams;->role_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", role_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/model/GameDataParams;->role_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", game_level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zqhy/sdk/model/GameDataParams;->game_level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", op="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zqhy/sdk/model/GameDataParams;->op:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
