.class public Lcom/rongmzw/frame/sdk/domain/http/UserDataStore;
.super Ljava/lang/Object;
.source "UserDataStore.java"


# instance fields
.field private gson:Lcom/google/gson/Gson;

.field private storePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "storePath"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/UserDataStore;->gson:Lcom/google/gson/Gson;

    .line 19
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/UserDataStore;->storePath:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/UserDataStore;->gson:Lcom/google/gson/Gson;

    .line 21
    return-void
.end method


# virtual methods
.method public addUserData(Lcom/rongmzw/frame/sdk/domain/http/UserData;Ljava/lang/String;)V
    .locals 8
    .param p1, "user"    # Lcom/rongmzw/frame/sdk/domain/http/UserData;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/rongmzw/frame/sdk/domain/http/UserDataStore;->storePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 26
    .local v4, "filePath":Ljava/lang/String;
    iget-object v6, p0, Lcom/rongmzw/frame/sdk/domain/http/UserDataStore;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v6, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 28
    .local v5, "userJson":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 30
    .local v3, "fileParent":Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 31
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 34
    :cond_0
    :try_start_0
    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 35
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/utils/AesStoreSecurity;->encrypt([B)[B

    move-result-object v0

    .line 36
    invoke-static {v4, v0}, Lcom/rongmzw/frame/sdk/utils/FileUtils;->write(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    .end local v0    # "bytes":[B
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 39
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteUserData(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/rongmzw/frame/sdk/domain/http/UserDataStore;->storePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/utils/FileUtils;->delete(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public getStoreFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/rongmzw/frame/sdk/domain/http/UserDataStore;->storePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadUserData(Ljava/lang/String;)Lcom/rongmzw/frame/sdk/domain/http/UserData;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v4, 0x0

    .line 47
    .local v4, "userData":Lcom/rongmzw/frame/sdk/domain/http/UserData;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/rongmzw/frame/sdk/domain/http/UserDataStore;->storePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "filePath":Ljava/lang/String;
    invoke-static {v3}, Lcom/rongmzw/frame/sdk/utils/FileUtils;->read(Ljava/lang/String;)[B

    move-result-object v1

    .line 49
    .local v1, "buffer":[B
    if-eqz v1, :cond_0

    array-length v5, v1

    if-lez v5, :cond_0

    .line 51
    :try_start_0
    invoke-static {v1}, Lcom/rongmzw/frame/sdk/utils/AesStoreSecurity;->decrypt([B)[B

    move-result-object v1

    .line 52
    iget-object v5, p0, Lcom/rongmzw/frame/sdk/domain/http/UserDataStore;->gson:Lcom/google/gson/Gson;

    new-instance v6, Ljava/lang/String;

    const-string v7, "utf-8"

    invoke-direct {v6, v1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-class v7, Lcom/rongmzw/frame/sdk/domain/http/UserData;

    invoke-virtual {v5, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/rongmzw/frame/sdk/domain/http/UserData;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :cond_0
    :goto_0
    return-object v4

    .line 53
    :catch_0
    move-exception v2

    .line 54
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public loadUserDatas()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/rongmzw/frame/sdk/domain/http/UserData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v4, "userList":Ljava/util/List;, "Ljava/util/List<Lcom/rongmzw/frame/sdk/domain/http/UserData;>;"
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/rongmzw/frame/sdk/domain/http/UserDataStore;->storePath:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 71
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 73
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 74
    .local v2, "files":[Ljava/io/File;
    const/4 v3, 0x0

    .line 75
    .local v3, "userData":Lcom/rongmzw/frame/sdk/domain/http/UserData;
    if-eqz v2, :cond_2

    .line 76
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v1, v2, v5

    .line 77
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/rongmzw/frame/sdk/domain/http/UserDataStore;->loadUserData(Ljava/lang/String;)Lcom/rongmzw/frame/sdk/domain/http/UserData;

    move-result-object v3

    .line 78
    if-eqz v3, :cond_1

    .line 79
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    return-object v4
.end method
