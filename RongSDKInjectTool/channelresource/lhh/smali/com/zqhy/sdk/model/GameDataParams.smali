.class public Lcom/zqhy/sdk/model/GameDataParams;
.super Ljava/lang/Object;
.source "GameDataParams.java"


# instance fields
.field private game_level:I

.field private op:I

.field private role_id:J

.field private role_name:Ljava/lang/String;

.field private serverid:I

.field private servername:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->username:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->token:Ljava/lang/String;

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->serverid:I

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->servername:Ljava/lang/String;

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->role_id:J

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->role_name:Ljava/lang/String;

    .line 25
    iput v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->game_level:I

    .line 27
    iput v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->op:I

    return-void
.end method


# virtual methods
.method public checkGameData()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 95
    iget v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->serverid:I

    if-gtz v2, :cond_0

    .line 96
    const-string v1, "reFreshGameData : serverid\u4e0d\u80fd\u4e3a0\uff01"

    invoke-static {v1}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    .line 140
    :goto_0
    return v0

    .line 98
    :cond_0
    iget v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->serverid:I

    if-ne v2, v1, :cond_1

    .line 99
    iget-object v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->servername:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    const-string v1, "reFreshGameData : serverid\u4e3a1\u65f6\uff0cservername\u5fc5\u586b\uff01"

    invoke-static {v1}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    iget-wide v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->role_id:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    .line 106
    iput-wide v4, p0, Lcom/zqhy/sdk/model/GameDataParams;->role_id:J

    .line 107
    iget-object v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->role_name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    const-string v1, "reFreshGameData : role_id\u4e3a0\u65f6\uff0crole_name\u5fc5\u586b\uff01"

    invoke-static {v1}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_2
    iget-object v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->username:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    const-string v1, "reFreshGameData : username\u5fc5\u586b\uff01"

    invoke-static {v1}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_3
    iget-object v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->token:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 119
    const-string v1, "reFreshGameData : token\u5fc5\u586b\uff01"

    invoke-static {v1}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_4
    iget-object v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->servername:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 124
    const-string v2, ""

    iput-object v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->servername:Ljava/lang/String;

    .line 127
    :cond_5
    iget-object v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->role_name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 128
    const-string v2, ""

    iput-object v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->role_name:Ljava/lang/String;

    .line 131
    :cond_6
    iget v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->game_level:I

    if-gez v2, :cond_7

    .line 132
    const-string v1, "reFreshGameData : game_level\u4e0d\u80fd\u4e3a\u8d1f\u6570\uff01"

    invoke-static {v1}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_7
    iget v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->op:I

    if-lt v2, v1, :cond_8

    iget v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->op:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_9

    .line 137
    :cond_8
    const-string v1, "reFreshGameData : op\u53ea\u80fd\u4e3a1,2,3\uff01"

    invoke-static {v1}, Lcom/zqhy/sdk/utils/logger/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    move v0, v1

    .line 140
    goto :goto_0
.end method

.method public getGame_level()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->game_level:I

    return v0
.end method

.method public getOp()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->op:I

    return v0
.end method

.method public getRole_id()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->role_id:J

    return-wide v0
.end method

.method public getRole_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->role_name:Ljava/lang/String;

    return-object v0
.end method

.method public getServerid()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->serverid:I

    return v0
.end method

.method public getServername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->servername:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zqhy/sdk/model/GameDataParams;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setGame_level(I)V
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/zqhy/sdk/model/GameDataParams;->game_level:I

    .line 84
    return-void
.end method

.method public setOp(I)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/zqhy/sdk/model/GameDataParams;->op:I

    .line 92
    return-void
.end method

.method public setRole_id(J)V
    .locals 1

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/zqhy/sdk/model/GameDataParams;->role_id:J

    .line 68
    return-void
.end method

.method public setRole_name(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/zqhy/sdk/model/GameDataParams;->role_name:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setServerid(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/zqhy/sdk/model/GameDataParams;->serverid:I

    .line 52
    return-void
.end method

.method public setServername(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/zqhy/sdk/model/GameDataParams;->servername:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/zqhy/sdk/model/GameDataParams;->token:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/zqhy/sdk/model/GameDataParams;->username:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GameDataParams{username=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/model/GameDataParams;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/model/GameDataParams;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", role_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/zqhy/sdk/model/GameDataParams;->role_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", role_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zqhy/sdk/model/GameDataParams;->role_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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
