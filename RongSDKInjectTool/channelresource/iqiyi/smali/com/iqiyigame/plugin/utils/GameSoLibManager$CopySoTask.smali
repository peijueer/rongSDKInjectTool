.class Lcom/iqiyigame/plugin/utils/GameSoLibManager$CopySoTask;
.super Ljava/lang/Object;
.source "GameSoLibManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iqiyigame/plugin/utils/GameSoLibManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CopySoTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastModityTime:J

.field private mSoFileName:Ljava/lang/String;

.field private mZipEntry:Ljava/util/zip/ZipEntry;

.field private mZipFile:Ljava/util/zip/ZipFile;

.field final synthetic this$0:Lcom/iqiyigame/plugin/utils/GameSoLibManager;


# direct methods
.method constructor <init>(Lcom/iqiyigame/plugin/utils/GameSoLibManager;Landroid/content/Context;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;J)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p4, "zipEntry"    # Ljava/util/zip/ZipEntry;
    .param p5, "lastModify"    # J

    .prologue
    .line 156
    iput-object p1, p0, Lcom/iqiyigame/plugin/utils/GameSoLibManager$CopySoTask;->this$0:Lcom/iqiyigame/plugin/utils/GameSoLibManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p3, p0, Lcom/iqiyigame/plugin/utils/GameSoLibManager$CopySoTask;->mZipFile:Ljava/util/zip/ZipFile;

    .line 158
    iput-object p2, p0, Lcom/iqiyigame/plugin/utils/GameSoLibManager$CopySoTask;->mContext:Landroid/content/Context;

    .line 159
    iput-object p4, p0, Lcom/iqiyigame/plugin/utils/GameSoLibManager$CopySoTask;->mZipEntry:Ljava/util/zip/ZipEntry;

    .line 160
    invoke-virtual {p4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iqiyigame/plugin/utils/GameSoLibManager$CopySoTask;->parseSoFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iqiyigame/plugin/utils/GameSoLibManager$CopySoTask;->mSoFileName:Ljava/lang/String;

    .line 161
    iput-wide p5, p0, Lcom/iqiyigame/plugin/utils/GameSoLibManager$CopySoTask;->mLastModityTime:J

    .line 162
    return-void
.end method

.method private getAvailableSize(Ljava/io/InputStream;)I
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    if-nez p1, :cond_1

    .line 201
    const/4 v0, 0x0

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 203
    .local v0, "available":I
    if-gtz v0, :cond_0

    const/16 v0, 0x400

    goto :goto_0
.end method

.method private final parseSoFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "zipEntryName"    # Ljava/lang/String;

    .prologue
    .line 165
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeSoFile2LibDir()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 171
    .local v0, "fos":Ljava/io/FileOutputStream;
    iget-object v2, p0, Lcom/iqiyigame/plugin/utils/GameSoLibManager$CopySoTask;->mZipFile:Ljava/util/zip/ZipFile;

    iget-object v3, p0, Lcom/iqiyigame/plugin/utils/GameSoLibManager$CopySoTask;->mZipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 172
    new-instance v0, Ljava/io/FileOutputStream;

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/File;

    # getter for: Lcom/iqiyigame/plugin/utils/GameSoLibManager;->sNativeLibDir:Ljava/lang/String;
    invoke-static {}, Lcom/iqiyigame/plugin/utils/GameSoLibManager;->access$000()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iqiyigame/plugin/utils/GameSoLibManager$CopySoTask;->mSoFileName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 173
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    invoke-virtual {p0, v1, v0}, Lcom/iqiyigame/plugin/utils/GameSoLibManager$CopySoTask;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 174
    iget-object v2, p0, Lcom/iqiyigame/plugin/utils/GameSoLibManager$CopySoTask;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V

    .line 175
    return-void
.end method


# virtual methods
.method public copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 184
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 187
    .local v0, "bis":Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 188
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    invoke-direct {p0, v0}, Lcom/iqiyigame/plugin/utils/GameSoLibManager$CopySoTask;->getAvailableSize(Ljava/io/InputStream;)I

    move-result v4

    .line 189
    .local v4, "size":I
    new-array v2, v4, [B

    .line 190
    .local v2, "buf":[B
    const/4 v3, 0x0

    .line 191
    .local v3, "i":I
    :goto_1
    invoke-virtual {v0, v2, v6, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 192
    invoke-virtual {v1, v2, v6, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_1

    .line 194
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 195
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 196
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 209
    :try_start_0
    invoke-direct {p0}, Lcom/iqiyigame/plugin/utils/GameSoLibManager$CopySoTask;->writeSoFile2LibDir()V

    .line 210
    iget-object v1, p0, Lcom/iqiyigame/plugin/utils/GameSoLibManager$CopySoTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iqiyigame/plugin/utils/GameSoLibManager$CopySoTask;->mZipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/iqiyigame/plugin/utils/GameSoLibManager$CopySoTask;->mLastModityTime:J

    invoke-static {v1, v2, v4, v5}, Lcom/iqiyigame/plugin/utils/GameConfigs;->setSoLastModifiedTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/iqiyigame/plugin/utils/GameSoLibManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/iqiyigame/plugin/utils/GameSoLibManager;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " copy so lib success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iqiyigame/plugin/utils/GameSoLibManager$CopySoTask;->mZipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iqiyigame/plugin/utils/GameLog;->log_i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/iqiyigame/plugin/utils/GameSoLibManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/iqiyigame/plugin/utils/GameSoLibManager;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " copy so lib failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iqiyigame/plugin/utils/GameLog;->log_e(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
