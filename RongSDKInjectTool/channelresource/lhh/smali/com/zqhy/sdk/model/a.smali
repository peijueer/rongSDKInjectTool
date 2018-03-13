.class public Lcom/zqhy/sdk/model/a;
.super Ljava/lang/Object;
.source "ACache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zqhy/sdk/model/a$b;,
        Lcom/zqhy/sdk/model/a$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/zqhy/sdk/model/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/zqhy/sdk/model/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zqhy/sdk/model/a;->a:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;JI)V
    .locals 8

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t make dirs in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    new-instance v1, Lcom/zqhy/sdk/model/a$a;

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/zqhy/sdk/model/a$a;-><init>(Lcom/zqhy/sdk/model/a;Ljava/io/File;JILcom/zqhy/sdk/model/a$1;)V

    iput-object v1, p0, Lcom/zqhy/sdk/model/a;->b:Lcom/zqhy/sdk/model/a$a;

    .line 101
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/zqhy/sdk/model/a;
    .locals 1

    .prologue
    .line 66
    const-string v0, "ACache"

    invoke-static {p0, v0}, Lcom/zqhy/sdk/model/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/zqhy/sdk/model/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/zqhy/sdk/model/a;
    .locals 4

    .prologue
    .line 70
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    const-wide/32 v2, 0x2faf080

    const v1, 0x7fffffff

    invoke-static {v0, v2, v3, v1}, Lcom/zqhy/sdk/model/a;->a(Ljava/io/File;JI)Lcom/zqhy/sdk/model/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;)Lcom/zqhy/sdk/model/a;
    .locals 3

    .prologue
    .line 75
    const-wide/32 v0, 0x2faf080

    const v2, 0x7fffffff

    invoke-static {p0, v0, v1, v2}, Lcom/zqhy/sdk/model/a;->a(Ljava/io/File;JI)Lcom/zqhy/sdk/model/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;JI)Lcom/zqhy/sdk/model/a;
    .locals 5

    .prologue
    .line 84
    sget-object v0, Lcom/zqhy/sdk/model/a;->a:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/zqhy/sdk/model/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zqhy/sdk/model/a;

    .line 85
    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/zqhy/sdk/model/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/zqhy/sdk/model/a;-><init>(Ljava/io/File;JI)V

    .line 87
    sget-object v1, Lcom/zqhy/sdk/model/a;->a:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/zqhy/sdk/model/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_0
    return-object v0
.end method

.method private static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 180
    iget-object v1, p0, Lcom/zqhy/sdk/model/a;->b:Lcom/zqhy/sdk/model/a$a;

    invoke-static {v1, p1}, Lcom/zqhy/sdk/model/a$a;->b(Lcom/zqhy/sdk/model/a$a;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-object v0

    .line 186
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :try_start_1
    const-string v1, ""

    .line 189
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 192
    :cond_2
    invoke-static {v1}, Lcom/zqhy/sdk/model/a$b;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 193
    invoke-static {v1}, Lcom/zqhy/sdk/model/a$b;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 202
    if-eqz v2, :cond_0

    .line 204
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v1

    .line 206
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 202
    :cond_3
    if-eqz v2, :cond_4

    .line 204
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 210
    :cond_4
    :goto_2
    invoke-virtual {p0, p1}, Lcom/zqhy/sdk/model/a;->d(Ljava/lang/String;)Z

    goto :goto_0

    .line 205
    :catch_1
    move-exception v1

    .line 206
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 198
    :catch_2
    move-exception v1

    move-object v2, v0

    .line 199
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 202
    if-eqz v2, :cond_0

    .line 204
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 205
    :catch_3
    move-exception v1

    .line 206
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_5

    .line 204
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 211
    :cond_5
    :goto_5
    throw v0

    .line 205
    :catch_4
    move-exception v1

    .line 206
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 202
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 198
    :catch_5
    move-exception v1

    goto :goto_3
.end method

.method public a(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1

    .prologue
    .line 430
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/zqhy/sdk/model/a;->a(Ljava/lang/String;Ljava/io/Serializable;I)V

    .line 431
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/Serializable;I)V
    .locals 3

    .prologue
    .line 444
    .line 445
    const/4 v2, 0x0

    .line 447
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 448
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 450
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 451
    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    .line 452
    invoke-virtual {p0, p1, v0, p3}, Lcom/zqhy/sdk/model/a;->a(Ljava/lang/String;[BI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 460
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 464
    :goto_1
    return-void

    .line 454
    :cond_0
    :try_start_3
    invoke-virtual {p0, p1, v0}, Lcom/zqhy/sdk/model/a;->a(Ljava/lang/String;[B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 460
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 461
    :catch_1
    move-exception v0

    goto :goto_1

    .line 459
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 460
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 463
    :goto_4
    throw v0

    .line 461
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    .line 459
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 456
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 139
    iget-object v0, p0, Lcom/zqhy/sdk/model/a;->b:Lcom/zqhy/sdk/model/a$a;

    invoke-static {v0, p1}, Lcom/zqhy/sdk/model/a$a;->a(Lcom/zqhy/sdk/model/a$a;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 140
    const/4 v2, 0x0

    .line 142
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v4, 0x400

    invoke-direct {v1, v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    if-eqz v1, :cond_0

    .line 149
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 150
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 155
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zqhy/sdk/model/a;->b:Lcom/zqhy/sdk/model/a$a;

    invoke-static {v0, v3}, Lcom/zqhy/sdk/model/a$a;->a(Lcom/zqhy/sdk/model/a$a;Ljava/io/File;)V

    .line 157
    :goto_1
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 144
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 145
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 147
    if-eqz v1, :cond_1

    .line 149
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 150
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 155
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/zqhy/sdk/model/a;->b:Lcom/zqhy/sdk/model/a$a;

    invoke-static {v0, v3}, Lcom/zqhy/sdk/model/a$a;->a(Lcom/zqhy/sdk/model/a$a;Ljava/io/File;)V

    goto :goto_1

    .line 151
    :catch_2
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 147
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v2, :cond_2

    .line 149
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 150
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 155
    :cond_2
    :goto_5
    iget-object v1, p0, Lcom/zqhy/sdk/model/a;->b:Lcom/zqhy/sdk/model/a$a;

    invoke-static {v1, v3}, Lcom/zqhy/sdk/model/a$a;->a(Lcom/zqhy/sdk/model/a$a;Ljava/io/File;)V

    .line 156
    throw v0

    .line 151
    :catch_3
    move-exception v1

    .line 152
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 147
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 144
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 4

    .prologue
    .line 318
    iget-object v0, p0, Lcom/zqhy/sdk/model/a;->b:Lcom/zqhy/sdk/model/a$a;

    invoke-static {v0, p1}, Lcom/zqhy/sdk/model/a$a;->a(Lcom/zqhy/sdk/model/a$a;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 319
    const/4 v2, 0x0

    .line 321
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 326
    if-eqz v1, :cond_0

    .line 328
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 329
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 334
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zqhy/sdk/model/a;->b:Lcom/zqhy/sdk/model/a$a;

    invoke-static {v0, v3}, Lcom/zqhy/sdk/model/a$a;->a(Lcom/zqhy/sdk/model/a$a;Ljava/io/File;)V

    .line 336
    :goto_1
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 323
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 324
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 326
    if-eqz v1, :cond_1

    .line 328
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 329
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 334
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/zqhy/sdk/model/a;->b:Lcom/zqhy/sdk/model/a$a;

    invoke-static {v0, v3}, Lcom/zqhy/sdk/model/a$a;->a(Lcom/zqhy/sdk/model/a$a;Ljava/io/File;)V

    goto :goto_1

    .line 330
    :catch_2
    move-exception v0

    .line 331
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 326
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_2

    .line 328
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 329
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 334
    :cond_2
    :goto_5
    iget-object v1, p0, Lcom/zqhy/sdk/model/a;->b:Lcom/zqhy/sdk/model/a$a;

    invoke-static {v1, v3}, Lcom/zqhy/sdk/model/a$a;->a(Lcom/zqhy/sdk/model/a$a;Ljava/io/File;)V

    .line 335
    throw v0

    .line 330
    :catch_3
    move-exception v1

    .line 331
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 326
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 323
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public a(Ljava/lang/String;[BI)V
    .locals 1

    .prologue
    .line 377
    invoke-static {p3, p2}, Lcom/zqhy/sdk/model/a$b;->a(I[B)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/zqhy/sdk/model/a;->a(Ljava/lang/String;[B)V

    .line 378
    return-void
.end method

.method public b(Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 387
    const/4 v1, 0x0

    .line 390
    :try_start_0
    iget-object v2, p0, Lcom/zqhy/sdk/model/a;->b:Lcom/zqhy/sdk/model/a$a;

    invoke-static {v2, p1}, Lcom/zqhy/sdk/model/a$a;->b(Lcom/zqhy/sdk/model/a$a;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 391
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 406
    if-eqz v0, :cond_0

    .line 408
    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 404
    :cond_0
    :goto_0
    return-object v0

    .line 409
    :catch_0
    move-exception v1

    .line 410
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 393
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v2, v3, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 394
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v1, v4

    new-array v1, v1, [B

    .line 395
    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 396
    invoke-static {v1}, Lcom/zqhy/sdk/model/a$b;->a([B)Z

    move-result v3

    if-nez v3, :cond_2

    .line 397
    invoke-static {v1}, Lcom/zqhy/sdk/model/a$b;->b([B)[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 406
    if-eqz v2, :cond_0

    .line 408
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 409
    :catch_1
    move-exception v1

    .line 410
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 406
    :cond_2
    if-eqz v2, :cond_3

    .line 408
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 414
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/zqhy/sdk/model/a;->d(Ljava/lang/String;)Z

    goto :goto_0

    .line 409
    :catch_2
    move-exception v1

    .line 410
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 402
    :catch_3
    move-exception v1

    move-object v2, v0

    .line 403
    :goto_2
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 406
    if-eqz v2, :cond_0

    .line 408
    :try_start_7
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 409
    :catch_4
    move-exception v1

    .line 410
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 406
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_4

    .line 408
    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 415
    :cond_4
    :goto_4
    throw v0

    .line 409
    :catch_5
    move-exception v1

    .line 410
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 406
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 402
    :catch_6
    move-exception v1

    goto :goto_2
.end method

.method public c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 473
    invoke-virtual {p0, p1}, Lcom/zqhy/sdk/model/a;->b(Ljava/lang/String;)[B

    move-result-object v1

    .line 474
    if-eqz v1, :cond_1

    .line 478
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    :try_start_1
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 480
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 487
    if-eqz v3, :cond_0

    .line 488
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 493
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 494
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 500
    :cond_1
    :goto_1
    return-object v0

    .line 489
    :catch_0
    move-exception v1

    .line 490
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 495
    :catch_1
    move-exception v1

    .line 496
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 482
    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 483
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 487
    if-eqz v3, :cond_2

    .line 488
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 493
    :cond_2
    :goto_3
    if-eqz v2, :cond_1

    .line 494
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 495
    :catch_3
    move-exception v1

    .line 496
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 489
    :catch_4
    move-exception v1

    .line 490
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 486
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    .line 487
    :goto_4
    if-eqz v3, :cond_3

    .line 488
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 493
    :cond_3
    :goto_5
    if-eqz v2, :cond_4

    .line 494
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 498
    :cond_4
    :goto_6
    throw v0

    .line 489
    :catch_5
    move-exception v1

    .line 490
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 495
    :catch_6
    move-exception v1

    .line 496
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 486
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 482
    :catch_7
    move-exception v1

    move-object v2, v0

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_2
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/zqhy/sdk/model/a;->b:Lcom/zqhy/sdk/model/a$a;

    invoke-static {v0, p1}, Lcom/zqhy/sdk/model/a$a;->c(Lcom/zqhy/sdk/model/a$a;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
