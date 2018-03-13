.class public abstract LDecoder/CharacterDecoder;
.super Ljava/lang/Object;
.source "CharacterDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract bytesPerAtom()I
.end method

.method protected abstract bytesPerLine()I
.end method

.method protected decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, LDecoder/CEStreamExhausted;

    invoke-direct {v0}, LDecoder/CEStreamExhausted;-><init>()V

    throw v0
.end method

.method public decodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 165
    .line 167
    new-instance v3, Ljava/io/PushbackInputStream;

    invoke-direct {v3, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 168
    invoke-virtual {p0, v3, p2}, LDecoder/CharacterDecoder;->decodeBufferPrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V

    move v0, v2

    .line 175
    :goto_0
    :try_start_0
    invoke-virtual {p0, v3, p2}, LDecoder/CharacterDecoder;->decodeLinePrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)I

    move-result v4

    move v1, v2

    .line 176
    :goto_1
    invoke-virtual {p0}, LDecoder/CharacterDecoder;->bytesPerAtom()I

    move-result v5

    add-int/2addr v5, v1

    if-lt v5, v4, :cond_0

    .line 181
    invoke-virtual {p0}, LDecoder/CharacterDecoder;->bytesPerAtom()I

    move-result v5

    add-int/2addr v5, v1

    if-ne v5, v4, :cond_1

    .line 183
    invoke-virtual {p0}, LDecoder/CharacterDecoder;->bytesPerAtom()I

    move-result v1

    invoke-virtual {p0, v3, p2, v1}, LDecoder/CharacterDecoder;->decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    .line 184
    invoke-virtual {p0}, LDecoder/CharacterDecoder;->bytesPerAtom()I

    move-result v1

    add-int/2addr v0, v1

    .line 190
    :goto_2
    invoke-virtual {p0, v3, p2}, LDecoder/CharacterDecoder;->decodeLineSuffix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch LDecoder/CEStreamExhausted; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {p0, v3, p2}, LDecoder/CharacterDecoder;->decodeBufferSuffix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V

    .line 197
    return-void

    .line 178
    :cond_0
    :try_start_1
    invoke-virtual {p0}, LDecoder/CharacterDecoder;->bytesPerAtom()I

    move-result v5

    invoke-virtual {p0, v3, p2, v5}, LDecoder/CharacterDecoder;->decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    .line 179
    invoke-virtual {p0}, LDecoder/CharacterDecoder;->bytesPerAtom()I

    move-result v5

    add-int/2addr v0, v5

    .line 176
    invoke-virtual {p0}, LDecoder/CharacterDecoder;->bytesPerAtom()I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_1

    .line 187
    :cond_1
    sub-int v5, v4, v1

    invoke-virtual {p0, v3, p2, v5}, LDecoder/CharacterDecoder;->decodeAtom(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    :try_end_1
    .catch LDecoder/CEStreamExhausted; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    sub-int v1, v4, v1

    add-int/2addr v0, v1

    goto :goto_2
.end method

.method public decodeBuffer(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 223
    invoke-virtual {p0, p1, v0}, LDecoder/CharacterDecoder;->decodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 224
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public decodeBuffer(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 210
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v2, v1, v0, v2}, Ljava/lang/String;->getBytes(II[BI)V

    .line 211
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 212
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 213
    invoke-virtual {p0, v1, v0}, LDecoder/CharacterDecoder;->decodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 214
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method protected decodeBufferPrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    return-void
.end method

.method protected decodeBufferSuffix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    return-void
.end method

.method public decodeBufferToByteBuffer(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p0, p1}, LDecoder/CharacterDecoder;->decodeBuffer(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public decodeBufferToByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p0, p1}, LDecoder/CharacterDecoder;->decodeBuffer(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected decodeLinePrefix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, LDecoder/CharacterDecoder;->bytesPerLine()I

    move-result v0

    return v0
.end method

.method protected decodeLineSuffix(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    return-void
.end method

.method protected readFully(Ljava/io/InputStream;[BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 144
    const/4 v1, 0x0

    :goto_0
    if-lt v1, p4, :cond_1

    move v0, p4

    .line 151
    :cond_0
    :goto_1
    return v0

    .line 146
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 147
    if-ne v2, v0, :cond_2

    .line 148
    if-eqz v1, :cond_0

    move v0, v1

    goto :goto_1

    .line 149
    :cond_2
    add-int v3, v1, p3

    int-to-byte v2, v2

    aput-byte v2, p2, v3

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
