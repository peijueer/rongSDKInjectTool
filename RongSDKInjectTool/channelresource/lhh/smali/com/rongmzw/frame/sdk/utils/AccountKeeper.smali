.class public Lcom/rongmzw/frame/sdk/utils/AccountKeeper;
.super Ljava/lang/Object;
.source "AccountKeeper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static instance:Lcom/rongmzw/frame/sdk/utils/AccountKeeper;

.field private static user:Lcom/rongmzw/frame/sdk/domain/http/User;


# instance fields
.field private context:Landroid/content/Context;

.field private userDataStore:Lcom/rongmzw/frame/sdk/domain/http/UserDataStore;

.field private userStore:Lcom/rongmzw/frame/sdk/domain/http/UserStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/utils/AccountKeeper;->context:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public addUser(Lcom/rongmzw/frame/sdk/domain/http/User;)V
    .locals 2
    .param p1, "user"    # Lcom/rongmzw/frame/sdk/domain/http/User;

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/utils/SecurityUtils;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/utils/AccountKeeper;->userStore:Lcom/rongmzw/frame/sdk/domain/http/UserStore;

    if-nez v1, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/rongmzw/frame/sdk/utils/AccountKeeper;->init()V

    .line 70
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 67
    .restart local v0    # "key":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/utils/AccountKeeper;->userStore:Lcom/rongmzw/frame/sdk/domain/http/UserStore;

    invoke-virtual {v1, p1, v0}, Lcom/rongmzw/frame/sdk/domain/http/UserStore;->addUser(Lcom/rongmzw/frame/sdk/domain/http/User;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addUserData(Lcom/rongmzw/frame/sdk/domain/http/UserData;)V
    .locals 2
    .param p1, "userdata"    # Lcom/rongmzw/frame/sdk/domain/http/UserData;

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Lcom/rongmzw/frame/sdk/domain/http/UserData;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/utils/SecurityUtils;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/utils/AccountKeeper;->userDataStore:Lcom/rongmzw/frame/sdk/domain/http/UserDataStore;

    if-nez v1, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/rongmzw/frame/sdk/utils/AccountKeeper;->init()V

    .line 57
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 54
    .restart local v0    # "key":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/utils/AccountKeeper;->userDataStore:Lcom/rongmzw/frame/sdk/domain/http/UserDataStore;

    invoke-virtual {v1, p1, v0}, Lcom/rongmzw/frame/sdk/domain/http/UserDataStore;->addUserData(Lcom/rongmzw/frame/sdk/domain/http/UserData;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRootDirPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Lcom/rongmzw/frame/sdk/utils/TaskManagerUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/muzhiwan/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/muzhiwan/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 29
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/rongmzw/frame/sdk/utils/AccountKeeper;->context:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/rongmzw/frame/sdk/utils/AccountKeeper;->getRootDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "userdata"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, "userDataFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/rongmzw/frame/sdk/utils/AccountKeeper;->context:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/rongmzw/frame/sdk/utils/AccountKeeper;->getRootDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .local v1, "userFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 35
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 38
    :cond_1
    if-eqz v0, :cond_2

    .line 39
    new-instance v2, Lcom/rongmzw/frame/sdk/domain/http/UserDataStore;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/rongmzw/frame/sdk/domain/http/UserDataStore;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/rongmzw/frame/sdk/utils/AccountKeeper;->userDataStore:Lcom/rongmzw/frame/sdk/domain/http/UserDataStore;

    .line 41
    :cond_2
    if-eqz v1, :cond_3

    .line 42
    new-instance v2, Lcom/rongmzw/frame/sdk/domain/http/UserStore;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/rongmzw/frame/sdk/domain/http/UserStore;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/rongmzw/frame/sdk/utils/AccountKeeper;->userStore:Lcom/rongmzw/frame/sdk/domain/http/UserStore;

    .line 44
    :cond_3
    return-void
.end method

.method public loadDefaultUser()Lcom/rongmzw/frame/sdk/domain/http/User;
    .locals 2

    .prologue
    .line 84
    const-class v1, Lcom/rongmzw/frame/sdk/domain/http/User;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/rongmzw/frame/sdk/utils/SecurityUtils;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/utils/AccountKeeper;->userStore:Lcom/rongmzw/frame/sdk/domain/http/UserStore;

    if-nez v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/rongmzw/frame/sdk/utils/AccountKeeper;->init()V

    .line 90
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/rongmzw/frame/sdk/utils/AccountKeeper;->userStore:Lcom/rongmzw/frame/sdk/domain/http/UserStore;

    invoke-virtual {v1, v0}, Lcom/rongmzw/frame/sdk/domain/http/UserStore;->loadUser(Ljava/lang/String;)Lcom/rongmzw/frame/sdk/domain/http/User;

    move-result-object v1

    goto :goto_0
.end method

.method public loadUser(Ljava/lang/String;)Lcom/rongmzw/frame/sdk/domain/http/User;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/utils/AccountKeeper;->userStore:Lcom/rongmzw/frame/sdk/domain/http/UserStore;

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/rongmzw/frame/sdk/utils/AccountKeeper;->init()V

    .line 79
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/rongmzw/frame/sdk/utils/AccountKeeper;->userStore:Lcom/rongmzw/frame/sdk/domain/http/UserStore;

    invoke-virtual {v0, p1}, Lcom/rongmzw/frame/sdk/domain/http/UserStore;->loadUser(Ljava/lang/String;)Lcom/rongmzw/frame/sdk/domain/http/User;

    move-result-object v0

    goto :goto_0
.end method
