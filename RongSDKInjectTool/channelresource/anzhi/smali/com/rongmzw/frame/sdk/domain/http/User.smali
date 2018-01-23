.class public Lcom/rongmzw/frame/sdk/domain/http/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private accesstoken:Ljava/lang/String;

.field private bindidcard:Ljava/lang/String;

.field private fromid:I

.field private gametoken:Ljava/lang/String;

.field private iconpath:Ljava/lang/String;

.field private logintime:J

.field private mail:Ljava/lang/String;

.field private openid:Ljava/lang/String;

.field private phonenumber:Ljava/lang/String;

.field private pwd:Ljava/lang/String;

.field private r_phone:Ljava/lang/String;

.field private r_username:Ljava/lang/String;

.field private securitylevel:I

.field private userid:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private visitor:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccesstoken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->accesstoken:Ljava/lang/String;

    return-object v0
.end method

.method public getBindidcard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->bindidcard:Ljava/lang/String;

    return-object v0
.end method

.method public getFromid()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->fromid:I

    return v0
.end method

.method public getGametoken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->gametoken:Ljava/lang/String;

    return-object v0
.end method

.method public getIconpath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->iconpath:Ljava/lang/String;

    return-object v0
.end method

.method public getLogintime()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->logintime:J

    return-wide v0
.end method

.method public getMail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->mail:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->openid:Ljava/lang/String;

    return-object v0
.end method

.method public getPhonenumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->phonenumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method public getR_phone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->r_phone:Ljava/lang/String;

    return-object v0
.end method

.method public getR_username()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->r_username:Ljava/lang/String;

    return-object v0
.end method

.method public getSecuritylevel()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->securitylevel:I

    return v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->userid:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isVisitor()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->visitor:Z

    return v0
.end method

.method public setAccesstoken(Ljava/lang/String;)V
    .locals 0
    .param p1, "accesstoken"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->accesstoken:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setBindidcard(Ljava/lang/String;)V
    .locals 0
    .param p1, "bindidcard"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->bindidcard:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setFromid(I)V
    .locals 0
    .param p1, "fromid"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->fromid:I

    .line 104
    return-void
.end method

.method public setGametoken(Ljava/lang/String;)V
    .locals 0
    .param p1, "gametoken"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->gametoken:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setIconpath(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconpath"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->iconpath:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setLogintime(J)V
    .locals 1
    .param p1, "logintime"    # J

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->logintime:J

    .line 64
    return-void
.end method

.method public setMail(Ljava/lang/String;)V
    .locals 0
    .param p1, "mail"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->mail:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setOpenid(Ljava/lang/String;)V
    .locals 0
    .param p1, "openid"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->openid:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setPhonenumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phonenumber"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->phonenumber:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setPwd(Ljava/lang/String;)V
    .locals 0
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->pwd:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setR_phone(Ljava/lang/String;)V
    .locals 0
    .param p1, "r_phone"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->r_phone:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setR_username(Ljava/lang/String;)V
    .locals 0
    .param p1, "r_username"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->r_username:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setSecuritylevel(I)V
    .locals 0
    .param p1, "securitylevel"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->securitylevel:I

    .line 112
    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0
    .param p1, "userid"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->userid:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->username:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setVisitor(Z)V
    .locals 0
    .param p1, "visitor"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->visitor:Z

    .line 32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User [userid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->userid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pwd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->pwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logintime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->logintime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconpath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->iconpath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phonenumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->phonenumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->mail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", openid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->openid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->fromid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", securitylevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->securitylevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gametoken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->gametoken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accesstoken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/http/User;->accesstoken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
