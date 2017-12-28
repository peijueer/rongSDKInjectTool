.class public Lcom/rongmzw/frame/sdk/domain/RongGameInfo;
.super Ljava/lang/Object;
.source "RongGameInfo.java"


# instance fields
.field private gameArea:Ljava/lang/String;

.field private gameAreaId:Ljava/lang/String;

.field private gameLevel:Ljava/lang/String;

.field private roleId:Ljava/lang/String;

.field private userRole:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGameArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/RongGameInfo;->gameArea:Ljava/lang/String;

    return-object v0
.end method

.method public getGameAreaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/RongGameInfo;->gameAreaId:Ljava/lang/String;

    return-object v0
.end method

.method public getGameLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/RongGameInfo;->gameLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/RongGameInfo;->roleId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/domain/RongGameInfo;->userRole:Ljava/lang/String;

    return-object v0
.end method

.method public setGameArea(Ljava/lang/String;)V
    .locals 0
    .param p1, "gameArea"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/RongGameInfo;->gameArea:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setGameAreaID(Ljava/lang/String;)V
    .locals 0
    .param p1, "gameAreaId"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/RongGameInfo;->gameAreaId:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setGameLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "gameLevel"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/RongGameInfo;->gameLevel:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .locals 0
    .param p1, "roleId"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/RongGameInfo;->roleId:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setUserRole(Ljava/lang/String;)V
    .locals 0
    .param p1, "userRole"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/RongGameInfo;->userRole:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RongGameInfo [gameAreaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/RongGameInfo;->gameAreaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gameArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/RongGameInfo;->gameArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gameLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/RongGameInfo;->gameLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/RongGameInfo;->roleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/rongmzw/frame/sdk/domain/RongGameInfo;->userRole:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
