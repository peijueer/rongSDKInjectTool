.class public Lcom/rongmzw/frame/sdk/domain/http/UserStore;
.super Ljava/lang/Object;
.source "UserStore.java"


# instance fields
.field private gson:Lcom/google/gson/Gson;

.field private storePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "storePath"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/UserStore;->gson:Lcom/google/gson/Gson;

    .line 15
    iput-object p1, p0, Lcom/rongmzw/frame/sdk/domain/http/UserStore;->storePath:Ljava/lang/String;

    .line 16
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/rongmzw/frame/sdk/domain/http/UserStore;->gson:Lcom/google/gson/Gson;

    .line 17
    return-void
.end method


# virtual methods
.method public addUser(Lcom/rongmzw/frame/sdk/domain/http/User;Ljava/lang/String;)V
    .locals 8
    .param p1, "user"    # Lcom/rongmzw/frame/sdk/domain/http/User;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/rongmzw/frame/sdk/domain/http/UserStore;->storePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 22
    .local v4, "filePath":Ljava/lang/String;
    iget-object v6, p0, Lcom/rongmzw/frame/sdk/domain/http/UserStore;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v6, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 24
    .local v5, "userJson":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 26
    .local v3, "fileParent":Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 27
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 30
    :cond_0
    :try_start_0
    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 31
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/utils/AesStoreSecurity;->encrypt([B)[B

    move-result-object v0

    .line 32
    invoke-static {v4, v0}, Lcom/rongmzw/frame/sdk/utils/FileUtils;->write(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 38
    .end local v0    # "bytes":[B
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v1

    .line 34
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 35
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteUser(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/rongmzw/frame/sdk/domain/http/UserStore;->storePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {v0}, Lcom/rongmzw/frame/sdk/utils/FileUtils;->delete(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public loadUser(Ljava/lang/String;)Lcom/rongmzw/frame/sdk/domain/http/User;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v4, 0x0

    .line 43
    .local v4, "user":Lcom/rongmzw/frame/sdk/domain/http/User;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/rongmzw/frame/sdk/domain/http/UserStore;->storePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "filePath":Ljava/lang/String;
    invoke-static {v3}, Lcom/rongmzw/frame/sdk/utils/FileUtils;->read(Ljava/lang/String;)[B

    move-result-object v1

    .line 45
    .local v1, "buffer":[B
    if-eqz v1, :cond_0

    .line 47
    :try_start_0
    invoke-static {v1}, Lcom/rongmzw/frame/sdk/utils/AesStoreSecurity;->decrypt([B)[B

    move-result-object v1

    .line 48
    iget-object v5, p0, Lcom/rongmzw/frame/sdk/domain/http/UserStore;->gson:Lcom/google/gson/Gson;

    new-instance v6, Ljava/lang/String;

    const-string v7, "utf-8"

    invoke-direct {v6, v1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-class v7, Lcom/rongmzw/frame/sdk/domain/http/User;

    invoke-virtual {v5, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/rongmzw/frame/sdk/domain/http/User;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    :goto_0
    return-object v4

    .line 49
    :catch_0
    move-exception v2

    .line 50
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
