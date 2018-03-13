.class public Lcom/rongmzw/frame/sdk/domain/http/UserData;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private email:Ljava/lang/String;

.field private fromId:I

.field private iconpath:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private openid:Ljava/lang/String;

.field private phone:Ljava/lang/String;

.field private pwd:Ljava/lang/String;

.field private time:J

.field private token:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFromId()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->fromId:I

    return v0
.end method

.method public getIconpath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->iconpath:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->openid:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->time:J

    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public initWithUser(Lcom/rongmzw/frame/sdk/domain/http/User;)V
    .locals 2
    .param p1, "user"    # Lcom/rongmzw/frame/sdk/domain/http/User;

    .prologue
    .line 111
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/http/User;->getUserid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->uid:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/http/User;->getLogintime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->time:J

    .line 113
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/http/User;->getIconpath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->iconpath:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/http/User;->getOpenid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->openid:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/http/User;->getUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->userName:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/http/User;->getFromid()I

    move-result v0

    iput v0, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->fromId:I

    .line 117
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/http/User;->getPwd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->pwd:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/http/User;->getPhonenumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->phone:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/http/User;->getMail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->email:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->email:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setFromId(I)V
    .locals 0
    .param p1, "fromId"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->fromId:I

    .line 92
    return-void
.end method

.method public setIconpath(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconpath"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->iconpath:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->nickName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setOpenid(Ljava/lang/String;)V
    .locals 0
    .param p1, "openid"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->openid:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->phone:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setPwd(Ljava/lang/String;)V
    .locals 0
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->pwd:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->time:J

    .line 68
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->token:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->uid:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->userName:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserData [userName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pwd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->pwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", openid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->openid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->fromId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconpath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->iconpath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/http/UserData;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
